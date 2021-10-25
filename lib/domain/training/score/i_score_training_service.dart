import 'package:dart_counter/domain/training/score/game_snapshot.dart';
import 'package:dart_counter/domain/user/user.dart';

abstract class IScoreTrainingService {
  /// Returns a stream of the received snapshots of the current game of the app-user.
  Stream<GameSnapshot> watchGame();

  void createGame({
    required User owner,
    required List<String> users,
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

  void cancel();

  void start();

  void performThrow({
    required int points,
  });

  void undoHits();
}
