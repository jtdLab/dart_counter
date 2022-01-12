import 'package:dart_counter/domain/training/abstract_i_training_service.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/hit.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/mode.dart';

/// Domain service for playing a bobs twenty seven training game.
abstract class IBobsTwentySevenService extends AbstractITrainingService {
  @override
  Stream<BobsTwentySevenGameSnapshot> watchGame();

  @override
  BobsTwentySevenGameSnapshot getGame();

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
