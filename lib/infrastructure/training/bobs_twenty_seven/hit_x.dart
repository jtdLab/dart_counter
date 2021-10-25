import 'package:dart_counter/domain/training/bobs_twenty_seven/hit.dart';
import 'package:dart_game/bobs_twenty_seven_training_game.dart' as ex;

extension HitX on Hit {
  ex.Hit toExternal() {
    return this == Hit.double ? ex.Hit.double : ex.Hit.missed;
  }
}
