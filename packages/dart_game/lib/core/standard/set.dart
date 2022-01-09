part of '../../dart_game.dart';

// TODO optimize multiple calls to the same getter in a method

class Set {
  final int startingPoints;
  final List<Leg> legs;

  /// Creates a set with given [startingPoints].
  ///
  /// {@template set_constructor_error}
  /// Throws [ArgumentError] if try to create invalid set.
  /// {@endtemplate}
  Set({
    required this.startingPoints,
  }) : legs = [Leg(startingPoints: startingPoints)] {
    _validate();
  }

  /// Creates a set with given [startingPoints] and [legs].
  ///
  /// {@macro set_constructor_error}
  Set.fromData({
    required this.startingPoints,
    required this.legs,
  }) {
    _validate();
  }

  /// Returns `true`if this set is won.
  bool get won => wonLegs == 3;

  /// The amount of won legs of this set.
  int get wonLegs {
    int wonLegs = 0;
    for (Leg leg in legs) {
      if (leg.won) {
        wonLegs++;
      }
    }
    return wonLegs;
  }

  /// The three dart average of this set.
  ///
  /// {@template set_zero_darts_thrown}
  /// Returns `null` if this set has 0 darts thrown.
  /// {@endtemplate}
  double? get average {
    final points = legs.fold<int>(0, (points, leg) => points + leg._points);
    final dartsThrown =
        legs.fold<int>(0, (dartsThrown, leg) => dartsThrown + leg._dartsThrown);

    if (dartsThrown == 0) return null;
    return (3 * points) / dartsThrown;
  }

  /// The checkout percentage of this set.
  ///
  /// Returns `null` if this set has 0 darts thrown on a double.
  double? get checkoutPercentage =>
      _dartsOnDouble != 0 ? wonLegs / _dartsOnDouble : null;

  /// The first nine average of this set.
  ///
  /// {@macro set_zero_darts_thrown}
  double? get firstNineAverage {
    int points = 0;
    int dartsThrown = 0;
    for (Leg leg in legs) {
      int index = 0;
      for (Throw t in leg.throws) {
        points += t.points;
        dartsThrown += t.dartsThrown;
        index++;
        if (index == 3) break;
      }
    }
    if (dartsThrown == 0) return null;
    return (3 * points) / dartsThrown;
  }

  /// The highest finish of this set.
  ///
  /// Returns `null` if this set has 0 won legs.
  int? get highestFinish {
    final List<int> nonNullFinishes = _finishes.whereType<int>().toList();
    if (nonNullFinishes.isEmpty) {
      return null;
    }
    return nonNullFinishes.reduce(max);
  }

  /// The average of the first dart of every throw of this set.
  ///
  /// Returns `null` if this set has 0 throws with 1st dart provided.
  double? get firstDartAverage {
    int amount = 0;
    int points = 0;
    for (Leg leg in legs) {
      for (Throw t in leg.throws) {
        if (t.darts != null) {
          Dart? firstDart = t.darts?[0];
          if (firstDart != null) {
            amount++;
            points += firstDart.points;
          }
        }
      }
    }
    return amount == 0 ? null : points / amount;
  }

  /// The average of the second dart of every throw of this set.
  ///
  /// Returns `null` if this set has 0 throws with 2nd dart provided.
  double? get secondDartAverage {
    int amount = 0;
    int points = 0;
    for (Leg leg in legs) {
      for (Throw t in leg.throws) {
        if (t.darts != null) {
          Dart? secondDart = t.darts?[1];
          if (secondDart != null) {
            amount++;
            points += secondDart.points;
          }
        }
      }
    }
    return amount == 0 ? null : points / amount;
  }

  /// The average of the third dart of every throw of this set.
  ///
  /// Returns `null` if this set has 0 throws with 3rd dart provided.
  double? get thirdDartAverage {
    int amount = 0;
    int points = 0;
    for (Leg leg in legs) {
      for (Throw t in leg.throws) {
        if (t.darts != null) {
          Dart? thirdDart = t.darts?[2];
          if (thirdDart != null) {
            amount++;
            points += thirdDart.points;
          }
        }
      }
    }
    return amount == 0 ? null : points / amount;
  }

  /// {@template set_n_plus}
  /// The amount of throws of this set with
  /// {@endtemplate}
  /// 40 <= points < 60.
  int get fourtyPlus =>
      legs.fold(0, (fourtyPlus, leg) => fourtyPlus + leg.fourtyPlus);

  /// {@macro set_n_plus}
  /// 60 <= points < 80.
  int get sixtyPlus =>
      legs.fold(0, (sixtyPlus, leg) => sixtyPlus + leg.sixtyPlus);

  /// {@macro set_n_plus}
  /// 80 <= points < 100.
  int get eightyPlus =>
      legs.fold(0, (eightyPlus, leg) => eightyPlus + leg.eightyPlus);

  /// {@macro set_n_plus}
  /// 100 <= points < 120.
  int get hundredPlus =>
      legs.fold(0, (hundredPlus, leg) => hundredPlus + leg.hundredPlus);

  /// {@macro set_n_plus}
  /// 120 <= points < 140.
  int get hundredTwentyPlus => legs.fold(
      0, (hundredTwentyPlus, leg) => hundredTwentyPlus + leg.hundredTwentyPlus);

  /// {@macro set_n_plus}
  /// 140 <= points < 160.
  int get hundredFourtyPlus => legs.fold(
      0, (hundredFourtyPlus, leg) => hundredFourtyPlus + leg.hundredFourtyPlus);

  /// {@macro set_n_plus}
  /// 160 <= points < 180.
  int get hundredSixtyPlus => legs.fold(
      0, (hundredSixtyPlus, leg) => hundredSixtyPlus + leg.hundredSixtyPlus);

  /// {@macro set_n_plus}
  /// points = 180.
  int get hundredEighty =>
      legs.fold(0, (hundredEighty, leg) => hundredEighty + leg.hundredEighty);

  /**
   * ##############################
   * ########## INTERNAL ##########
   * ##############################
   */

  /// The sum of all points of this set.
  int get _points => legs.fold(0, (points, leg) => points + leg._points);

  /// The sum of all thrown darts of this set.
  int get _dartsThrown =>
      legs.fold(0, (dartsThrown, leg) => dartsThrown + leg._dartsThrown);

  /// The sum of all darts thrown on double of this set.
  int get _dartsOnDouble =>
      legs.fold(0, (dartsOnDouble, leg) => dartsOnDouble + leg._dartsOnDouble);

  /// The finishes of this set.
  ///
  /// For each won leg this contains the points of the finishing throw.
  /// For each not won leg this contains null.
  List<int?> get _finishes =>
      legs.fold([], (finishes, leg) => finishes + [leg.finish]);

  /// The the points of the last throw of this set.
  ///
  /// {@macro set_zero_darts_thrown}
  int? get _lastPoints {
    final currentLegLastPoints = _currentLeg._lastPoints;
    if (currentLegLastPoints != null) {
      return currentLegLastPoints;
    }
    return _prevLeg != null ? _prevLeg!._lastPoints : null;
  }

  /// The last leg of this set.
  Leg get _currentLeg {
    return legs.last;
  }

  /// The leg before the last leg of this set.
  ///
  /// Returns `null` if this set has <2 legs.
  Leg? get _prevLeg {
    final length = legs.length;
    if (length > 1) {
      return legs[length - 2];
    }
    return null;
  }

  /// Adds a new leg with startingPoints [startingPoints] to [legs].
  ///
  /// Throws [StateError] if this set is won.
  void _addLeg() {
    if (!won) {
      legs.add(Leg(startingPoints: startingPoints));
    } else {
      throw StateError('Can`t add leg to a won set');
    }
  }

  /// Removes the last leg from [legs].
  ///
  /// Throws [RangeError] if [legs] is empty.
  void _removeLeg() {
    legs.removeLast();
  }

  /// Validates this set.
  ///
  /// Throws an [ArgumentError] if this set is invalid.
  void _validate() {
    if (startingPoints < 2) {
      throw ArgumentError.value(
        startingPoints,
        'startingPoints',
        'StartingPoints mustn`t be less than 2.',
      );
    }

    if (legs.isEmpty) {
      throw ArgumentError.value(
        legs,
        'legs',
        'Legs mustn`t be empty.',
      );
    }

    for (Leg leg in legs) {
      if (startingPoints != leg.startingPoints) {
        throw ArgumentError.value(
          legs,
          'legs',
          'Every leg must have the same startingPoints as those of the owning set.',
        );
      }
    }

    if (wonLegs > 3) {
      throw ArgumentError.value(
        wonLegs,
        'wonLegs',
        'A set mustn`t have more than 3 won legs.',
      );
    }
  }

  @override
  String toString() {
    return 'Set{startingPoints: $startingPoints, legs: $legs}';
  }
}
