import 'package:dart_counter/domain/training/abstract_i_training_service.dart';
import 'package:dart_counter/domain/training/double/double_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/double/hit.dart';
import 'package:dart_counter/domain/training/mode.dart';

/// Domain service for playing a double training game.
abstract class IDoubleTrainingService extends AbstractITrainingService {
  @override
  Stream<DoubleTrainingGameSnapshot> watchGame();

  @override
  DoubleTrainingGameSnapshot getGame();

  void updateMode({
    required Mode newMode,
  });

  void performHits({
    required Hit hit1,
    required Hit hit2,
    required Hit hit3,
  });

  void undoHits();
}
