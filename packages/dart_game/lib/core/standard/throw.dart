part of '../../dart_game.dart';

class Throw {
  late final int points;
  late final int dartsThrown;
  final int dartsOnDouble;
  final List<Dart>? darts;

  /// Creates a throw with given [points].
  ///
  /// {@template throw_constructor_error}
  /// Throws [ArgumentError] if try to create invalid throw.
  /// {@endtemplate}
  Throw({
    required this.points,
    this.dartsThrown = 3,
    this.dartsOnDouble = 0,
  }) : darts = null {
    _validate();
  }

  /// Creates a throw with given [darts] and [dartsOnDouble].
  ///
  /// {@macro throw_constructor_error}
  Throw.fromDarts({
    required List<Dart> darts,
    this.dartsOnDouble = 0,
  }) : darts = darts {
    points = darts.fold(0, (points, dart) => points + dart.points);
    dartsThrown = darts.length;
    _validate();
  }

  /// Creates a throw with given [pointsOrDarts], [dartsOnDouble], [dartsThrown].
  ///
  /// {@macro throw_constructor_error}Ì
  ///
  /// **NOTICE**: If [pointsOrDarts] are darts [dartsThrown] are ignored
  /// and recalculated based on darts.
  factory Throw.fromData({
    required Either<int, List<Dart>> pointsOrDarts,
    int dartsThrown = 3,
    int dartsOnDouble = 0,
  }) {
    return pointsOrDarts.fold(
      (points) => Throw(
        points: points,
        dartsThrown: dartsThrown,
        dartsOnDouble: dartsOnDouble,
      ),
      (darts) => Throw.fromDarts(darts: darts, dartsOnDouble: dartsOnDouble),
    );
  }

  /**
   * ##############################
   * ########## INTERNAL ##########
   * ##############################
   */

  /// Validates this throw.
  ///
  /// Throws an [ArgumentError] if this throw is invalid.
  void _validate() {
    if (points < 0) {
      throw ArgumentError.value(
        points,
        'points',
        'Points mustn`t be less than 0.',
      );
    }

    if (points > 180) {
      throw ArgumentError.value(
        points,
        'points',
        'Points mustn`t be greater than 180.',
      );
    }

    if (dartsThrown < 1) {
      throw ArgumentError.value(
        dartsThrown,
        'dartsThrown',
        'DartsThrown mustn`t be less than 1.',
      );
    }

    if (dartsThrown > 3) {
      throw ArgumentError.value(
        dartsThrown,
        'dartsThrown',
        'DartsThrown mustn`t be greater than 3.',
      );
    }

    if (dartsOnDouble < 0) {
      throw ArgumentError.value(
        dartsOnDouble,
        'dartsOnDouble',
        'DartsOnDouble mustn`t be less than 0.',
      );
    }

    if (dartsOnDouble > 3) {
      throw ArgumentError.value(
        dartsOnDouble,
        'dartsOnDouble',
        'DartsOnDouble mustn`t be greater than 3.',
      );
    }

    if (dartsOnDouble > dartsThrown) {
      throw ArgumentError.value(
        dartsOnDouble,
        'dartsOnDouble',
        'DartsOnDouble mustn`t be greater than dartsThrown (=$dartsThrown).',
      );
    }

    if (dartsThrown < 3 && dartsOnDouble == 0) {
      throw ArgumentError.value(
        dartsOnDouble,
        'dartsOnDouble',
        'DartsOnDouble mustn`t be 0 if dartsThrown is not 3.',
      );
    }

    final darts = this.darts;
    if (darts != null) {
      int maxPossibleDartsOnDouble = 0;
      for (Dart dart in darts.reversed) {
        if (dart.type == DartType.d) {
          maxPossibleDartsOnDouble += 1;
        } else {
          break;
        }
      }

      if (dartsOnDouble > maxPossibleDartsOnDouble) {
        throw ArgumentError.value(
          dartsOnDouble,
          'dartsOnDouble',
          'DartsOnDouble=$dartsOnDouble is impossible with darts=$darts.',
        );
      }
    }

    if (dartsThrown == 1) {
      if (dartsOnDouble == 1) {
        if (points > 50) {
          throw ArgumentError(
            'Invalid points (=$points), dartsThrown (=$dartsThrown) '
            'and dartsOnDouble (=$dartsOnDouble) combination.',
          );
        }

        final possiblePoints = [
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
        if (!possiblePoints.contains(points)) {
          throw ArgumentError(
            'Invalid points (=$points), dartsThrown (=$dartsThrown) '
            'and dartsOnDouble (=$dartsOnDouble) combination.',
          );
        }
      }
    } else if (dartsThrown == 2) {
      if (dartsOnDouble == 1) {
        if (points > 110) {
          throw ArgumentError(
            'Invalid points (=$points), dartsThrown (=$dartsThrown) '
            'and dartsOnDouble (=$dartsOnDouble) combination.',
          );
        }
        final notPossiblePoints = [
          0,
          1,
          99,
          102,
          103,
          105,
          106,
          108,
          109,
        ];
        if (notPossiblePoints.contains(points)) {
          throw ArgumentError(
            'Invalid points (=$points), dartsThrown (=$dartsThrown) '
            'and dartsOnDouble (=$dartsOnDouble) combination.',
          );
        }
      } else {
        if (points > 50) {
          throw ArgumentError(
            'Invalid points (=$points), dartsThrown (=$dartsThrown) '
            'and dartsOnDouble (=$dartsOnDouble) combination.',
          );
        }
        final possiblePoints = [
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
        if (!possiblePoints.contains(points)) {
          throw ArgumentError(
            'Invalid points (=$points), dartsThrown (=$dartsThrown) '
            'and dartsOnDouble (=$dartsOnDouble) combination.',
          );
        }
      }
    } else {
      if (dartsOnDouble == 0) {
        final notPossiblePoints = [
          163,
          166,
          169,
          172,
          173,
          175,
          176,
          178,
          179,
        ];
        if (notPossiblePoints.contains(points)) {
          throw ArgumentError(
            'Invalid points (=$points), dartsThrown (=$dartsThrown) '
            'and dartsOnDouble (=$dartsOnDouble) combination.',
          );
        }
      } else if (dartsOnDouble == 1) {
        if (points > 170) {
          throw ArgumentError(
            'Invalid points (=$points), dartsThrown (=$dartsThrown) '
            'and dartsOnDouble (=$dartsOnDouble) combination.',
          );
        }
        final notPossiblePoints = [
          159,
          162,
          163,
          165,
          166,
          168,
          169,
        ];
        if (notPossiblePoints.contains(points)) {
          throw ArgumentError(
            'Invalid points (=$points), dartsThrown (=$dartsThrown) '
            'and dartsOnDouble (=$dartsOnDouble) combination.',
          );
        }
      } else if (dartsOnDouble == 2) {
        if (points > 110 || points == 109) {
          throw ArgumentError(
            'Invalid points (=$points), dartsThrown (=$dartsThrown) '
            'and dartsOnDouble (=$dartsOnDouble) combination.',
          );
        }
      } else {
        if (points > 50 || points == 49) {
          throw ArgumentError(
            'Invalid points (=$points), dartsThrown (=$dartsThrown) '
            'and dartsOnDouble (=$dartsOnDouble) combination.',
          );
        }
      }
    }
  }

  @override
  String toString() {
    return 'Throw{points: $points, dartsThrown: $dartsThrown, dartsOnDouble: $dartsOnDouble, darts: $darts}';
  }
}
