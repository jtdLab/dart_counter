import 'package:dart_counter/domain/training/mode.dart';
import 'package:dart_counter/domain/training/single/hit.dart';
import 'package:dart_counter/domain/training/single/single_training_game_snapshot.dart';
import 'package:dart_counter/domain/user/user.dart';

/// Domain service for playing a single training game.
abstract class ISingleTrainingService {
  /// Returns a stream of the received snapshots of the current game of the app-user.
  Stream<SingleTrainingGameSnapshot> watchGame();

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
