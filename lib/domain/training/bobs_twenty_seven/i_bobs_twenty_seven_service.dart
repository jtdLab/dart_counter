import 'package:dart_counter/domain/training/bobs_twenty_seven/game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/hit.dart';
import 'package:dart_counter/domain/user/user.dart';

abstract class IBobsTwentySevenService {
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

  void performHits({
    required Hit hit1,
    required Hit hit2,
    required Hit hit3,
  });

  void undoHits();
}
