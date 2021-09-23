import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_facade.dart';
import 'package:dart_counter/main_dev.dart';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@Environment(Environment.dev)
@LazySingleton(as: IGameInvitationFacade)
class MockedGameInvitationFacade implements IGameInvitationFacade {
  final IAuthFacade _authFacade;

  late final BehaviorSubject<
          Either<GameInvitationFailure, KtList<GameInvitation>>>
      _receivedGameInvitationsController;

  late final BehaviorSubject<
          Either<GameInvitationFailure, KtList<GameInvitation>>>
      _sentGameInvitationsController;

  late List<GameInvitation> _receivedGameInvitations;
  late List<GameInvitation> _sentGameInvitations;

  MockedGameInvitationFacade(
    this._authFacade,
  ) {
    _receivedGameInvitations = [
      GameInvitation.dummy(),
      GameInvitation.dummy(),
      GameInvitation.dummy(),
      GameInvitation.dummy(),
      GameInvitation.dummy(),
    ];

    _sentGameInvitations = [
      GameInvitation.dummy(),
      GameInvitation.dummy(),
      GameInvitation.dummy(),
      GameInvitation.dummy(),
      GameInvitation.dummy(),
    ];

    _receivedGameInvitationsController = BehaviorSubject()
      ..add(
        hasNetworkConnection
            ? right(
                KtList.from(_receivedGameInvitations),
              )
            : left(const GameInvitationFailure.unexpected()),
      );
    _sentGameInvitationsController = BehaviorSubject()
      ..add(
        hasNetworkConnection
            ? right(
                KtList.from(_sentGameInvitations),
              )
            : left(const GameInvitationFailure.unexpected()),
      );
  }

  @override
  KtList<GameInvitation> getReceivedGameInvitations() =>
      _receivedGameInvitations.toImmutableList();

  @override
  KtList<GameInvitation> getSentGameInvitations() =>
      _sentGameInvitations.toImmutableList();

  @override
  Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>
      watchReceivedInvitations() {
    if (_authFacade.isAuthenticated()) {
      return _receivedGameInvitationsController.stream;
    }

    throw NotAuthenticatedError();
  }

  @override
  Future<Either<GameInvitationFailure, Unit>>
      markReceivedInvitationsAsRead() async {
    if (_authFacade.isAuthenticated()) {
      _receivedGameInvitations = _receivedGameInvitations
          .map(
            (invitation) => invitation.copyWith(read: true),
          )
          .toList();
      return right(unit);
    }

    throw NotAuthenticatedError();
  }

  @override
  Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>
      watchSentInvitations() {
    if (_authFacade.isAuthenticated()) {
      return _sentGameInvitationsController.stream;
    }

    throw NotAuthenticatedError();
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> sendGameInvitation({
    required UniqueId gameId,
    required UniqueId toId,
  }) async {
    if (_authFacade.isAuthenticated()) {
      if (hasNetworkConnection) {
        _sentGameInvitations.add(
          GameInvitation.dummy().copyWith(
            gameId: gameId,
            toId: toId,
          ),
        );
        _sentGameInvitationsController.add(
          right(_sentGameInvitations.toImmutableList()),
        );
        return right(unit);
      }

      return left(const GameInvitationFailure.unexpected()); // TODO name better
    }

    throw NotAuthenticatedError();
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> cancel({
    required GameInvitation invitation,
  }) async {
    if (_authFacade.isAuthenticated()) {
      if (hasNetworkConnection) {
        _sentGameInvitations.removeWhere((element) => element == invitation);
        _sentGameInvitationsController.add(
          right(_sentGameInvitations.toImmutableList()),
        );
        return right(unit);
      }

      return left(const GameInvitationFailure.unexpected()); // TODO name better
    }

    throw NotAuthenticatedError();
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> accept({
    required GameInvitation invitation,
  }) async {
    if (_authFacade.isAuthenticated()) {
      if (hasNetworkConnection) {
        _removeFromReceivedGameInvitations(invitation);
        return right(unit);
      }

      return left(const GameInvitationFailure.unexpected()); // TODO name better
    }

    throw NotAuthenticatedError();
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> decline({
    required GameInvitation invitation,
  }) async {
    if (_authFacade.isAuthenticated()) {
      if (hasNetworkConnection) {
        _removeFromReceivedGameInvitations(invitation);
        return right(unit);
      }

      return left(const GameInvitationFailure.unexpected()); // TODO name better
    }

    throw NotAuthenticatedError();
  }

  /// Removes [invitation] from the receivedGameInvitations and emits event.
  void _removeFromReceivedGameInvitations(GameInvitation invitation) {
    _receivedGameInvitations.removeWhere(
      (element) => element == invitation,
    );
    _receivedGameInvitationsController.add(
      right(_receivedGameInvitations.toImmutableList()),
    );
  }
}
