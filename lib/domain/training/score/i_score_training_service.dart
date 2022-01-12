import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/training/abstract_i_training_service.dart';
import 'package:dart_counter/domain/training/score/score_training_game_snapshot.dart';

/// Domain service for playing a score training game.
abstract class IScoreTrainingService extends AbstractITrainingService {
  @override
  Stream<ScoreTrainingGameSnapshot> watchGame();

  @override
  ScoreTrainingGameSnapshot getGame();

  void performThrow({
    required Throw t,
  });

  void undoThrow();
}
