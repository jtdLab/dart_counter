import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dartz/dartz.dart';

/// Base class for [IPlayOfflineService] and [IPlayOnlineService].
abstract class AbstractIPlayService {
  /// Returns a stream of the received snapshots of the current game of the app-user.
  Stream<AbstractGameSnapshot> watchGame();

  /// Returns a stream of the latest received snapshot of the current game of the app-user.
  AbstractGameSnapshot getGame();

  /// Changes the position of a player from [oldIndex] to [newIndex].
  Future<Either<PlayFailure, Unit>> reorderPlayer({
    required int oldIndex,
    required int newIndex,
  });

  /// Removes the player at [index].
  Future<Either<PlayFailure, Unit>> removePlayer({
    required int index,
  });

  /// Updates the starting points to [startingPoints].
  ///
  /// Starting points here mean the amount of points a player has to score in order to win a leg.
  Future<Either<PlayFailure, Unit>> setStartingPoints({
    required int startingPoints,
  });

  /// Updates the mode to [mode].
  Future<Either<PlayFailure, Unit>> setMode({
    required Mode mode,
  });

  /// Updates the size to [size].
  ///
  /// Size here means the amount of legs or sets a player needs to win in order to win the game.
  Future<Either<PlayFailure, Unit>> setSize({
    required int size,
  });

  /// Updates the type to [type].
  Future<Either<PlayFailure, Unit>> setType({
    required Type type,
  });

  /// Starts the pending game.
  Future<Either<PlayFailure, Unit>> startGame();

  /// Cancels the running game
  Future<Either<PlayFailure, Unit>> cancelGame();

  /// Performs a throw [t].
  Future<Either<PlayFailure, Unit>> performThrow({
    required Throw t,
  });

  /// Undoes the last throw of the game.
  Future<Either<PlayFailure, Unit>> undoThrow();
}
