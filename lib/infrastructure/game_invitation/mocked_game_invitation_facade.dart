import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_facade.dart';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@Environment(Environment.dev)
@LazySingleton(as: IGameInvitationFacade)
class MockedGameInvitationFacade implements IGameInvitationFacade {
  bool fail = false; // toggle to simulate working / notworking endpoint

  @override
  Future<Either<GameInvitationFailure, Unit>> accept(
      GameInvitation invitation) {
    if (fail) {
      return Future.value(left(const GameInvitationFailure.unexpected()));
    } else {
      return Future.value(right(unit));
    }
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> decline(
      GameInvitation invitation) {
    if (fail) {
      return Future.value(left(const GameInvitationFailure.unexpected()));
    } else {
      return Future.value(right(unit));
    }
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> send(GameInvitation invitation) {
    if (fail) {
      return Future.value(left(const GameInvitationFailure.unexpected()));
    } else {
      return Future.value(right(unit));
    }
  }

  @override
  Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>
      watchReceivedInvitations() {
    return Stream.value(
      fail
          ? left(const GameInvitationFailure.unexpected())
          : right(
              KtList.from(
                [
                  GameInvitation.dummy(),
                  GameInvitation.dummy(),
                  GameInvitation.dummy(),
                ],
              ),
            ),
    );
  }
}
