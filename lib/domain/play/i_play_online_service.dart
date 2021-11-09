import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dartz/dartz.dart';

import 'mode.dart';
import 'play_failure.dart';
import 'throw.dart';
import 'type.dart';

/// Domain interface for all actions related playing an online game
/// hosted on a server against other players.
abstract class IPlayOnlineService {
  /// Returns a stream of the received snapshots of the current game of the app-user.

  // TODO Should Throws [NotAuthenticatedError] if the app-user is not signed in.
  // TODO Should throw error if no active running game
  Stream<OnlineGameSnapshot> watchGame();

  /// Creates a new game.
  Future<Either<PlayFailure, OnlineGameSnapshot>> createGame();

  /// Changes the position of a player from [oldIndex] to [newIndex].

  // TODO Should throw error if no active running game
  Future<Either<PlayFailure, Unit>> reorderPlayer({
    required int oldIndex,
    required int newIndex,
  });

  /// Removes the player at [index].

  // TODO Should throw error if no active running game
  Future<Either<PlayFailure, Unit>> removePlayer({
    required int index,
  });

  /// Updates the starting points to [startingPoints].
  ///
  /// Starting points here mean the amount of points a player has to score in order to win a leg.

  // TODO Should throw error if no active running game
  Future<Either<PlayFailure, Unit>> setStartingPoints({
    required int startingPoints,
  });

  /// Updates the mode to [mode].

  // TODO Should throw error if no active running game
  Future<Either<PlayFailure, Unit>> setMode({
    required Mode mode,
  });

  /// Updates the size.
  ///
  /// Size here means the amount of legs or sets a player needs to win in order to win the game.

  // TODO Should throw error if no active running game
  Future<Either<PlayFailure, Unit>> setSize({
    required int size,
  });

  /// Updates the type to [type].

  // TODO Should throw error if no active running game
  Future<Either<PlayFailure, Unit>> setType({
    required Type type,
  });

  /// Starts the pending game.

  // TODO Should throw error if no active running game
  Future<Either<PlayFailure, Unit>> startGame();

  /// Cancels the running game

  // TODO Should throw error if no active running game
  Future<Either<PlayFailure, Unit>> cancelGame();

  /// Performs a throw [t].

  // TODO Should throw error if no active running game
  Future<Either<PlayFailure, Unit>> performThrow({
    required Throw t,
  });

  /// Undoes the last throw of the game.

  // TODO Should throw error if no active running game
  Future<Either<PlayFailure, Unit>> undoThrow();

  /// Joins the game with [gameId].
  Future<Either<PlayFailure, OnlineGameSnapshot>> joinGame({
    required UniqueId gameId,
  });
}
