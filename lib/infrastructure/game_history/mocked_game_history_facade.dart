import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/domain/game_history/game_history_failure.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game_history/i_game_history_service.dart';
import 'package:dart_counter/main_dev.dart';
import 'package:dartz/dartz.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:faker/faker.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@Environment(Environment.dev)
@LazySingleton(as: IGameHistoryService)
class MockedGameHistoryFacade implements IGameHistoryService {
  final IAuthService _authFacade;

  MockedGameHistoryFacade(
    this._authFacade,
  );

  @override
  Future<Either<GameHistoryFailure, List10<OfflineGame>>>
      fetchGameHistoryOffline() async {
    if (_authFacade.isAuthenticated()) {
      if (hasNetworkConnection) {
        final games = List.generate(
          faker.randomGenerator.integer(11),
          (index) => OfflineGame.dummy(),
        );

        return right(
          List10(
            games
                .toImmutableList()
                .sortedByDescending((game) => game.createdAt),
          ),
        );
      }

      return left(const GameHistoryFailure.unexpected()); // TODO name better
    }

    throw NotAuthenticatedError();
  }

  @override
  Future<Either<GameHistoryFailure, List10<OnlineGame>>>
      fetchGameHistoryOnline({
    required String uid,
  }) async {
    if (_authFacade.isAuthenticated()) {
      if (hasNetworkConnection) {
        final games = List.generate(
          faker.randomGenerator.integer(11),
          (index) => OnlineGame.dummy(),
        );

        return right(
          List10(
            games
                .toImmutableList()
                .sortedByDescending((game) => game.createdAt),
          ),
        );
      }

      return left(const GameHistoryFailure.unexpected()); // TODO name better
    }

    throw NotAuthenticatedError();
  }
}
