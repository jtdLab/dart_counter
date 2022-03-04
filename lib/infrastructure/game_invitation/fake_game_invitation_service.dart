import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_service.dart';
import 'package:dartz/dartz.dart';
import 'package:faker/faker.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@Environment(Environment.dev)
@LazySingleton(as: IGameInvitationService)
class FakeGameInvitationService implements IGameInvitationService {
  static bool hasNetworkConnection = true;

  final IAuthService _authService;

  final BehaviorSubject<KtList<GameInvitation>>
      _receivedGameInvitationsController;
  final BehaviorSubject<KtList<GameInvitation>> _sentGameInvitationsController;

  FakeGameInvitationService(
    this._authService,
  )   : _receivedGameInvitationsController = BehaviorSubject.seeded(
          faker.randomGenerator
              .amount((i) => GameInvitation.dummy(), 5)
              .toImmutableList(),
        ),
        _sentGameInvitationsController = BehaviorSubject.seeded(
          faker.randomGenerator
              .amount((i) => GameInvitation.dummy(), 5)
              .toImmutableList(),
        );

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
      final sentInvitations =
          _sentGameInvitationsController.value.toMutableList().asList();

      sentInvitations.removeWhere((element) => element == invitation);

      _sentGameInvitationsController.add(sentInvitations.toImmutableList());
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
  Future<Either<GameInvitationFailure, KtList<GameInvitation>>>
      getReceivedGameInvitations() async {
    _checkAuth();

    if (hasNetworkConnection) {
      return right(_receivedGameInvitationsController.value);
    }

    return left(const GameInvitationFailure.noNetworkAccess());
  }

  @override
  Future<Either<GameInvitationFailure, KtList<GameInvitation>>>
      getSentGameInvitations() async {
    _checkAuth();

    if (hasNetworkConnection) {
      return right(_sentGameInvitationsController.value);
    }

    return left(const GameInvitationFailure.noNetworkAccess());
  }

  @override
  Future<Either<GameInvitationFailure, Unit>>
      markReceivedInvitationsAsRead() async {
    _checkAuth();

    final receivedInvitations = _receivedGameInvitationsController.value;

    _receivedGameInvitationsController.add(
      receivedInvitations
          .map((invitation) => invitation.copyWith(read: true))
          .toList(),
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
          _sentGameInvitationsController.value.toMutableList();

      _sentGameInvitationsController.add(
        sentInvitations.toMutableList()
          ..add(
            GameInvitation.dummy().copyWith(
              gameId: gameId,
              toId: toId,
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

    if (hasNetworkConnection) {
      return _receivedGameInvitationsController.stream.map(
        (receivedGameInvitations) => right(receivedGameInvitations),
      );
    } else {
      return Stream.value(left(const GameInvitationFailure.noNetworkAccess()));
    }
  }

  @override
  Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>
      watchSentInvitations() {
    _checkAuth();

    if (hasNetworkConnection) {
      return _sentGameInvitationsController.stream.map(
        (sentGameInvitations) => right(sentGameInvitations),
      );
    } else {
      return Stream.value(left(const GameInvitationFailure.noNetworkAccess()));
    }
  }

  /// Removes [invitation] from the receivedGameInvitations and emits event.
  void _removeFromReceivedGameInvitations(GameInvitation invitation) {
    final receivedInvitations =
        _receivedGameInvitationsController.value.toMutableList().asList();

    receivedInvitations.removeWhere(
      (element) => element == invitation,
    );

    _receivedGameInvitationsController.add(
      receivedInvitations.toImmutableList(),
    );
  }

  /// Throws [NotAuthenticatedError] if app-user is not signed in.
  void _checkAuth() {
    if (!_authService.isAuthenticated()) {
      throw NotAuthenticatedError();
    }
  }
}
