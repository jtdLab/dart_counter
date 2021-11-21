import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_service.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';


@Environment(Environment.dev)
@LazySingleton(as: IGameInvitationService)
class MockedGameInvitationService implements IGameInvitationService {
  static bool hasNetworkConnection = false;

  final IAuthService _authService;

  BehaviorSubject<Either<GameInvitationFailure, KtList<GameInvitation>>>?
      _receivedGameInvitationsController;

  BehaviorSubject<Either<GameInvitationFailure, KtList<GameInvitation>>>?
      _sentGameInvitationsController;

  MockedGameInvitationService(
    this._authService,
  )   : _receivedGameInvitationsController =
            _createReceivedGameInvitationsController(),
        _sentGameInvitationsController =
            _createSentGameInvitationsController() {
    _authService.watchIsAuthenticated().listen((isAuthenticated) async {
      if (isAuthenticated) {
        if (!_authService.isAuthenticated()) {
          _receivedGameInvitationsController =
              _createReceivedGameInvitationsController();
          _sentGameInvitationsController =
              _createSentGameInvitationsController();
        }
      } else {
        await _receivedGameInvitationsController?.close();
        await _sentGameInvitationsController?.close();
        _receivedGameInvitationsController = null;
        _sentGameInvitationsController = null;
      }
    });
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

    return left(const GameInvitationFailure.noNetworkAccess());
  }

  @override
  Future<Either<GameInvitationFailure, Unit>> cancel({
    required GameInvitation invitation,
  }) async {
    _checkAuth();
    if (hasNetworkConnection) {
      final sentInvitations = _sentGameInvitationsController!.value
          .toOption()
          .toNullable()!
          .toMutableList()
          .asList();

      sentInvitations.removeWhere(
        (element) => element == invitation,
      );

      _sentGameInvitationsController!.add(
        right(sentInvitations.toImmutableList()),
      );
      return right(unit);
    }

    return left(const GameInvitationFailure.noNetworkAccess());
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

    return left(const GameInvitationFailure.noNetworkAccess());
  }

  @override
  Either<GameInvitationFailure, KtList<GameInvitation>>?
      getReceivedGameInvitations() {
    _checkAuth();
    if (hasNetworkConnection) {
      try {
        return _receivedGameInvitationsController!.value;
      } catch (e) {
        return null;
      }
    }

    return left(const GameInvitationFailure.noNetworkAccess());
  }

  @override
  Either<GameInvitationFailure, KtList<GameInvitation>>?
      getSentGameInvitations() {
    _checkAuth();
    if (hasNetworkConnection) {
      try {
        return _sentGameInvitationsController!.value;
      } catch (e) {
        return null;
      }
    }

    return left(const GameInvitationFailure.noNetworkAccess());
  }

  @override
  Future<Either<GameInvitationFailure, Unit>>
      markReceivedInvitationsAsRead() async {
    final receivedInvitations =
        _receivedGameInvitationsController!.value.toOption().toNullable()!;

    _receivedGameInvitationsController!.add(
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
  Future<Either<GameInvitationFailure, Unit>> sendGameInvitation({
    required UniqueId gameId,
    required UniqueId toId,
  }) async {
    _checkAuth();
    if (hasNetworkConnection) {
      final sentInvitations =
          _sentGameInvitationsController!.value.toOption().toNullable()!;

      _sentGameInvitationsController!.add(
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

    return left(const GameInvitationFailure.noNetworkAccess());
  }

  @override
  Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>
      watchReceivedGameInvitations() {
    _checkAuth();
    return _receivedGameInvitationsController!.stream;
  }

  @override
  Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>
      watchSentInvitations() {
    _checkAuth();
    return _sentGameInvitationsController!.stream;
  }

  /// Creates a new received gameInvitation controller seeded with either a list of [GameInvitation] or [GameInvitationFailure] depending
  /// on available network connection.
  static BehaviorSubject<Either<GameInvitationFailure, KtList<GameInvitation>>>
      _createReceivedGameInvitationsController() {
    return BehaviorSubject.seeded(
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
          : left(const GameInvitationFailure.noNetworkAccess()),
    );
  }

  /// Creates a new sent gameInvitation controller seeded with either a list of [GameInvitation] or [GameInvitationFailure] depending
  /// on available network connection.
  static BehaviorSubject<Either<GameInvitationFailure, KtList<GameInvitation>>>
      _createSentGameInvitationsController() {
    return BehaviorSubject.seeded(
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
          : left(const GameInvitationFailure.noNetworkAccess()),
    );
  }

  /// Removes [invitation] from the receivedGameInvitations and emits event.
  void _removeFromReceivedGameInvitations(GameInvitation invitation) {
    final receivedInvitations = _receivedGameInvitationsController!.value
        .toOption()
        .toNullable()!
        .toMutableList()
        .asList();

    receivedInvitations.removeWhere(
      (element) => element == invitation,
    );

    _receivedGameInvitationsController!.add(
      right(receivedInvitations.toImmutableList()),
    );
  }

  /// Throws [NotAuthenticatedError] if app-user is not signed in.
  void _checkAuth() {
    if (!_authService.isAuthenticated()) {
      throw NotAuthenticatedError();
    }
  }
}
