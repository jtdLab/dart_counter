part of '../../dart_game.dart';

// TODO optimize multiple calls to the same getter in a method

class Leg {
  final int startingPoints;
  final List<Throw> throws;

  /// Creates an empty leg with given [startingPoints].
  ///
  /// Throws [ArgumentError] if [startingPoints] < 2.
  Leg({
    required this.startingPoints,
  }) : throws = [] {
    _validate();
  }

  /// Creates a leg with given [startingPoints] and [throws].
  ///
  /// Throws [ArgumentError] if try to create invalid leg.
  Leg.fromData({
    required this.startingPoints,
    required this.throws,
  }) {
    _validate();
  }

  /// Returns `true`if this leg is won.
  bool get won => startingPoints == _points;

  /// The the points left to finish this leg.
  int get pointsLeft => startingPoints - _points;

  /// The three dart average of this leg.
  ///
  /// {@template leg_zero_darts_thrown}
  /// Returns `null` if this leg has 0 darts thrown.
  /// {@endtemplate}
  double? get average {
    if (_dartsThrown == 0) return null;
    return (3 * _points) / _dartsThrown;
  }

  /// The checkout percentage of this leg.
  ///
  /// {@template leg_is_not_won}
  /// Returns `null` if this leg is not won.
  /// {@endtemplate}
  double? get checkoutPercentage => won ? 1 / _dartsOnDouble : null;

  /// The first nine average of this leg.
  ///
  /// {@macro leg_zero_darts_thrown}
  double? get firstNineAverage {
    int index = 0;
    int points = 0;
    int dartsThrown = 0;
    for (Throw t in throws) {
      points += t.points;
      dartsThrown += t.dartsThrown;
      index++;
      if (index == 3) break;
    }
    if (dartsThrown == 0) return null;
    return (3 * points) / dartsThrown;
  }

  /// The points which this leg got finished with.
  ///
  /// {@macro leg_is_not_won}
  int? get finish {
    return won ? throws.last.points : null;
  }

  /// The average of the first dart of every throw of this leg.
  ///
  /// Returns `null` if this leg has 0 throws with 1st dart provided.
  double? get firstDartAverage {
    int amount = 0;
    int points = 0;
    for (Throw t in throws) {
      if (t.darts != null) {
        Dart? firstDart = t.darts?[0];
        if (firstDart != null) {
          amount++;
          points += firstDart.points;
        }
      }
    }
    return amount == 0 ? null : points / amount;
  }

  /// The average of the second dart of every throw of this leg.
  ///
  /// Returns `null` if this leg has 0 throws with 2nd dart provided.
  double? get secondDartAverage {
    int amount = 0;
    int points = 0;
    for (Throw t in throws) {
      if (t.darts != null) {
        Dart? secondDart = t.darts?[1];
        if (secondDart != null) {
          amount++;
          points += secondDart.points;
        }
      }
    }
    return amount == 0 ? null : points / amount;
  }

  /// The average of the third dart of every throw of this leg.
  ///
  /// Returns `null` if this leg has 0 throws with 3rd dart provided.
  double? get thirdDartAverage {
    int amount = 0;
    int points = 0;
    for (Throw t in throws) {
      if (t.darts != null) {
        Dart? thirdDart = t.darts?[2];
        if (thirdDart != null) {
          amount++;
          points += thirdDart.points;
        }
      }
    }
    return amount == 0 ? null : points / amount;
  }

  /// {@template leg_n_plus}
  /// The amount of throws of this leg with
  /// {@endtemplate}
  /// 40 <= points < 60.
  int get fourtyPlus {
    int fourtyPlus = 0;
    for (Throw t in throws) {
      if (t.points >= 40 && t.points < 60) {
        fourtyPlus++;
      }
    }
    return fourtyPlus;
  }

  /// {@macro leg_n_plus}
  /// 60 <= points < 80
  int get sixtyPlus {
    int sixtyPlus = 0;
    for (Throw t in throws) {
      if (t.points >= 60 && t.points < 80) {
        sixtyPlus++;
      }
    }
    return sixtyPlus;
  }

  /// {@macro leg_n_plus}
  /// 80 <= points < 100
  int get eightyPlus {
    int eightyPlus = 0;
    for (Throw t in throws) {
      if (t.points >= 80 && t.points < 100) {
        eightyPlus++;
      }
    }
    return eightyPlus;
  }

  /// {@macro leg_n_plus}
  /// 100 <= points < 120
  int get hundredPlus {
    int hundredPlus = 0;
    for (Throw t in throws) {
      if (t.points >= 100 && t.points < 120) {
        hundredPlus++;
      }
    }
    return hundredPlus;
  }

  /// {@macro leg_n_plus}
  /// 120 <= points < 140
  int get hundredTwentyPlus {
    int hundredTwentyPlus = 0;
    for (Throw t in throws) {
      if (t.points >= 120 && t.points < 140) {
        hundredTwentyPlus++;
      }
    }
    return hundredTwentyPlus;
  }

  /// {@macro leg_n_plus}
  /// 140 <= points < 160
  int get hundredFourtyPlus {
    int hundredFourtyPlus = 0;
    for (Throw t in throws) {
      if (t.points >= 140 && t.points < 160) {
        hundredFourtyPlus++;
      }
    }
    return hundredFourtyPlus;
  }

  /// {@macro leg_n_plus}
  /// 160 <= points < 180
  int get hundredSixtyPlus {
    int hundredSixtyPlus = 0;
    for (Throw t in throws) {
      if (t.points >= 160 && t.points < 180) {
        hundredSixtyPlus++;
      }
    }
    return hundredSixtyPlus;
  }

  /// {@macro leg_n_plus}
  /// points = 180
  int get hundredEighty {
    int hundredEighty = 0;
    for (Throw t in throws) {
      if (t.points == 180) {
        hundredEighty++;
      }
    }
    return hundredEighty;
  }

  /**
   * ##############################
   * ########## INTERNAL ##########
   * ##############################
   */

  /// The sum of all points of this leg.
  int get _points => throws.fold(0, (points, t) => points + t.points);

  /// The sum of all thrown darts of this leg.
  int get _dartsThrown =>
      throws.fold(0, (dartsThrown, t) => dartsThrown + t.dartsThrown);

  /// The sum of all darts thrown on double of this leg.
  int get _dartsOnDouble =>
      throws.fold(0, (dartsOnDouble, t) => dartsOnDouble + t.dartsOnDouble);

  /// The points of the last throw of this leg.
  ///
  /// Returns `null` if this leg throws.
  int? get _lastPoints => throws.isNotEmpty ? throws.last.points : null;

  /// Validates this leg.
  ///
  /// Throws an [ArgumentError] if this leg is invalid.
  void _validate() {
    if (startingPoints < 2) {
      throw ArgumentError.value(
        startingPoints,
        'startingPoints',
        'StartingPoints mustn`t be less than 2.',
      );
    }

    if (_points > startingPoints) {
      throw ArgumentError(
        'The sum of all the points of all throws ($_points) '
        'mustn`t be greater than startingPoints (=$startingPoints).',
      );
    }

    if (startingPoints - _points == 1) {
      throw ArgumentError(
        'The sum of all the points of all throws ($_points) '
        'mustn`t be 1 smaller than startingPoints (=$startingPoints).',
      );
    }

    if (startingPoints == _points && throws.last.dartsOnDouble == 0) {
      throw ArgumentError('You cant`t win a leg with 0 dartsOnDouble.');
    }

    int allPoints = 0;
    for (int i = 0; i < throws.length; i++) {
      allPoints += throws[i].points;

      if (startingPoints - allPoints > 50) {
        for (int j = 0; j <= i; j++) {
          if (throws[j].dartsOnDouble != 0) {
            throw ArgumentError(
              'A leg mustn`t have throws with >0 dartsOnDouble if remaining points > 50.',
            );
          }
        }
      }
    }
  }

  @override
  String toString() {
    return 'Leg{startingPoints: $startingPoints, throws: $throws}';
  }
}
