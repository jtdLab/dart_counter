import 'package:dart_counter/domain/training/double/hit.dart';
import 'package:dart_game/double_training_game.dart' as ex;

extension HitX on Hit {
  ex.Hit toExternal() {
    return this == Hit.double ? ex.Hit.double : ex.Hit.missed;
  }
}
