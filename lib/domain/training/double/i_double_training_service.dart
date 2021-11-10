import 'package:dart_counter/domain/training/double/double_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/mode.dart';
import 'package:dart_counter/domain/user/user.dart';

import 'hit.dart';

/// Domain service for playing a double training game.
abstract class IDoubleTrainingService {
  /// Returns a stream of the received snapshots of the current game of the app-user.
  Stream<DoubleTrainingGameSnapshot> watchGame();

  void createGame({
    required User owner,
    List<String?>? players,
  });

  void addPlayer();

  void removePlayer({
    required int index,
  });

  void reorderPlayer({
    required int oldIndex,
    required int newIndex,
  });

  /// Updates the name of player at [index] to [newName]
  void updateName({
    required int index,
    required String newName,
  });

  void updateMode({
    required Mode newMode,
  });

  void cancel();

  void start();

  void performHits({
    required Hit hit1,
    required Hit hit2,
    required Hit hit3,
  });

  void undoHits();
}
