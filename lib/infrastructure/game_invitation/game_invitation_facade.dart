import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_facade.dart';
import 'package:dart_counter/infrastructure/game_invitation/game_invitation_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IGameInvitationFacade)
class GameInvitationFacade implements IGameInvitationFacade {
  final FirebaseFirestore _firestore;

  GameInvitationFacade(this._firestore);

  @override
  Future<Either<GameInvitationFailure, Unit>> accept(
      GameInvitation invitation) {
    // TODO: implement accept
    throw UnimplementedError();
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> decline(
      GameInvitation invitation) {
    // TODO: implement decline
    throw UnimplementedError();
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> send(GameInvitation invitation) {
    // TODO: implement send
    throw UnimplementedError();
  }

  @override
  Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>
      watchReceivedInvitations() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.gameInvitationsCollection
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
}