import 'dart:math';

import 'package:dart_game/dart_game.dart';

// TODO generate throws with darts would be cool

class ThrowGenerator {
  /// Returns valid [Throw] generated based on [startingPoints] of the game and
  /// [targetAverage], [pointsLeft], [dartsThrown] and [average] of this dartbot.
  ///
  /// Throwss [ArgumentError] if [targetAverage] is <10 or >150.
  static Throw generate({
    required int startingPoints,
    required int targetAverage,
    required int pointsLeft,
    required int dartsThrown,
    required double average,
  }) {
    if (targetAverage < 10) {
      throw ArgumentError.value(
        targetAverage,
        'targetAverage',
        'Target average mustn`t be less than 10.',
      );
    }
    if (targetAverage > 150) {
      throw ArgumentError.value(
        targetAverage,
        'targetAverage',
        'Target average mustn`t be greater than 150.',
      );
    }

    // first throws of a game should be a bit higher than target average
    try {
      final random = Random();
      if (startingPoints <= 301) {
        if (dartsThrown < 3) {
          // first 3 darts
          return Throw(
            points: targetAverage + random.nextInt(targetAverage ~/ 5),
          );
        }
      } else if (startingPoints <= 501) {
        if (dartsThrown < 6) {
          // first 6 darts
          return Throw(
            points: targetAverage + random.nextInt(targetAverage ~/ 5),
          );
        }
      } else {
        if (dartsThrown < 9) {
          // first 9 darts
          return Throw(
            points: targetAverage + random.nextInt(targetAverage ~/ 5),
          );
        }
      }

      // normal throws try to establish the target average by balancing around it
      int generatedPoints;
      if (average < targetAverage) {
        generatedPoints = targetAverage + random.nextInt(targetAverage ~/ 5);
      } else {
        generatedPoints = targetAverage - random.nextInt(targetAverage ~/ 5);
      }

      if (generatedPoints >= pointsLeft) {
        if (DartUtils.isFinish(points: pointsLeft)) {
          return Throw(points: pointsLeft, dartsOnDouble: 1);
        } else {
          // if pointsLeft not finishable retry
          return generate(
            startingPoints: startingPoints,
            targetAverage: targetAverage,
            pointsLeft: pointsLeft,
            dartsThrown: dartsThrown,
            average: average,
          );
        }
      } else {
        // generated points would lead to invalid pointsLeft => regenerated valid points
        if (pointsLeft - generatedPoints == 1) {
          if (pointsLeft > 40) {
            return Throw(points: pointsLeft - 40);
          } else if (pointsLeft > 36) {
            return Throw(points: pointsLeft - 36);
          } else if (pointsLeft > 32) {
            return Throw(points: pointsLeft - 32);
          } else if (pointsLeft > 16) {
            return Throw(points: pointsLeft - 16);
          } else if (pointsLeft > 8) {
            return Throw(points: pointsLeft - 8);
          } else if (pointsLeft > 4) {
            return Throw(points: pointsLeft - 4);
          } else {
            return Throw(points: pointsLeft - 2);
          }
        } else {
          // generated points lead to valid points left
          return Throw(points: generatedPoints);
        }
      }
    } on ArgumentError {
      // if invalid throw created retry
      return generate(
        startingPoints: startingPoints,
        targetAverage: targetAverage,
        pointsLeft: pointsLeft,
        dartsThrown: dartsThrown,
        average: average,
      );
    }
  }
}
