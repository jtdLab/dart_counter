import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dartz/dartz.dart';
//import 'package:dart_counter/domain/core/errors.dart';

import 'mode.dart';
import 'play_failure.dart';
import 'throw.dart';
import 'type.dart';

/// Domain interface for all actions related playing an offline game.
abstract class IPlayOfflineFacade {
  /// Returns a stream of the received snapshots of the current game of the app-user.
  ///
  // TODO Should Throws [NotAuthenticatedError] if the app-user is not signed in.
  Stream<Either<PlayFailure, OfflineGameSnapshot>> watchGame();

  /// Creates a new game.
  Either<PlayFailure, Unit> createGame();

  /// Changes the position of a player from [oldIndex] to [newIndex].
  Either<PlayFailure, Unit> reorderPlayer({
    required int oldIndex,
    required int newIndex,
  });

  /// Removes the player at [index].
  Either<PlayFailure, Unit> removePlayer({
    required int index,
  });

  /// Updates the starting points to [startingPoints].
  ///
  /// Starting points here mean the amount of points a player has to score in order to win a leg.
  Either<PlayFailure, Unit> setStartingPoints({
    required int startingPoints,
  });

  /// Updates the mode to [mode].
  Either<PlayFailure, Unit> setMode({
    required Mode mode,
  });

  /// Updates the size.
  ///
  /// Size here means the amount of legs or sets a player needs to win in order to win the game.
  Either<PlayFailure, Unit> setSize({
    required int size,
  });

  /// Updates the type to [type].
  Either<PlayFailure, Unit> setType({
    required Type type,
  });

  /// Starts the pending game.
  Either<PlayFailure, Unit> startGame();

  /// Cancels the running game
  Either<PlayFailure, Unit> cancelGame();

  /// Performs a throw [t].
  Either<PlayFailure, Unit> performThrow({
    required Throw t,
  });

  /// Undoes the last throw of the game.
  Either<PlayFailure, Unit> undoThrow();

  /// Adds a dartbot to the game.
  Either<PlayFailure, Unit> addDartBot();

  /// Removes the dartbot from the game.
  Either<PlayFailure, Unit> removeDartBot();

  /// Updates the [targetAverage] of the dartbot.
  ///
  /// This means the average the darbot aims to score.
  Either<PlayFailure, Unit> setDartBotTargetAverage({
    required int targetAverage,
  });

  /// Adds a player to the game.
  Either<PlayFailure, Unit> addPlayer();

  /// Updates the name of player at [index] to [newName]
  Either<PlayFailure, Unit> updateName({
    required int index,
    required String newName,
  });
}
