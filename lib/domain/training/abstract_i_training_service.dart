import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/training/abstract_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/i_bobs_twenty_seven_service.dart';
import 'package:dart_counter/domain/training/double/i_double_training_service.dart';
import 'package:dart_counter/domain/training/score/i_score_training_service.dart';
import 'package:dart_counter/domain/training/single/i_single_training_service.dart';
import 'package:dart_counter/domain/user/user.dart';

/// Base class for [ISingleTrainingService], [IDoubleTrainingService], [IScoreTrainingService] and [IBobsTwentySevenService].
abstract class AbstractITrainingService {
  /// Returns a stream of the received snapshots of the current trainig-game of the app-user.
  Stream<AbstractTrainingGameSnapshot> watchGame();

  /// Returns a stream of the latest received snapshot of the current trainig-game of the app-user.
  AbstractTrainingGameSnapshot getGame();

  AbstractTrainingGameSnapshot createGame({
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

  void start();

  void performThrow({
    required Throw t,
  });

  void undoThrow();

  void cancel();
}
