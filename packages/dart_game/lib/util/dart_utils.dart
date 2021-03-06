import '../core/throw.dart';

/// Contains some utility functions for dart games.
class DartUtils {
  /// Returns `true` if a player needs min. 1 dart to finish [points].
  static bool isOneDartFinish({
    required int points,
  }) {
    return _oneDartFinishes.contains(points);
  }

  /// Returns `true` if a player needs min. 2 darts to finish [points].
  static bool isTwoDartFinish({
    required int points,
  }) {
    return _twoDartFinishes.contains(points);
  }

  /// Returns `true` if a player needs min. 3 darts to finish [points].
  static bool isThreeDartFinish({
    required int points,
  }) {
    return _threeDartFinishes.contains(points);
  }

  /// Returns `true` if [points] is finishable.
  static bool isFinish({
    required int points,
  }) {
    return isOneDartFinish(points: points) ||
        isTwoDartFinish(points: points) ||
        isThreeDartFinish(points: points);
  }

  /// Returns `true` if [points] is valid when a player has [pointsLeft].
  ///
  /// If [pointsLeft] is null they are not considered.
  static bool validatePoints({
    int? pointsLeft,
    required int points,
  }) {
    if (pointsLeft != null) {
      if (pointsLeft == 0) return false; // TODO test case 4 this
      if (points > pointsLeft) return false;
      if (pointsLeft - points == 1) return false;
    }

    if (points < 0 || points > 180) return false;

    if ([163, 166, 169, 172, 173, 175, 176, 178, 179].contains(points))
      return false;

    return true;
  }

  /// Returns `true` if [t] is valid next throw when a player has [pointsLeft].
  static bool validateThrow({
    required int pointsLeft,
    required Throw t,
  }) {
    final diff = pointsLeft - t.points;

    if (diff < 0) {
      return false;
    }

    if (diff == 0) {
      return t.dartsOnDouble > 0;
    }

    if (diff == 1) {
      return false;
    }

    if (pointsLeft == 2) {
      return t.dartsOnDouble == 3;
    }

    if (t.dartsThrown != 3) {
      return false;
    }

    if (t.dartsOnDouble == 3) {
      if (isOneDartFinish(points: pointsLeft)) {
        return true;
      } else {
        return false;
      }
    } else if (t.dartsOnDouble == 2) {
      if (isOneDartFinish(points: pointsLeft)) {
        return true;
      } else if (isTwoDartFinish(points: pointsLeft)) {
        if (diff <= 50) {
          return true;
        } else {
          return false;
        }
      } else {
        return false;
      }
    } else if (t.dartsOnDouble == 1) {
      if (isOneDartFinish(points: pointsLeft)) {
        return true;
      } else if (isTwoDartFinish(points: pointsLeft)) {
        return true;
      } else if (isThreeDartFinish(points: pointsLeft)) {
        if (diff <= 50) {
          return true;
        } else {
          return false;
        }
      } else {
        return false;
      }
    } else {
      return true;
    }
  }

  /// Returns the min. possible dartsThrown depending on [pointsLeft] and [points].
  ///
  /// {@template dart_utils_min_max_error}
  /// Throws [ArgumentError] if [pointsLeft] - [points] == 1, [points] are not possible,
  /// [point] == [pointsLeft] == a not finishable number or [points] > [pointsLeft].
  /// {@endtemplate}
  static int minDartsThrown({
    required int pointsLeft,
    required int points,
  }) {
    if (points > pointsLeft) {
      throw ArgumentError('Points mustn`t be greater than pointsLeft.');
    }

    if ([163, 166, 169, 172, 173, 175, 176, 178, 179].contains(points)) {
      throw ArgumentError('Points mustn`t be $points.');
    }

    final diff = pointsLeft - points;
    if (diff == 1) {
      throw ArgumentError('PointsLeft mustn`t be 1 greater than points.');
    }

    if (diff == 0 && [159, 162, 165, 168].contains(pointsLeft)) {
      throw ArgumentError('$pointsLeft can`t be finished.');
    }

    if (isOneDartFinish(points: pointsLeft)) {
      if (diff == 0) {
        return 1;
      }
    } else if (isTwoDartFinish(points: pointsLeft)) {
      if (diff == 0) {
        return 2;
      }
    }

    return 3;
  }

  /// Returns the max. possible dartsThrown depending on [pointsLeft] and [points].
  ///
  /// {@macro dart_utils_min_max_error}
  static int maxDartsThrown({
    required int pointsLeft,
    required int points,
  }) {
    if (points > pointsLeft) {
      throw ArgumentError('Points mustn`t be greater than pointsLeft.');
    }

    if ([163, 166, 169, 172, 173, 175, 176, 178, 179].contains(points)) {
      throw ArgumentError('Points mustn`t be $points.');
    }

    final diff = pointsLeft - points;
    if (diff == 1) {
      throw ArgumentError('PointsLeft mustn`t be 1 greater than points.');
    }

    if (diff == 0 && [159, 162, 165, 168].contains(pointsLeft)) {
      throw ArgumentError('$pointsLeft can`t be finished.');
    }

    return 3;
  }

  /// Returns the min. possible dartsOnDouble depending on [pointsLeft] and [points].
  ///
  /// {@macro dart_utils_min_max_error}
  static int minDartsOnDouble({
    required int pointsLeft,
    required int points,
  }) {
    if (points > pointsLeft) {
      throw ArgumentError('Points mustn`t be greater than pointsLeft.');
    }

    if ([163, 166, 169, 172, 173, 175, 176, 178, 179].contains(points)) {
      throw ArgumentError('Points mustn`t be $points.');
    }

    final diff = pointsLeft - points;
    if (diff == 1) {
      throw ArgumentError('PointsLeft mustn`t be 1 greater than points.');
    }

    if (diff == 0 && [159, 162, 165, 168].contains(pointsLeft)) {
      throw ArgumentError('$pointsLeft can`t be finished.');
    }

    if (diff == 0) {
      return 1;
    }

    if (pointsLeft == 2) {
      return 1;
    }

    return 0;
  }

  /// Returns the max. possible dartsOnDouble depending on [pointsLeft] and [points].
  ///
  /// {@macro dart_utils_min_max_error}
  static int maxDartsOnDouble({
    required int pointsLeft,
    required int points,
  }) {
    if (points > pointsLeft) {
      throw ArgumentError('Points mustn`t be greater than pointsLeft.');
    }

    if ([163, 166, 169, 172, 173, 175, 176, 178, 179].contains(points)) {
      throw ArgumentError('Points mustn`t be $points.');
    }

    final diff = pointsLeft - points;
    if (diff == 1) {
      throw ArgumentError('PointsLeft mustn`t be 1 greater than points.');
    }

    if (diff == 0 && [159, 162, 165, 168].contains(pointsLeft)) {
      throw ArgumentError('$pointsLeft can`t be finished.');
    }

    if (isOneDartFinish(points: pointsLeft)) {
      return 3;
    } else if (isTwoDartFinish(points: pointsLeft)) {
      if (diff <= 50) {
        return 2;
      }
    } else if (isThreeDartFinish(points: pointsLeft)) {
      if (diff <= 50) {
        return 1;
      }
    }

    return 0;
  }

  /// Points a player needs min. 1 dart to finish them.
  static List<int> _oneDartFinishes = [
    2,
    4,
    6,
    8,
    10,
    12,
    14,
    16,
    18,
    20,
    22,
    24,
    26,
    28,
    30,
    32,
    34,
    36,
    38,
    40,
    50
  ];

  /// Points a player needs min. 2 darts to finish them.
  static List<int> _twoDartFinishes = [
        3,
        5,
        7,
        9,
        11,
        13,
        15,
        17,
        19,
        21,
        23,
        25,
        27,
        29,
        31,
        33,
        35,
        37,
        39
      ] +
      List.generate(58, (index) => index + 41) +
      [100, 101, 104, 107, 110];

  /// Points a player needs min. 3 darts to finish them.
  static List<int> _threeDartFinishes = [
        99,
        102,
        103,
        105,
        106,
        108,
        109,
        160,
        161,
        164,
        167,
        170
      ] +
      List.generate(158 - 111 + 1, (i) => i + 111);

/**
 * 
  static bool validateThrow(Throw t, int pointsLeft) {
    if (t.points < 0 || t.points > 180) return false;
    if (t.dartsThrown < 1 || t.dartsThrown > 3) return false;
    if (t.dartsOnDouble < 0 || t.dartsOnDouble > 3) return false;
    if (pointsLeft < 0 || pointsLeft == 0 || pointsLeft == 1) return false;

    if (t.points > pointsLeft) return false;
    if (t.dartsOnDouble > t.dartsThrown) return false;
    if ([163, 166, 169, 172, 173, 175, 176, 178, 179].contains(t.points))
      return false;
    if (pointsLeft - t.points == 1) return false;

    // oneDartFinish checked with 1st dart on double
    if (t.dartsThrown == 1 &&
        t.dartsOnDouble == 1 &&
        t.points == pointsLeft &&
        _oneDartFinishes.contains(pointsLeft)) return true;

    // oneDartFinish checked with 2nd dart on double
    if (t.dartsThrown == 2 &&
        t.dartsOnDouble == 2 &&
        t.points == pointsLeft &&
        _oneDartFinishes.contains(pointsLeft)) return true;

    // oneDartFinish != 2 nach umstellen checked with 1st dart on double || twoDartFinish checked with 1st dart on double
    if (t.dartsThrown == 2 &&
        t.dartsOnDouble == 1 &&
        t.points == pointsLeft &&
        ((pointsLeft != 2 && _oneDartFinishes.contains(pointsLeft)) ||
            _twoDartFinishes.contains(pointsLeft))) return true;

    if (t.dartsThrown == 3) {
      if (t.dartsOnDouble == 3) {
        // oneDartFinish check with 3rd dart on double || or gerade - 0 - t.points-gerade
        if (_oneDartFinishes.contains(pointsLeft)) return true;
      } else if (t.dartsOnDouble == 2) {
        // oneDartFinish != 2 (umstellen, miss, check with 2nd dart on double)
        if (pointsLeft != 2 && _oneDartFinishes.contains(pointsLeft))
          return true;
        // twoDartFinish(stellen, miss, check with 2nd dart on double)
        if (t.points == pointsLeft && _twoDartFinishes.contains(pointsLeft))
          return true;
        // twoDartFinish stellen with first dart then one dartFinish left, throw something lessequal 50 with to remaining darts (first dart equal)
        if (pointsLeft - t.points <= 50 &&
            _twoDartFinishes.contains(pointsLeft))
          return true; // TODO is correct?
      } else if (t.dartsOnDouble == 1) {
        // oneDartFinish != 2 (umstellen miss), umstellen, oneDartThrowable)
        if (pointsLeft != 2 && _oneDartFinishes.contains(pointsLeft))
          return true;

        // twoDartFinish(stellen miss, stellen, check with 1st dart on double)
        if (t.points == pointsLeft && _twoDartFinishes.contains(pointsLeft))
          return true;
        if (pointsLeft - t.points <= 50 &&
            _twoDartFinishes.contains(pointsLeft))
          return true; // TODO is correct?

        // threeDartFinish(stellen, stellen, check with 1st dart on double)
        if (t.points == pointsLeft && _threeDartFinishes.contains(pointsLeft))
          return true;

        if (pointsLeft - t.points <= 50 &&
            _threeDartFinishes.contains(pointsLeft))
          return true; // TODO is correct?
      } else {
        // no check
        if (t.points != pointsLeft) return true;
      }
    }

    return false;
  }

 */

}
