import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dartz/dartz.dart';

//import 'package:dart_counter/domain/core/errors.dart';

import '../../game/mode.dart';
import '../../game/throw.dart';
import '../../game/type.dart';

/// Domain service for all actions related playing an offline game.
abstract class IPlayOfflineService {
  /// Returns a stream of the received snapshots of the current game of the app-user.
  Stream<OfflineGameSnapshot> watchGame();

  /// Returns a stream of the latest received snapshot of the current game of the app-user.
  OfflineGameSnapshot getGame();

  /// Creates a new game with [owner].
  Either<PlayFailure, OfflineGameSnapshot> createGame({
    required User owner,
  });

  /// Changes the position of a player from [oldIndex] to [newIndex].
  void reorderPlayer({
    required int oldIndex,
    required int newIndex,
  });

  /// Removes the player at [index].
  void removePlayer({
    required int index,
  });

  /// Updates the starting points to [startingPoints].
  ///
  /// Starting points here mean the amount of points a player has to score in order to win a leg.
  void setStartingPoints({
    required int startingPoints,
  });

  /// Updates the mode to [mode].
  void setMode({
    required Mode mode,
  });

  /// Updates the size to [size].
  ///
  /// Size here means the amount of legs or sets a player needs to win in order to win the game.
  void setSize({
    required int size,
  });

  /// Updates the type to [type].
  void setType({
    required Type type,
  });

  /// Starts the pending game.
  void startGame();

  /// Cancels the running game
  void cancelGame();

  /// Performs a throw [t].
  void performThrow({
    required Throw t,
  });

  /// Undoes the last throw of the game.
  void undoThrow();

  /// Adds a dartbot to the game.
  void addDartBot();

  /// Removes the dartbot from the game.
  void removeDartBot();

  /// Updates the [targetAverage] of the dartbot.
  ///
  /// This means the average the darbot aims to score.
  void setDartBotTargetAverage({
    required int targetAverage,
  });

  /// Adds a player to the game.
  void addPlayer();

  /// Updates the name of player at [index] to [newName]
  void updateName({
    required int index,
    required String newName,
  });
}
