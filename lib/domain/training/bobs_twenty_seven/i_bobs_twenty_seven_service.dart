import 'package:dart_counter/domain/training/abstract_i_training_service.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/mode.dart';
import 'package:dart_counter/domain/user/user.dart';

/// Domain service for playing a bobs twenty seven training game.
abstract class IBobsTwentySevenService extends AbstractITrainingService {
  @override
  Stream<BobsTwentySevenGameSnapshot> watchGame();

  @override
  BobsTwentySevenGameSnapshot getGame();

  @override
  BobsTwentySevenGameSnapshot createGame({
    required User owner,
    List<String?>? players,
  });

  void updateMode({
    required Mode newMode,
  });
}
