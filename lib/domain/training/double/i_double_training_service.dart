import 'package:dart_counter/domain/training/abstract_i_training_service.dart';
import 'package:dart_counter/domain/training/double/double_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/mode.dart';
import 'package:dart_counter/domain/user/user.dart';

/// Domain service for playing a double training game.
abstract class IDoubleTrainingService extends AbstractITrainingService {
  @override
  Stream<DoubleTrainingGameSnapshot> watchGame();

  @override
  DoubleTrainingGameSnapshot getGame();

  @override
  DoubleTrainingGameSnapshot createGame({
    required User owner,
    List<String?>? players,
  });

  void updateMode({
    required Mode newMode,
  });
}
