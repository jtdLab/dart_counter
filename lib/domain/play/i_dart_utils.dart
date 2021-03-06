// Utility functions helpful for things like validation of user input a. o. when playing dart games.
import 'package:dart_counter/domain/game/dart.dart';
import 'package:kt_dart/kt.dart';
// share better

abstract class IDartUtils {
  /// Returns `true` if [points] is valid when a player has [pointsLeft].
  ///
  /// [pointsLeft] is null they get ignored.
  bool validatePoints({
    int? pointsLeft,
    required int points,
  });

  /// Returns `true` if [darts] is valid when a player has [pointsLeft].
  bool validateDarts({
    required int pointsLeft,
    required KtList<Dart> darts,
  });

  /// Returns `true` if [points] is fnish.
  bool isFinish({
    required int points,
  });

  /// Returns the min. possible dartsThrown depending on [pointsLeft] and [points].
  int minDartsThrown({
    required int pointsLeft,
    required int points,
  });

  /// Returns the max. possible dartsThrown depending on [pointsLeft] and [points].
  int maxDartsThrown({
    required int pointsLeft,
    required int points,
  });

  /// Returns the min. possible dartsOnDouble depending on [pointsLeft] and [points].
  int minDartsOnDouble({
    required int pointsLeft,
    required int points,
  });

  /// Returns the max. possible dartsOnDouble depending on [pointsLeft] and [points].
  int maxDartsOnDouble({
    required int pointsLeft,
    required int points,
  });
}
