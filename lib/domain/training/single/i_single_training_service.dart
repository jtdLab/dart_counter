import 'package:dart_counter/domain/training/abstract_i_training_service.dart';
import 'package:dart_counter/domain/training/mode.dart';
import 'package:dart_counter/domain/training/single/single_training_game_snapshot.dart';
import 'package:dart_counter/domain/user/user.dart';

/// Domain service for playing a single training game.
abstract class ISingleTrainingService extends AbstractITrainingService {
  @override
  Stream<SingleTrainingGameSnapshot> watchGame();

  @override
  SingleTrainingGameSnapshot getGame();

  @override
  SingleTrainingGameSnapshot createGame({
    required User owner,
    List<String?>? players,
  });

  void updateMode({
    required Mode newMode,
  });
}
