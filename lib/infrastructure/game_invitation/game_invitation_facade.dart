import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_client/dart_client.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_facade.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';
import 'package:social_client/social_client.dart';

import 'game_invitation_dto.dart';

@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IGameInvitationFacade)
class GameInvitationFacade implements IGameInvitationFacade {
  final FirebaseFirestore _firestore;
  final DartClient _dartClient;
  final SocialClient _socialClient;

  GameInvitationFacade(
    this._firestore,
    this._socialClient,
    this._dartClient,
  );

  @override
  Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>
      watchReceivedInvitations() async* {
    final collection = _firestore.receivedGameInvitationsCollection();
    yield* collection
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<GameInvitationFailure, KtList<GameInvitation>>(
            snapshot.docs
                .map((doc) => GameInvitationDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      return left(const GameInvitationFailure.unexpected());
    });
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> markReceivedInvitationsAsRead() async {
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
    final collection = _firestore.sentGameInvitationsCollection();
    yield* collection
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<GameInvitationFailure, KtList<GameInvitation>>(
            snapshot.docs
                .map((doc) => GameInvitationDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      return left(const GameInvitationFailure.unexpected());
    });
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> sendGameInvitation({
    required UniqueId gameId,
    required UniqueId toId,
  }) async {
    final success = await _socialClient.sendGameInvitation(
      toId: toId.getOrCrash(),
    );

    if (success) {
      return right(unit);
    } else {
      return left(const GameInvitationFailure.unexpected());
    }
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> cancel({
    required GameInvitation invitation,
  }) async {
    final success = await _socialClient.cancelGameInvitation(
      toId: invitation.toId.getOrCrash(),
    );

    if (success) {
      return right(unit);
    } else {
      return left(const GameInvitationFailure.unexpected());
    }
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> accept({
    required GameInvitation invitation,
  }) async {
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
      return left(const GameInvitationFailure.unexpected());
    }
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> decline({
    required GameInvitation invitation,
  }) async {
    final success = await _socialClient.declineGameInvitation(
      fromId: invitation.fromId.getOrCrash(),
    );

    if (success) {
      return right(unit);
    } else {
      return left(const GameInvitationFailure.unexpected());
    }
  }
}
