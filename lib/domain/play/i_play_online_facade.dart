import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dartz/dartz.dart';

import 'mode.dart';
import 'play_failure.dart';
import 'throw.dart';
import 'type.dart';

/// Domain interface for all actions related playing an online game
/// hosted on a server against other players.
abstract class IPlayOnlineFacade {
  /// Returns a stream of the received snapshots of the current game of the app-user.
  ///
  // TODO Should Throws [NotAuthenticatedError] if the app-user is not signed in.
  Stream<Either<PlayFailure, OnlineGameSnapshot>> watchGame();

  /// Creates a new game.
  Future<Either<PlayFailure, Unit>> createGame();

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

  /// Updates the size.
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

  /// Joins the game with [gameId].
  Future<Either<PlayFailure, Unit>> joinGame({
    required UniqueId gameId,
  });
}
