import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_client/dart_client.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_service.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';
import 'package:dart_counter/core/logger.dart';
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

  GameInvitationService(
    this._authService,
    this._firestore,
    this._socialClient,
    this._dartClient,
  );

  @override
  Future<Either<GameInvitationFailure, Unit>> accept({
    required GameInvitation invitation,
  }) async {
    _checkAuth();
    // TODO this should be in on call and handled server side
    // try to join the game via dart client
    bool success = await _dartClient.joinGame(
      gameId: invitation.gameId.getOrCrash(),
    );

    // try to accepted the game invitation via social client
    success &= await _socialClient.acceptGameInvitation(
      fromId: invitation.fromId.getOrCrash(),
    );

    // when join game and accept game invitation succeeded
    if (success) {
      // return unit
      return right(unit);
    } else {
      // else return unexpected failure
      return left(const GameInvitationFailure.unexpected()); // TODO name better
    }
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> cancel({
    required GameInvitation invitation,
  }) async {
    _checkAuth();

    // try to cancel the game invitation
    final success = await _socialClient.cancelGameInvitation(
      toId: invitation.toId.getOrCrash(),
    );

    // when cancel game inviation succeeded
    if (success) {
      // return unit
      return right(unit);
    } else {
      // else return unexpected failure
      return left(const GameInvitationFailure.unexpected()); // TODO name better
    }
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> decline({
    required GameInvitation invitation,
  }) async {
    _checkAuth();

    // try to decline game inviation
    final success = await _socialClient.declineGameInvitation(
      fromId: invitation.fromId.getOrCrash(),
    );

    // when decline game inviation succeeded
    if (success) {
      // retrun unit
      return right(unit);
    } else {
      // else return unexpected failure
      return left(const GameInvitationFailure.unexpected()); // TODO name better
    }
  }

  @override
  Future<Either<GameInvitationFailure, KtList<GameInvitation>>>
      getReceivedGameInvitations() async {
    // the reference to the received game invitations collection
    final collection = _firestore.receivedGameInvitationsCollection();

    // fetch the received game invations sorted by createdAt from firestore
    final query = await collection.orderBy('createdAt', descending: true).get();

    try {
      // for each received game invitation
      final receivedGameInvitations = query.docs.map((doc) {
        // get the json
        final json = (doc.data() ?? {}) as Map<String, dynamic>;

        json.addAll({
          'id': doc.id,
        });

        // and try to parse the json the GameInvitation
        return GameInvitationDto.fromJson(json).toDomain();
      }).toImmutableList();
      return right<GameInvitationFailure, KtList<GameInvitation>>(
        receivedGameInvitations,
      );
      // when error occures while parsing
    } catch (e) {
      // log error
      logger.e(e);
      // return unexpected failure
      return left(const GameInvitationFailure.unexpected());
    }
  }

  @override
  Future<Either<GameInvitationFailure, KtList<GameInvitation>>>
      getSentGameInvitations() async {
    // the reference to the sent game invitations collection
    final collection = _firestore.sentGameInvitationsCollection();

    // fetch the sent game invations sorted by createdAt from firestore
    final query = await collection.orderBy('createdAt', descending: true).get();

    try {
      // for each sent game invitation
      final sentGameInvitations = query.docs.map((doc) {
        // get the json
        final json = (doc.data() ?? {}) as Map<String, dynamic>;

        json.addAll({
          'id': doc.id,
        });

        // and try to parse the json the GameInvitation
        return GameInvitationDto.fromJson(json).toDomain();
      }).toImmutableList();
      return right<GameInvitationFailure, KtList<GameInvitation>>(
        sentGameInvitations,
      );
      // when error occures while parsing
    } catch (e) {
      // log error
      logger.e(e);
      // return unexpected failure
      return left(const GameInvitationFailure.unexpected());
    }
  }

  @override
  Future<Either<GameInvitationFailure, Unit>>
      markReceivedInvitationsAsRead() async {
    // the reference to the received game invitations collection
    final collection = _firestore.receivedGameInvitationsCollection();

    // fetch unread received game invitations from firestore
    final querySnapshot =
        await collection.where('read', isNotEqualTo: true).get();

    // for each unread received game invitation
    for (final doc in querySnapshot.docs) {
      // set the read property to true
      await collection.doc(doc.id).update({'read': true});
    }

    // return unit
    return right(unit);
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> sendGameInvitation({
    required UniqueId gameId, // TODO for what is this
    required UniqueId toId,
  }) async {
    _checkAuth();

    // try to send the game inviation via social client
    final success = await _socialClient.sendGameInvitation(
      toId: toId.getOrCrash(),
    );

    // when send game inviation succeeds
    if (success) {
      // return unit
      return right(unit);
    } else {
      // else return unexpected failure
      return left(const GameInvitationFailure.unexpected()); // TODO name better
    }
  }

  @override
  Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>
      watchReceivedGameInvitations() {
    // the reference to the received game inviations collection
    final collection = _firestore.receivedGameInvitationsCollection();

    // for each incoming snapshot of received game inviations ordered by createdAt
    return collection
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snapshot) {
      // get the json
      final receivedGameInvitations = snapshot.docs.map((doc) {
        final json = (doc.data() ?? {}) as Map<String, dynamic>;

        json.addAll({
          'id': doc.id,
        });

        // and try to parse the json the GameInvitation
        return GameInvitationDto.fromJson(json).toDomain();
      }).toImmutableList();

      // return the received game invitations
      return right<GameInvitationFailure, KtList<GameInvitation>>(
        receivedGameInvitations,
      );
      // when error occurs while parsing
    }).onErrorReturnWith((e, _) {
      // return unexpected failure
      return left(const GameInvitationFailure.unexpected()); // TODO name better
    });
  }

  @override
  Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>
      watchSentInvitations() {
    // the reference to the sent game inviations collection
    final collection = _firestore.sentGameInvitationsCollection();

    // for each incoming snapshot of sent game inviations ordered by createdAt
    return collection
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snapshot) {
      // get the json
      final sentGameInvitations = snapshot.docs.map((doc) {
        final json = (doc.data() ?? {}) as Map<String, dynamic>;

        json.addAll({
          'id': doc.id,
        });

        // and try to parse the json the GameInvitation
        return GameInvitationDto.fromJson(json).toDomain();
      }).toImmutableList();
      // return the sent game invitations
      return right<GameInvitationFailure, KtList<GameInvitation>>(
        sentGameInvitations,
      );
      // when error occurs while parsing
    }).onErrorReturnWith((e, _) {
      // return unexpected failure
      return left(const GameInvitationFailure.unexpected()); // TODO name better
    });
  }

  /// Throws [NotAuthenticatedError] if app-user is not signed in.
  void _checkAuth() {
    // when not authenticated
    if (!_authService.isAuthenticated()) {
      // throw not authenticated error
      throw NotAuthenticatedError();
    }
  }
}
