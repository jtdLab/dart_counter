import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_facade.dart';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@Environment(Environment.dev)
@LazySingleton(as: IGameInvitationFacade)
class MockedGameInvitationFacade implements IGameInvitationFacade {
  final BehaviorSubject<Either<GameInvitationFailure, KtList<GameInvitation>>>
      _receivedInvitationsController = BehaviorSubject();

  final BehaviorSubject<Either<GameInvitationFailure, KtList<GameInvitation>>>
      _sentInvitationsController = BehaviorSubject();

  final BehaviorSubject<Either<GameInvitationFailure, int>>
      _unreadInvitationsController = BehaviorSubject();

  bool fail = false; // toggle to simulate working / notworking endpoint

  MockedGameInvitationFacade() {
    _receivedInvitationsController.add(
      fail
          ? left(const GameInvitationFailure.unexpected())
          : right(
              KtList.from(
                [
                  GameInvitation.dummy(),
                  GameInvitation.dummy(),
                  GameInvitation.dummy(),
                  GameInvitation.dummy(),
                  GameInvitation.dummy(),
                ],
              ),
            ),
    );

    _sentInvitationsController.add(
      fail
          ? left(const GameInvitationFailure.unexpected())
          : right(
              KtList.from(
                [
                  GameInvitation.dummy(),
                  GameInvitation.dummy(),
                  GameInvitation.dummy(),
                  GameInvitation.dummy(),
                  GameInvitation.dummy(),
                ],
              ),
            ),
    );

    _unreadInvitationsController.add(
      _receivedInvitationsController.valueWrapper!.value.fold(
        (failure) => left(const GameInvitationFailure.unexpected()),
        (invitations) {
          final unreadInvitations =
              invitations.filter((invitation) => !invitation.read).size;
          return right(unreadInvitations);
        },
      ),
    );
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> accept({
    required GameInvitation invitation,
  }) {
    if (fail) {
      return Future.value(left(const GameInvitationFailure.unexpected()));
    } else {
      return Future.value(right(unit));
    }
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> decline({
    required GameInvitation invitation,
  }) {
    if (fail) {
      return Future.value(left(const GameInvitationFailure.unexpected()));
    } else {
      return Future.value(right(unit));
    }
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> send({
    required GameInvitation invitation,
  }) {
    if (fail) {
      return Future.value(left(const GameInvitationFailure.unexpected()));
    } else {
      return Future.value(right(unit));
    }
  }

  @override
  ValueStream<Either<GameInvitationFailure, KtList<GameInvitation>>>
      watchReceivedInvitations() {
    return _receivedInvitationsController.stream;
  }

  @override
  ValueStream<Either<GameInvitationFailure, KtList<GameInvitation>>>
      watchSentInvitations() {
    return _sentInvitationsController.stream;
  }

  @override
  ValueStream<Either<GameInvitationFailure, int>> watchUnreadInvitations() {
    return _unreadInvitationsController.stream;
  }

  @override
  void markGameInvitationsAsRead() {
    final failureOrInvitations =
        _receivedInvitationsController.valueWrapper?.value;
    if (failureOrInvitations != null) {
      failureOrInvitations.fold(
        (failure) {},
        (invitations) {
          final readInvitations =
              invitations.map((invitation) => invitation.copyWith(read: true));
          _receivedInvitationsController.add(right(readInvitations));
          _unreadInvitationsController.add(right(0));
        },
      );
    }
  }
}
