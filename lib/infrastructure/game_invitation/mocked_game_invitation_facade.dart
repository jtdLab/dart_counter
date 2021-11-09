import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_service.dart';
import 'package:dart_counter/main_dev.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@Environment(Environment.dev)
@LazySingleton(as: IGameInvitationService)
class MockedGameInvitationFacade implements IGameInvitationService {
  final IAuthService _authFacade;

  BehaviorSubject<Either<GameInvitationFailure, KtList<GameInvitation>>>
      _receivedGameInvitationsController;

  BehaviorSubject<Either<GameInvitationFailure, KtList<GameInvitation>>>
      _sentGameInvitationsController;

  MockedGameInvitationFacade(
    this._authFacade,
  )   : _receivedGameInvitationsController = BehaviorSubject(),
        _sentGameInvitationsController = BehaviorSubject() {
    _authFacade.watchIsAuthenticated().listen((isAuthenticated) async {
      if (isAuthenticated) {
        _receivedGameInvitationsController = BehaviorSubject.seeded(
          hasNetworkConnection
              ? right([
                  GameInvitation.dummy(),
                  GameInvitation.dummy(),
                  GameInvitation.dummy(),
                  GameInvitation.dummy(),
                  GameInvitation.dummy(),
                ].toImmutableList())
              : left(
                  const GameInvitationFailure.unexpected(), // TODO name better
                ),
        );
        _sentGameInvitationsController = BehaviorSubject.seeded(
          hasNetworkConnection
              ? right(
                  [
                    GameInvitation.dummy(),
                    GameInvitation.dummy(),
                    GameInvitation.dummy(),
                    GameInvitation.dummy(),
                    GameInvitation.dummy(),
                  ].toImmutableList(),
                )
              : left(
                  const GameInvitationFailure.unexpected(), // TODO name better
                ),
        );
      } else {
        await _receivedGameInvitationsController.close(); // TODO needed
        await _sentGameInvitationsController.close(); // TODO needed
      }
    });
  }

  @override
  Either<GameInvitationFailure, KtList<GameInvitation>>?
      getReceivedGameInvitations() {
    _checkAuth();
    if (hasNetworkConnection) {
      try {
        return _receivedGameInvitationsController.value;
      } catch (e) {
        return null;
      }
    }

    return left(const GameInvitationFailure.unexpected());
  }

  @override
  Either<GameInvitationFailure, KtList<GameInvitation>>?
      getSentGameInvitations() {
    _checkAuth();
    if (hasNetworkConnection) {
      try {
        return _sentGameInvitationsController.value;
      } catch (e) {
        return null;
      }
    }

    return left(const GameInvitationFailure.unexpected());
  }

  @override
  Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>
      watchReceivedInvitations() {
    _checkAuth();
    return _receivedGameInvitationsController.stream;
  }

  @override
  Future<Either<GameInvitationFailure, Unit>>
      markReceivedInvitationsAsRead() async {
    _checkAuth();
    final receivedInvitations =
        _receivedGameInvitationsController.value.toOption().toNullable()!;

    _receivedGameInvitationsController.add(
      right(
        receivedInvitations
            .map(
              (invitation) => invitation.copyWith(read: true),
            )
            .toList(),
      ),
    );

    return right(unit);
  }

  @override
  Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>
      watchSentInvitations() {
    _checkAuth();
    return _sentGameInvitationsController.stream;
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> sendGameInvitation({
    required UniqueId gameId,
    required UniqueId toId,
  }) async {
    _checkAuth();
    if (hasNetworkConnection) {
      final sentInvitations =
          _sentGameInvitationsController.value.toOption().toNullable()!;

      _sentGameInvitationsController.add(
        right(
          sentInvitations.toMutableList()
            ..add(
              GameInvitation.dummy().copyWith(
                gameId: gameId,
                toId: toId,
              ),
            ),
        ),
      );

      return right(unit);
    }

    return left(const GameInvitationFailure.unexpected()); // TODO name better
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> cancel({
    required GameInvitation invitation,
  }) async {
    _checkAuth();
    if (hasNetworkConnection) {
      final sentInvitations = _sentGameInvitationsController.value
          .toOption()
          .toNullable()!
          .toMutableList()
          .asList();

      sentInvitations.removeWhere(
        (element) => element == invitation,
      );

      _sentGameInvitationsController.add(
        right(sentInvitations.toImmutableList()),
      );
      return right(unit);
    }

    return left(const GameInvitationFailure.unexpected()); // TODO name better
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> accept({
    required GameInvitation invitation,
  }) async {
    _checkAuth();
    if (hasNetworkConnection) {
      _removeFromReceivedGameInvitations(invitation);
      return right(unit);
    }

    return left(const GameInvitationFailure.unexpected()); // TODO name better
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> decline({
    required GameInvitation invitation,
  }) async {
    _checkAuth();
    if (hasNetworkConnection) {
      _removeFromReceivedGameInvitations(invitation);
      return right(unit);
    }

    return left(const GameInvitationFailure.unexpected()); // TODO name better
  }

  /// Removes [invitation] from the receivedGameInvitations and emits event.
  void _removeFromReceivedGameInvitations(GameInvitation invitation) {
    final receivedInvitations = _receivedGameInvitationsController.value
        .toOption()
        .toNullable()!
        .toMutableList()
        .asList();

    receivedInvitations.removeWhere(
      (element) => element == invitation,
    );

    _receivedGameInvitationsController.add(
      right(receivedInvitations.toImmutableList()),
    );
  }

  /// Throws [NotAuthenticatedError] if app-user is not signed in.
  void _checkAuth() {
    if (!_authFacade.isAuthenticated()) {
      throw NotAuthenticatedError();
    }
  }
}
