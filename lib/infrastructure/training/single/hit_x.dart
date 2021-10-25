import 'package:dart_counter/domain/training/single/hit.dart';
import 'package:dart_game/single_training_game.dart' as ex;

extension HitX on Hit {
  ex.Hit toExternal() {
    return this == Hit.single
        ? ex.Hit.single
        : this == Hit.double
            ? ex.Hit.double
            : this == Hit.triple
                ? ex.Hit.triple
                : ex.Hit.missed;
  }
}
