import 'package:dart_counter/domain/training/abstract_i_training_service.dart';
import 'package:dart_counter/domain/training/mode.dart';
import 'package:dart_counter/domain/training/single/hit.dart';
import 'package:dart_counter/domain/training/single/single_training_game_snapshot.dart';

/// Domain service for playing a single training game.
abstract class ISingleTrainingService extends AbstractITrainingService {
  @override
  Stream<SingleTrainingGameSnapshot> watchGame();

  @override
  SingleTrainingGameSnapshot getGame();

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
