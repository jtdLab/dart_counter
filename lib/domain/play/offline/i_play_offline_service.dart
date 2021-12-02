import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/abstract_i_play_service.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dartz/dartz.dart';

/// Domain service for all actions related playing an offline game.
abstract class IPlayOfflineService extends AbstractIPlayService {
  @override
  Stream<OfflineGameSnapshot> watchGame();

  @override
  OfflineGameSnapshot getGame();

  /// Creates a new game with [owner].
  ///
  /// Returns the first snapshot of the created game.
  OfflineGameSnapshot createGame({
    required User owner,
  });

  /// Adds a dartbot to the game.
  Future<Either<PlayFailure, Unit>> addDartBot();

  /// Removes the dartbot from the game.
  Future<Either<PlayFailure, Unit>> removeDartBot();

  /// Updates the [targetAverage] of the dartbot.
  ///
  /// This means the average the darbot aims to score.
  Future<Either<PlayFailure, Unit>> setDartBotTargetAverage({
    required int targetAverage,
  });

  /// Adds a player to the game.
  Future<Either<PlayFailure, Unit>> addPlayer();

  /// Updates the name of player at [index] to [newName]
  Future<Either<PlayFailure, Unit>> updateName({
    required int index,
    required String newName,
  });
}
