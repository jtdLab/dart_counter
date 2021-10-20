part of '../../dart_game.dart';

// TODO optimize multiple calls to the same getter in a method

class Player {
  final String id;
  String? name;
  bool? isCurrentTurn;
  Either<List<Leg>, List<Set>>? get legsOrSets => _legsOrSets;

  /// Creates an empty player with given [id] and [name].
  Player({
    String? id,
    this.name,
  }) : id = id ?? Uuid().v4();

  /// Creates a player with given [id], [name], [legsOrSetsNeededToWin], [isCurrentTurn] and [legsOrSets].
  ///
  /// Throws [ArgumentError] if try to create invalid player.
  Player.fromData({
    required this.id,
    this.name,
    int? legsOrSetsNeededToWin,
    this.isCurrentTurn,
    Either<List<Leg>, List<Set>>? legsOrSets,
  })  : _legsOrSetsNeededToWin = legsOrSetsNeededToWin,
        _legsOrSets = legsOrSets {
    _validate();
  }

  /// Returns `true` if this player won.
  ///
  /// {@template player_game_not_started_yet}
  /// Returns `null` if the game this player is part of wasn`t started yet.
  /// {@endtemplate}
  bool? get won => _isPartOfStartedGame
      ? _legsOrSetsNeededToWin ==
          _legsOrSets?.fold(
            (legs) => wonLegsCurrentSet!,
            (sets) => wonSets!,
          )
      : null;

  /// The amount of won sets of this player.
  ///
  /// {@macro player_game_not_started_yet}
  ///
  /// Returns `null` if value of [legsOrSets] is a list of legs.
  int? get wonSets {
    if (_isPartOfStartedGame) {
      return _legsOrSets?.fold(
        (legs) => null,
        (sets) {
          int wonSets = 0;
          for (Set set in sets) {
            if (set.won) {
              wonSets++;
            }
          }
          return wonSets;
        },
      );
    }

    return null;
  }

  /// The amount of
  /// 1. won legs of game if value of [legsOrSets] is a list of legs.
  /// 2. won legs of currentSet if value of [legsOrSets] is a list of sets.
  ///
  /// {@macro player_game_not_started_yet}
  int? get wonLegsCurrentSet => _isPartOfStartedGame
      ? _currentLegOrSet?.fold(
          (_) => _legsOrSets?.swap().toOption().toNullable()?.fold<int>(
                0,
                (wonLegs, leg) => wonLegs + (leg.won ? 1 : 0),
              ),
          (set) => set.wonLegs,
        )
      : null;

  /// The points left to finish the current leg of this player.
  ///
  /// {@macro player_game_not_started_yet}
  int? get pointsLeft => _isPartOfStartedGame
      ? _currentLegOrSet!.fold(
          (leg) => leg.pointsLeft,
          (set) => set._currentLeg.pointsLeft,
        )
      : null;

  /// The points of the last throw of this player.
  ///
  /// {@macro player_game_not_started_yet}
  ///
  /// {@template player_zero_darts_thrown}
  /// Returns `null` if this player has 0 darts thrown.
  /// {@endtemplate}
  int? get lastPoints {
    if (_isPartOfStartedGame) {
      return _currentLegOrSet!.fold(
        (leg) {
          final currentLegLastPoints = leg._lastPoints;
          if (currentLegLastPoints != null) {
            return currentLegLastPoints;
          } else {
            final prevLeg = _prevLegOrSet?.swap().toOption().toNullable();
            if (prevLeg != null) {
              return prevLeg._lastPoints;
            }
          }
        },
        (set) {
          final currentSetLastPoints = set._lastPoints;
          if (currentSetLastPoints != null) {
            return currentSetLastPoints;
          } else {
            final prevSet = _prevLegOrSet?.toOption().toNullable();
            if (prevSet != null) {
              return prevSet._lastPoints;
            }
          }
        },
      );
    }

    return null;
  }

  /// Returns the recommended way to finish [pointsLeft].
  ///
  /// {@macro player_game_not_started_yet}
  ///
  /// Returns `null` if [pointsLeft] is not a finish.
  List<String>? get finishRecommendation => _isPartOfStartedGame
      ? FinishRecommendation.getFor(points: pointsLeft)
      : null;

  /// Returns the dartsThrown of the current leg.
  ///
  /// {@macro player_game_not_started_yet}
  int? get dartsThrownCurrentLeg => _isPartOfStartedGame
      ? _currentLegOrSet!.fold(
          (leg) => leg._dartsThrown,
          (set) => set._currentLeg._dartsThrown,
        )
      : null;

  /// Returns the three dart average of this player.
  ///
  /// {@macro player_game_not_started_yet}
  ///
  /// {@macro player_zero_darts_thrown}
  double? get average => _isPartOfStartedGame
      ? _dartsThrown != 0
          ? (3 * _points!) / _dartsThrown!
          : null
      : null;

  /// Returns the checkout percentage of this player.
  ///
  /// {@macro player_game_not_started_yet}
  ///
  /// Returns `null` if this player has thrown 0 darts on a double.
  double? get checkoutPercentage => _isPartOfStartedGame
      ? _dartsOnDouble != 0
          ? _wonLegs! / _dartsOnDouble!
          : null
      : null;

  /// Returns the first nine average of this player.
  ///
  /// {@macro player_game_not_started_yet}
  ///
  /// {@macro player_zero_darts_thrown}
  double? get firstNineAverage {
    if (_isPartOfStartedGame) {
      int points = 0;
      int dartsThrown = 0;

      _legsOrSets?.fold(
        (legs) {
          for (Leg leg in legs) {
            int index = 0;
            for (Throw t in leg.throws) {
              points += t.points;
              dartsThrown += t.dartsThrown;
              index++;
              if (index == 3) break;
            }
          }
        },
        (sets) {
          for (Set set in sets) {
            for (Leg leg in set.legs) {
              int index = 0;
              for (Throw t in leg.throws) {
                points += t.points;
                dartsThrown += t.dartsThrown;
                index++;
                if (index == 3) break;
              }
            }
          }
        },
      );

      if (dartsThrown == 0) return null;
      return (3 * points) / dartsThrown;
    }

    return null;
  }

  /// Returns the darts thrown of the best won leg of this player.
  ///
  /// {@macro player_game_not_started_yet}
  ///
  /// {@template player_zero_won_legs}
  /// Returns `null` if this player has 0 won legs.
  /// {@endtemplate}
  int? get bestLegDartsThrown {
    if (_isPartOfStartedGame) {
      List<int> dartsThrown = [];

      _legsOrSets?.fold(
        (legs) {
          for (Leg leg in legs) {
            if (leg.won) {
              dartsThrown.add(leg._dartsThrown);
            }
          }
        },
        (sets) {
          for (Set set in sets) {
            for (Leg leg in set.legs) {
              if (leg.won) {
                dartsThrown.add(leg._dartsThrown);
              }
            }
          }
        },
      );

      if (dartsThrown.isEmpty) return null;
      return dartsThrown.reduce(min);
    }

    return null;
  }

  /// Returns the average of the best won leg of this player.
  ///
  /// {@macro player_game_not_started_yet}
  ///
  /// {@macro player_zero_won_legs}
  double? get bestLegAverage {
    if (_isPartOfStartedGame) {
      List<double> averages = [];

      _legsOrSets?.fold(
        (legs) {
          for (Leg leg in legs) {
            if (leg.won) {
              averages.add(leg.average!);
            }
          }
        },
        (sets) {
          for (Set set in sets) {
            for (Leg leg in set.legs) {
              if (leg.won) {
                averages.add(leg.average!);
              }
            }
          }
        },
      );

      if (averages.isEmpty) return null;
      return averages.reduce(max);
    }

    return null;
  }

  /// Returns the average of the worst won leg of this player.
  ///
  /// {@macro player_game_not_started_yet}
  ///
  /// {@macro player_zero_won_legs}
  int? get worstLegDartsThrown {
    if (_isPartOfStartedGame) {
      List<int> dartsThrown = [];

      _legsOrSets?.fold(
        (legs) {
          for (Leg leg in legs) {
            if (leg.won) {
              dartsThrown.add(leg._dartsThrown);
            }
          }
        },
        (sets) {
          for (Set set in sets) {
            for (Leg leg in set.legs) {
              if (leg.won) {
                dartsThrown.add(leg._dartsThrown);
              }
            }
          }
        },
      );

      if (dartsThrown.isEmpty) return null;
      return dartsThrown.reduce(max);
    }

    return null;
  }

  /// Returns the average of the worst won leg of this player.
  ///
  /// {@macro player_game_not_started_yet}
  ///
  /// {@macro player_zero_won_legs}
  double? get worstLegAverage {
    if (_isPartOfStartedGame) {
      List<double> averages = [];

      _legsOrSets?.fold(
        (legs) {
          for (Leg leg in legs) {
            if (leg.won) {
              averages.add(leg.average!);
            }
          }
        },
        (sets) {
          for (Set set in sets) {
            for (Leg leg in set.legs) {
              if (leg.won) {
                averages.add(leg.average!);
              }
            }
          }
        },
      );

      if (averages.isEmpty) return null;
      return averages.reduce(min);
    }

    return null;
  }

  /// Returns the average amount of darts thrown in a won leg of this player.
  ///
  /// {@macro player_game_not_started_yet}
  ///
  /// {@macro player_zero_won_legs}
  double? get averageDartsPerLeg {
    if (_isPartOfStartedGame) {
      int dartsThrownInWonLegs = 0;

      _legsOrSets?.fold(
        (legs) {
          for (Leg leg in legs) {
            if (leg.won) {
              dartsThrownInWonLegs += leg._dartsThrown;
            }
          }
        },
        (sets) {
          for (Set set in sets) {
            for (Leg leg in set.legs) {
              if (leg.won) {
                dartsThrownInWonLegs += leg._dartsThrown;
              }
            }
          }
        },
      );

      if (_wonLegs == 0) return null;
      return dartsThrownInWonLegs / _wonLegs!;
    }

    return null;
  }

  /// Returns the highest finish of this player.
  ///
  /// {@macro player_game_not_started_yet}
  ///
  /// {@macro player_zero_won_legs}
  int? get highestFinish {
    if (_isPartOfStartedGame) {
      final List<int> nonNullFinishes = _finishes!.whereType<int>().toList();
      if (nonNullFinishes.isEmpty) {
        return null;
      }
      return nonNullFinishes.reduce(max);
    }

    return null;
  }

  /// The average of the first dart of every throw of this player.
  ///
  /// {@macro player_game_not_started_yet}
  ///
  /// Returns null if this player has 0 throws with 1st dart provided.
  double? get firstDartAverage {
    int amount = 0;
    int points = 0;

    _legsOrSets?.fold(
      (legs) {
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
      },
      (sets) {
        for (Set set in sets) {
          for (Leg leg in set.legs) {
            for (Throw t in leg.throws) {
              if (t.darts != null) {
                Dart? firstDart;
                try {
                  firstDart = t.darts?[0];
                } on RangeError {}
                if (firstDart != null) {
                  amount++;
                  points += firstDart.points;
                }
              }
            }
          }
        }
      },
    );

    return amount == 0 ? null : points / amount;
  }

  /// The average of the second dart of every throw of this player.
  ///
  /// {@macro player_game_not_started_yet}
  ///
  /// Returns null if this player has 0 throws with 2nd dart provided.
  double? get secondDartAverage {
    int amount = 0;
    int points = 0;

    _legsOrSets?.fold(
      (legs) {
        for (Leg leg in legs) {
          for (Throw t in leg.throws) {
            if (t.darts != null) {
              Dart? secondDart;
              try {
                secondDart = t.darts?[1];
              } on RangeError {}
              if (secondDart != null) {
                amount++;
                points += secondDart.points;
              }
            }
          }
        }
      },
      (sets) {
        for (Set set in sets) {
          for (Leg leg in set.legs) {
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
        }
      },
    );

    return amount == 0 ? null : points / amount;
  }

  /// The average of the third dart of every throw of this player.
  ///
  /// {@macro player_game_not_started_yet}
  ///
  /// Returns null if this player has 0 throws with 3rd dart provided.
  double? get thirdDartAverage {
    int amount = 0;
    int points = 0;

    _legsOrSets?.fold(
      (legs) {
        for (Leg leg in legs) {
          for (Throw t in leg.throws) {
            if (t.darts != null) {
              Dart? thirdDart;
              try {
                thirdDart = t.darts?[2];
              } on RangeError {}
              if (thirdDart != null) {
                amount++;
                points += thirdDart.points;
              }
            }
          }
        }
      },
      (sets) {
        for (Set set in sets) {
          for (Leg leg in set.legs) {
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
        }
      },
    );

    return amount == 0 ? null : points / amount;
  }

  /// {@template player_n_plus}
  /// The amount of throws of this player with
  /// {@endtemplate}
  /// 40 <= points < 60.
  ///
  /// {@macro player_game_not_started_yet}
  int? get fourtyPlus => _isPartOfStartedGame
      ? _legsOrSets?.fold(
          (legs) => legs.fold<int>(
            0,
            (fourtyPlus, leg) => fourtyPlus + leg.fourtyPlus,
          ),
          (sets) => sets.fold<int>(
            0,
            (fourtyPlus, set) => fourtyPlus + set.fourtyPlus,
          ),
        )
      : null;

  /// {@template player_n_plus}
  /// The amount of throws of this player with
  /// {@endtemplate}
  /// 60 <= points < 80.
  ///
  /// {@macro player_game_not_started_yet}
  int? get sixtyPlus => _isPartOfStartedGame
      ? _legsOrSets?.fold(
          (legs) => legs.fold<int>(
            0,
            (sixtyPlus, leg) => sixtyPlus + leg.sixtyPlus,
          ),
          (sets) => sets.fold<int>(
            0,
            (sixtyPlus, set) => sixtyPlus + set.sixtyPlus,
          ),
        )
      : null;

  /// {@template player_n_plus}
  /// The amount of throws of this player with
  /// {@endtemplate}
  /// 80 <= points < 100.
  ///
  /// {@macro player_game_not_started_yet}
  int? get eightyPlus => _isPartOfStartedGame
      ? _legsOrSets?.fold(
          (legs) => legs.fold<int>(
            0,
            (eightyPlus, leg) => eightyPlus + leg.eightyPlus,
          ),
          (sets) => sets.fold<int>(
            0,
            (eightyPlus, set) => eightyPlus + set.eightyPlus,
          ),
        )
      : null;

  /// {@template player_n_plus}
  /// The amount of throws of this player with
  /// {@endtemplate}
  /// 100 <= points < 120.
  ///
  /// {@macro player_game_not_started_yet}
  int? get hundredPlus => _isPartOfStartedGame
      ? _legsOrSets?.fold(
          (legs) => legs.fold<int>(
            0,
            (hundredPlus, leg) => hundredPlus + leg.hundredPlus,
          ),
          (sets) => sets.fold<int>(
            0,
            (hundredPlus, set) => hundredPlus + set.hundredPlus,
          ),
        )
      : null;

  /// {@template player_n_plus}
  /// The amount of throws of this player with
  /// {@endtemplate}
  /// 120 <= points < 140.
  ///
  /// {@macro player_game_not_started_yet}
  int? get hundredTwentyPlus => _isPartOfStartedGame
      ? _legsOrSets?.fold(
          (legs) => legs.fold<int>(
            0,
            (hundredTwentyPlus, leg) =>
                hundredTwentyPlus + leg.hundredTwentyPlus,
          ),
          (sets) => sets.fold<int>(
            0,
            (hundredTwentyPlus, set) =>
                hundredTwentyPlus + set.hundredTwentyPlus,
          ),
        )
      : null;

  /// {@template player_n_plus}
  /// The amount of throws of this player with
  /// {@endtemplate}
  /// 140 <= points < 160.
  ///
  /// {@macro player_game_not_started_yet}
  int? get hundredFourtyPlus => _isPartOfStartedGame
      ? _legsOrSets?.fold(
          (legs) => legs.fold<int>(
            0,
            (hundredFourtyPlus, leg) =>
                hundredFourtyPlus + leg.hundredFourtyPlus,
          ),
          (sets) => sets.fold<int>(
            0,
            (hundredFourtyPlus, set) =>
                hundredFourtyPlus + set.hundredFourtyPlus,
          ),
        )
      : null;

  /// {@template player_n_plus}
  /// The amount of throws of this player with
  /// {@endtemplate}
  /// 160 <= points < 180.
  ///
  /// {@macro player_game_not_started_yet}
  int? get hundredSixtyPlus => _isPartOfStartedGame
      ? _legsOrSets?.fold(
          (legs) => legs.fold<int>(
            0,
            (hundredSixtyPlus, leg) => hundredSixtyPlus + leg.hundredSixtyPlus,
          ),
          (sets) => sets.fold<int>(
            0,
            (hundredSixtyPlus, set) => hundredSixtyPlus + set.hundredSixtyPlus,
          ),
        )
      : null;

  /// {@template player_n_plus}
  /// The amount of throws of this player with
  /// {@endtemplate}
  /// points = 180.
  ///
  /// {@macro player_game_not_started_yet}
  int? get hundredEighty => _isPartOfStartedGame
      ? _legsOrSets?.fold(
          (legs) => legs.fold<int>(
            0,
            (hundredEighty, leg) => hundredEighty + leg.hundredEighty,
          ),
          (sets) => sets.fold<int>(
            0,
            (hundredEighty, set) => hundredEighty + set.hundredEighty,
          ),
        )
      : null;

  /**
   * ##############################
   * ########## INTERNAL ##########
   * ##############################
   */

  /// The legs or set this player needs to win the game.
  int? _legsOrSetsNeededToWin;

  /// The legs or sets of this player.
  Either<List<Leg>, List<Set>>? _legsOrSets;

  /// The sum of all won legs of this player.
  ///
  /// {@macro player_game_not_started_yet}
  int? get _wonLegs => _isPartOfStartedGame
      ? _legsOrSets?.fold(
          (legs) => legs.fold<int>(
            0,
            (wonLegs, leg) => wonLegs + (leg.won ? 1 : 0),
          ),
          (sets) => sets.fold<int>(
            0,
            (wonLegs, set) => wonLegs + set.wonLegs,
          ),
        )
      : null;

  /// The sum of all points of this player.
  ///
  /// {@macro player_game_not_started_yet}
  int? get _points => _isPartOfStartedGame
      ? _legsOrSets?.fold(
          (legs) => legs.fold<int>(
            0,
            (points, leg) => points + leg._points,
          ),
          (sets) => sets.fold<int>(
            0,
            (points, set) => points + set._points,
          ),
        )
      : null;

  /// The sum of all thrown darts of this player.
  ///
  /// {@macro player_game_not_started_yet}
  int? get _dartsThrown => _isPartOfStartedGame
      ? _legsOrSets?.fold(
          (legs) => legs.fold<int>(
            0,
            (dartsThrown, leg) => dartsThrown + leg._dartsThrown,
          ),
          (sets) => sets.fold<int>(
            0,
            (dartsThrown, set) => dartsThrown + set._dartsThrown,
          ),
        )
      : null;

  /// The sum of all darts thrown on double of this player.
  ///
  /// {@macro player_game_not_started_yet}
  int? get _dartsOnDouble => _isPartOfStartedGame
      ? _legsOrSets?.fold(
          (legs) => legs.fold<int>(
            0,
            (dartsOnDouble, leg) => dartsOnDouble + leg._dartsOnDouble,
          ),
          (sets) => sets.fold<int>(
            0,
            (dartsOnDouble, set) => dartsOnDouble + set._dartsOnDouble,
          ),
        )
      : null;

  /// The finishes of this player.
  ///
  /// For each won leg this contains the points of the finishing throw.
  /// For each not won leg this contains null.
  ///
  /// {@macro player_game_not_started_yet}
  List<int?>? get _finishes => _isPartOfStartedGame
      ? _legsOrSets?.fold(
          (legs) => legs.fold<List<int?>>(
            [],
            (finishes, leg) => finishes + [leg.finish],
          ),
          (sets) => sets.fold<List<int?>>(
            [],
            (finishes, set) => finishes + set._finishes,
          ),
        )
      : null;

  /// The last leg or set of this player.
  ///
  /// {@macro player_game_not_started_yet}
  Either<Leg, Set>? get _currentLegOrSet => _isPartOfStartedGame
      ? _legsOrSets?.fold(
          (legs) => left(legs.last),
          (sets) => right(sets.last),
        )
      : null;

  /// The leg or set before the last leg or set of this player.
  ///
  /// {@macro player_game_not_started_yet}
  ///
  /// Returns `null` if has <2 legs or sets.
  Either<Leg, Set>? get _prevLegOrSet {
    if (_isPartOfStartedGame) {
      final length = _legsOrSets!.fold(
        (legs) => legs.length,
        (sets) => sets.length,
      );

      return length > 1
          ? _legsOrSets?.fold(
              (legs) => left(legs[length - 2]),
              (sets) => right(sets[length - 2]),
            )
          : null;
    }

    return null;
  }

  /// Removes the last leg or set from [legsOrSets].
  ///
  /// Throws [RangeError] if the value of [legsOrSets] is empty.
  void _removeLegOrSet() {
    _legsOrSets?.fold((legs) => legs.removeLast(), (sets) => sets.removeLast());
  }

  /// Validates this player.
  ///
  /// Throws an [ArgumentError] if this player is invalid.
  void _validate() {
    final allNull = _legsOrSetsNeededToWin == null &&
        legsOrSets == null &&
        isCurrentTurn == null;
    final allNotNull = _legsOrSetsNeededToWin != null &&
        legsOrSets != null &&
        isCurrentTurn != null;

    if (!(allNull || allNotNull)) {
      throw ArgumentError(
        'LegsOrSetsNeededTowin, LegsOrSets and isCurrentTurn must be all null or all not null',
      );
    }

    final legsOrSetsEmpty = _legsOrSets?.fold(
          (legs) => legs.isEmpty,
          (sets) => sets.isEmpty,
        ) ??
        false;

    if (legsOrSetsEmpty) {
      throw ArgumentError(
        'LegsOrSets mustn`t contain an empty list.',
      );
    }

    if (_legsOrSetsNeededToWin != null && _legsOrSetsNeededToWin! < 1) {
      throw ArgumentError.value(
        _legsOrSetsNeededToWin,
        'legsOrSetsNeededToWin',
        'The value of legsOrSetsNeededToWin mustn`t be less than 1.',
      );
    }

    _legsOrSets?.fold(
      (legs) {
        final allStartingPointsEqual =
            legs.map((leg) => leg.startingPoints).toSet().length == 1;

        if (!allStartingPointsEqual) {
          throw ArgumentError(
            'The starting points of all legs must be equal.',
          );
        }

        if (wonLegsCurrentSet != null &&
            _legsOrSetsNeededToWin != null &&
            wonLegsCurrentSet! > _legsOrSetsNeededToWin!) {
          throw ArgumentError(
            'The amount of won legs (=$wonLegsCurrentSet) mustn`t be greater '
            'than legsNeededToWin (=$_legsOrSetsNeededToWin).',
          );
        }
      },
      (sets) {
        final allStartingPointsEqual =
            sets.map((set) => set.startingPoints).toSet().length == 1;

        if (!allStartingPointsEqual) {
          throw ArgumentError(
            'The starting points of all sets must be equal.',
          );
        }

        if (wonSets != null &&
            _legsOrSetsNeededToWin != null &&
            wonSets! > _legsOrSetsNeededToWin!) {
          throw ArgumentError(
            'The amount of won sets (=$wonSets) mustn`t be greater than '
            'legsOrSetsNeededToWin (=$_legsOrSetsNeededToWin).',
          );
        }
      },
    );
  }

  /// Returns true if the [Game] this player is part of was started.   .
  bool get _isPartOfStartedGame =>
      _legsOrSetsNeededToWin != null &&
      isCurrentTurn != null &&
      _legsOrSets != null;

  @override
  String toString() {
    return 'Player{id: $id, name: $name, won: $won, isCurrentTurn: $isCurrentTurn, wonSets: $wonSets, '
        'wonLegsCurrentSet: $wonLegsCurrentSet, pointsLeft: $pointsLeft, lastPoints: $lastPoints, '
        'finishRecommendation: $finishRecommendation, dartsThrownCurrentLeg: $dartsThrownCurrentLeg, '
        'average: $average, checkoutPercentage: $checkoutPercentage}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Player && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
