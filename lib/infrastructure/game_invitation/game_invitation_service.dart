import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_client/dart_client.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_service.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';
import 'package:social_client/social_client.dart';

import 'game_invitation_dto.dart';

@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IGameInvitationService)
class GameInvitationService implements IGameInvitationService {
  final IAuthService _authService;
  final FirebaseFirestore _firestore;
  final DartClient _dartClient;
  final SocialClient _socialClient;

  BehaviorSubject<Either<GameInvitationFailure, KtList<GameInvitation>>>
      _receivedInvitationsController;
  BehaviorSubject<Either<GameInvitationFailure, KtList<GameInvitation>>>
      _sentInvitationsController;

  GameInvitationService(
    this._authService,
    this._firestore,
    this._socialClient,
    this._dartClient,
  )   : _receivedInvitationsController = BehaviorSubject(),
        _sentInvitationsController = BehaviorSubject() {
    _authService.watchIsAuthenticated().listen((isAuthenticated) async {
      if (isAuthenticated) {
        _receivedInvitationsController = BehaviorSubject();
        _receivedInvitationsController.addStream(watchReceivedInvitations());
        _sentInvitationsController = BehaviorSubject();
        _sentInvitationsController.addStream(watchSentInvitations());
      } else {
        await _receivedInvitationsController.close(); // TODO needed
        await _sentInvitationsController.close(); // TODO needed
      }
    });
  }

  @override
  Either<GameInvitationFailure, KtList<GameInvitation>>?
      getReceivedGameInvitations() {
    _checkAuth();

    return _receivedInvitationsController.value;
  }

  @override
  Either<GameInvitationFailure, KtList<GameInvitation>>?
      getSentGameInvitations() {
    _checkAuth();

    return _sentInvitationsController.value;
  }

  @override
  Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>
      watchReceivedInvitations() async* {
    _checkAuth();
    final collection = _firestore.receivedGameInvitationsCollection();

    yield* collection
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snapshot) {
      final receivedGameInvitations = snapshot.docs.map((doc) {
        final json = (doc.data() ?? {}) as Map<String, dynamic>;

        json.addAll({
          'id': doc.id,
        });

        return GameInvitationDto.fromJson(json).toDomain();
      }).toImmutableList();
      return right<GameInvitationFailure, KtList<GameInvitation>>(
        receivedGameInvitations,
      );
    }).onErrorReturnWith((e, s) {
      return left(
          const GameInvitationFailure.unableToRead()); // TODO name better
    });
  }

  @override
  Future<Either<GameInvitationFailure, Unit>>
      markReceivedInvitationsAsRead() async {
    _checkAuth();
    final CollectionReference<Object?> collection;
    try {
      collection = _firestore.receivedGameInvitationsCollection();
    } catch (e) {
      rethrow;
    }

    try {
      final querySnapshot = await collection
          .where('read', isNotEqualTo: true)
          .get(const GetOptions(source: Source.cache));

      for (final doc in querySnapshot.docs) {
        await collection.doc(doc.id).update({'read': true});
      }

      return right(unit);
    } catch (e) {
      print(e);
      return left(const GameInvitationFailure.unexpected()); // TODO name better
    }
  }

  @override
  Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>
      watchSentInvitations() async* {
    _checkAuth();
    final collection = _firestore.sentGameInvitationsCollection();

    yield* collection
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snapshot) {
      final sentGameInvitations = snapshot.docs.map((doc) {
        final json = (doc.data() ?? {}) as Map<String, dynamic>;

        json.addAll({
          'id': doc.id,
        });

        return GameInvitationDto.fromJson(json).toDomain();
      }).toImmutableList();
      return right<GameInvitationFailure, KtList<GameInvitation>>(
        sentGameInvitations,
      );
    }).onErrorReturnWith((e, s) {
      return left(const GameInvitationFailure.unexpected()); // TODO name better
    });
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> sendGameInvitation({
    required UniqueId gameId,
    required UniqueId toId,
  }) async {
    _checkAuth();
    final success = await _socialClient.sendGameInvitation(
      toId: toId.getOrCrash(),
    );

    if (success) {
      return right(unit);
    } else {
      return left(const GameInvitationFailure.unexpected()); // TODO name better
    }
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> cancel({
    required GameInvitation invitation,
  }) async {
    _checkAuth();
    final success = await _socialClient.cancelGameInvitation(
      toId: invitation.toId.getOrCrash(),
    );

    if (success) {
      return right(unit);
    } else {
      return left(const GameInvitationFailure.unexpected()); // TODO name better
    }
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> accept({
    required GameInvitation invitation,
  }) async {
    _checkAuth();
    // TODO this should be in on call and handled server side
    bool success = await _dartClient.joinGame(
      gameId: invitation.gameId.getOrCrash(),
    );

    success &= await _socialClient.acceptGameInvitation(
      fromId: invitation.fromId.getOrCrash(),
    );

    if (success) {
      return right(unit);
    } else {
      return left(const GameInvitationFailure.unexpected()); // TODO name better
    }
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> decline({
    required GameInvitation invitation,
  }) async {
    _checkAuth();
    final success = await _socialClient.declineGameInvitation(
      fromId: invitation.fromId.getOrCrash(),
    );

    if (success) {
      return right(unit);
    } else {
      return left(const GameInvitationFailure.unexpected()); // TODO name better
    }
  }

  /// Throws [NotAuthenticatedError] if app-user is not signed in.
  void _checkAuth() {
    if (!_authService.isAuthenticated()) {
      throw NotAuthenticatedError();
    }
  }
}
