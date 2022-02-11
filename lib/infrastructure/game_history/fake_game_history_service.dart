import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/abstract_game.dart';
import 'package:dart_counter/domain/game_history/game_history_failure.dart';
import 'package:dart_counter/domain/game_history/i_game_history_service.dart';
import 'package:dartz/dartz.dart';
import 'package:faker/faker.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@Environment(Environment.dev)
@LazySingleton(as: IGameHistoryService)
class FakeGameHistoryService implements IGameHistoryService {
  static bool hasNetworkConnection = true;

  final IAuthService _authService;

  FakeGameHistoryService(
    this._authService,
  );

  @override
  Future<Either<GameHistoryFailure, List10<OfflineGame>>>
      getGameHistoryOffline() async {
    _checkAuth();

    if (hasNetworkConnection) {
      final games = List.generate(
        faker.randomGenerator.integer(11),
        (index) => OfflineGame.dummy(),
      );

      games.sort((game, game1) => game.createdAt.compareTo(game1.createdAt));

      return right(List10(games.toImmutableList()));
    }

    return left(const GameHistoryFailure.noNetworkAccess());
  }

  @override
  Future<Either<GameHistoryFailure, List10<OnlineGame>>> getGameHistoryOnline({
    required String uid,
  }) async {
    _checkAuth();

    if (hasNetworkConnection) {
      final games = List.generate(
        faker.randomGenerator.integer(11),
        (index) => OnlineGame.dummy(),
      );

      games.sort((game, game1) => game.createdAt.compareTo(game1.createdAt));

      return right(List10(games.toImmutableList()));
    }

    return left(const GameHistoryFailure.noNetworkAccess());
  }

  /// Throws [NotAuthenticatedError] if app-user is not signed in.
  void _checkAuth() {
    if (!_authService.isAuthenticated()) {
      throw NotAuthenticatedError();
    }
  }
}
