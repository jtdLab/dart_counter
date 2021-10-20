part of '../../dart_game.dart';

// TODO optimize multiple calls to the same getter in a method
// TODO only use private of other lib members or only us public props of other lib members but not mixed

/// The mode of a [Game]
enum Mode { bestOf, firstTo }

/// The status of a [Game]
enum Status { pending, canceled, running, finished }

/// The type of a [Game]
enum Type { legs, sets }

class Game {
  Status get status => _status;
  int get startingPoints => _startingPoints;
  Mode get mode => _mode;
  int get size => _size;
  Type get type => _type;
  final List<Player> players;

  /// Creates a game with given [ownerName], [startingPoints], [mode], [size] and [type].
  ///
  /// Throws [ArgumentError] if try to create invalid game.
  Game({
    String? ownerName,
    int startingPoints = 301,
    Mode mode = Mode.firstTo,
    int size = 1,
    Type type = Type.legs,
  })  : _status = Status.pending,
        _startingPoints = startingPoints,
        _mode = mode,
        _size = size,
        _type = type,
        players = [] {
    addPlayer(name: ownerName);
    _validate();
  }

  /// Creates a game with given [status], [startingPoints], [mode], [size], [type],
  /// [players], [turnIndex], [startSetIndex] and [startLegIndex].
  ///
  /// Throws [ArgumentError] if try to create invalid game.
  Game.fromData({
    required Status status,
    required int startingPoints,
    required Mode mode,
    required int size,
    required Type type,
    required this.players,
  })  : _status = status,
        _startingPoints = startingPoints,
        _mode = mode,
        _size = size,
        _type = type {
    _validate();
    _startSetIndex = _calcStartSetIndex();
    _startLegIndex = _calcStartLegIndex();
    _turnIndex = _calcTurnIndex();
  }

  /// Adds a player with [name] to this game if pending and not full.
  ///
  /// If no [name] provided the player gets a generic name `'player n'`.
  /// This means the first player with no provided name gets the name `'player 1'`
  /// the second gets the name `'player 2'`.
  ///
  /// Returns `true` if added.
  bool addPlayer({
    String? id,
    String? name,
  }) {
    if (status == Status.pending) {
      if (players.length < 4) {
        players.add(
          Player(
            id: id,
            name: name,
          ),
        );

        return true;
      }
    }

    return false;
  }

  /// Removes a player at [index] from a this game if pending and enough players remain.
  ///
  /// Returns `true` if removed.
  bool removePlayer({
    required int index,
  }) {
    if (status == Status.pending) {
      if (players.length > 1 && !_hasDartBot ||
          players.length > 2 && _hasDartBot) {
        players.removeAt(index);

        return true;
      }
    }

    return false;
  }

  /// Changes position of player at [oldIndex] to [newIndex] of this game if pending.
  ///
  /// Returns `true` if reordered.
  bool reorderPlayer({
    required int oldIndex,
    required int newIndex,
  }) {
    if (oldIndex == newIndex) {
      return false;
    }

    if (oldIndex < 0) {
      return false;
    }

    if (newIndex < 0) {
      return false;
    }

    if (oldIndex > players.length - 1) {
      return false;
    }

    if (newIndex > players.length - 1) {
      return false;
    }

    if (status == Status.pending) {
      Player player = players.removeAt(oldIndex);
      players.insert(newIndex, player);

      return true;
    }

    return false;
  }

  /// Adds a dartBot to this game if doesnt have a darbot already and pending and not full.
  ///
  /// Returns `true` if added.
  bool addDartBot() {
    if (status == Status.pending) {
      if (!_hasDartBot && players.length < 4) {
        players.add(DartBot());

        return true;
      }
    }

    return false;
  }

  /// Removes a dartBot from a this game if pending and has dartBot.
  ///
  /// Returns `true` if removed.
  bool removeDartBot() {
    if (status == Status.pending) {
      if (_hasDartBot) {
        players.removeAt(_dartBotIndex);

        return true;
      }
    }

    return false;
  }

  /// Starts this game and initializes the [players].
  ///
  /// Returns `true` if started.
  bool start() {
    if (status == Status.pending) {
      _status = Status.running;

      if (type == Type.sets) {
        _startSetIndex = 0;
      }
      _startLegIndex = 0;
      _turnIndex = 0;

      for (Player player in players) {
        if (type == Type.legs) {
          player._legsOrSets = left(
            <Leg>[
              Leg(startingPoints: startingPoints),
            ],
          );
        } else {
          player._legsOrSets = right(
            <Set>[
              Set(startingPoints: startingPoints),
            ],
          );
        }
        player._legsOrSetsNeededToWin =
            mode == Mode.firstTo ? size : (size / 2).round();
        player.isCurrentTurn = false;
      }

      final player = players[0];
      if (player is DartBot) {
        performThrow(
          t: ThrowGenerator.generate(
            startingPoints: startingPoints,
            targetAverage: player.targetAverage,
            pointsLeft: player.pointsLeft!,
            dartsThrown: player._dartsThrown!,
            average: player.average ?? 0,
          ),
        );
      }
      player.isCurrentTurn = true;
      return true;
    }

    return false;
  }

  /// Cancels this game if its pending or running.
  ///
  /// Returns `true` if canceled.
  bool cancel() {
    if (status == Status.pending || status == Status.running) {
      _status = Status.canceled;

      return true;
    }

    return false;
  }

  /// Performs [t] on this game.
  ///
  /// Returns `true` if [t] was valid and throw was performed successfully.
  bool performThrow({
    required Throw t,
  }) {
    if (status == Status.running) {
      if (DartUtils.validateThrow(
        pointsLeft: _currentTurn!.pointsLeft!,
        t: t,
      )) {
        final currentTurn = _currentTurn!;

        // add throw to currentTurns currentLeg
        currentTurn._currentLegOrSet!.fold(
          (leg) => leg.throws.add(t),
          (set) => set._currentLeg.throws.add(t),
        );

        if (currentTurn.won!) {
          // game finished
          _status = Status.finished;
        } else {
          // create new legs, sets if needed
          _currentTurn!._currentLegOrSet!.fold(
            (leg) {
              if (leg.won) {
                for (Player player in players) {
                  // add new leg
                  player._legsOrSets!.swap().toOption().toNullable()!.add(
                        Leg(startingPoints: startingPoints),
                      );
                }
                // update indices
                _startLegIndex = (_startLegIndex! + 1) % players.length;
                _turnIndex = _startLegIndex;
              } else {
                // won nothing
                // update index
                _turnIndex = (_turnIndex! + 1) % players.length;
              }
            },
            (set) {
              if (set.won) {
                for (Player player in players) {
                  // add new set
                  player._legsOrSets!.toOption().toNullable()!.add(
                        Set(startingPoints: startingPoints),
                      );
                }
                // update indices
                _startSetIndex = (_startSetIndex! + 1) % players.length;
                _startLegIndex = _startSetIndex;
                _turnIndex = _startSetIndex;
              } else if (set._currentLeg.won) {
                for (Player player in players) {
                  // add new leg
                  player._currentLegOrSet!.toOption().toNullable()!._addLeg();
                }
                // update indices
                _startLegIndex = (_startLegIndex! + 1) % players.length;
                _turnIndex = _startLegIndex;
              } else {
                // won nothing
                // update index
                _turnIndex = (_turnIndex! + 1) % players.length;
              }
            },
          );

          if (_turnIndex == _dartBotIndex) {
            // perform dartbot throw
            final dartBot = _currentTurn as DartBot;
            performThrow(
              t: ThrowGenerator.generate(
                startingPoints: startingPoints,
                targetAverage: dartBot.targetAverage,
                pointsLeft: dartBot.pointsLeft!,
                dartsThrown: dartBot._dartsThrown!,
                average: dartBot.average ?? 0,
              ),
            );
          }
        }

        // update isCurrentTurn of all players of this game
        for (int i = 0; i < this.players.length; i++) {
          players[i].isCurrentTurn = _turnIndex == i;
        }

        return true;
      }
    }

    return false;
  }

  /// Undoes the last throw of this game.
  ///
  /// Returns `true` if undone.
  bool undoThrow() {
    if (status == Status.running) {
      // remove leg or set if needed and update indices to previous turn
      // (which is the player who performed the last throw)
      if (type == Type.legs) {
        if (_noThrowsPerformedGame) {
          // no throws performed in this game => do nothing
          return false;
        } else if (_noThrowsPerformedLeg) {
          // no throws performed in leg
          // remove leg
          for (Player player in players) {
            player._legsOrSets!.swap().toOption().toNullable()!.removeLast();
          }

          // update indices to previous turn
          _startLegIndex = (_currentTurn!.legsOrSets!
                      .swap()
                      .toOption()
                      .toNullable()!
                      .length -
                  1) %
              players.length;

          for (int i = 0; i < players.length; i++) {
            if (players[i]
                ._currentLegOrSet!
                .swap()
                .toOption()
                .toNullable()!
                .won) {
              _turnIndex = i;
              break;
            }
          }
        } else {
          // normal throw
          // update index to previous turn
          _turnIndex = (_turnIndex! - 1) % players.length;
        }
      } else {
        if (_noThrowsPerformedGame) {
          // no throws performed in this game => do nothing
          return false;
        } else if (_noThrowsPerformedSet) {
          // no throws performed in set
          // remove set
          for (Player player in players) {
            player._removeLegOrSet();
          }

          // update indices to previous turn
          _startSetIndex = (_startSetIndex! - 1) % players.length;
          _startLegIndex = (_startSetIndex! +
                  _currentTurn!._currentLegOrSet!
                      .toOption()
                      .toNullable()!
                      .legs
                      .length -
                  1) %
              players.length;

          for (int i = 0; i < players.length; i++) {
            if (players[i]
                ._currentLegOrSet!
                .toOption()
                .toNullable()!
                ._currentLeg
                .won) {
              _turnIndex = i;
              break;
            }
          }
        } else if (_noThrowsPerformedLeg) {
          // no throws performed in leg
          // remove leg
          for (Player player in players) {
            player._currentLegOrSet!.toOption().toNullable()!._removeLeg();
          }

          // update indices to previous turn
          _startLegIndex = (_startSetIndex! +
                  _currentTurn!._currentLegOrSet!
                      .toOption()
                      .toNullable()!
                      .legs
                      .length -
                  1) %
              players.length;

          for (int i = 0; i < players.length; i++) {
            if (players[i]
                ._currentLegOrSet!
                .toOption()
                .toNullable()!
                ._currentLeg
                .won) {
              _turnIndex = i;
              break;
            }
          }
        } else {
          // normal throw
          // update index to previous turn
          _turnIndex = (_turnIndex! - 1) % players.length;
        }
      }

      // remove throw of currentTurn which is now previous turn
      _currentTurn!._currentLegOrSet!.fold(
        (leg) => leg.throws.removeLast(),
        (set) => set._currentLeg.throws.removeLast(),
      );

      // update isCurrentTurn of all players of this game
      for (int i = 0; i < this.players.length; i++) {
        players[i].isCurrentTurn = _turnIndex == i;
      }

      // remove one more throw if the removed throw was from dartbot
      if (_turnIndex == _dartBotIndex) {
        undoThrow();
      }

      return true;
    }

    return false;
  }

  /// Updates the targetAverage of the dartBot of this game if pending and has as dartbot.
  set dartBotTargetAverage(int targetAverage) {
    if (!(targetAverage < 10 || targetAverage > 150)) {
      if (status == Status.pending) {
        if (_hasDartBot) {
          (players[_dartBotIndex] as DartBot).targetAverage = targetAverage;
        }
      }
    }
  }

  /// Updates the startingPoints of this game if pending.
  set startingPoints(int startingPoints) {
    if (startingPoints > 1) {
      if (status == Status.pending) {
        _startingPoints = startingPoints;
      }
    }
  }

  /// Updates the mode of this game if pending.
  set mode(Mode mode) {
    if (status == Status.pending) {
      _mode = mode;
    }
  }

  /// Updates the size of this game if pending.
  set size(int size) {
    if (size > 0) {
      if (status == Status.pending) {
        _size = size;
      }
    }
  }

  /// Updates the type of this game if pending.
  set type(Type type) {
    if (status == Status.pending) {
      _type = type;
    }
  }

  /**
   * ##############################
   * ########## INTERNAL ##########
   * ##############################
   */

  /// The status of this game.
  Status _status;

  /// The startingPoints of this game.
  int _startingPoints;

  /// The mode of this game.
  Mode _mode;

  /// The size of this game.
  int _size;

  /// The type of this game.
  Type _type;

  /// The position of the current turn in [players].
  int? _turnIndex;

  /// The position of the player who started the current set in [players].
  int? _startSetIndex;

  /// The position of the player who started the current leg in [players].
  int? _startLegIndex;

  /// Returns the index of the player who started the current set.
  ///
  /// Returns `null` if [type] is legs or if this game was never running.
  int? _calcStartSetIndex() {
    if (type == Type.sets) {
      final amountOfSets =
          players[0].legsOrSets?.toOption().toNullable()?.length;
      return amountOfSets != null ? (amountOfSets - 1 % players.length) : null;
    }

    return null;
  }

  /// Returns the index of the player who started the current leg.
  ///
  /// Returns `null` if this game was never running.
  int? _calcStartLegIndex() {
    if (type == Type.legs) {
      final amountOfLegs =
          players[0].legsOrSets?.swap().toOption().toNullable()?.length;
      return amountOfLegs != null ? (amountOfLegs - 1 % players.length) : null;
    } else {
      final amountOfLegsCurrentSet =
          players[0].legsOrSets?.toOption().toNullable()?.last.legs.length;
      return amountOfLegsCurrentSet != null
          ? ((_startSetIndex! + amountOfLegsCurrentSet - 1) % players.length)
          : null;
    }
  }

  /// Returns the index of the player who can perform next throw.
  ///
  /// Returns `null` if this game was never running.
  int? _calcTurnIndex() {
    int sumOfAllPlayersThrowsCurrentLeg = 0;

    for (Player player in players) {
      final throwsCurrentLeg = player._currentLegOrSet?.fold(
        (leg) => leg.throws.length,
        (set) => set.legs.last.throws.length,
      );

      if (throwsCurrentLeg == null) {
        return null;
      } else {
        sumOfAllPlayersThrowsCurrentLeg += throwsCurrentLeg;
      }
    }

    return (_startLegIndex! + sumOfAllPlayersThrowsCurrentLeg) % players.length;
  }

  /// The position of the dartbot in [players].
  ///
  /// Returns -1 if this game has no dartbot.
  int get _dartBotIndex => players.indexWhere((player) => player is DartBot);

  /// Returns `true` if this game has a dartbot
  bool get _hasDartBot => _dartBotIndex != -1;

  /// The player of this game who is allowed to perform the next throw.
  Player? get _currentTurn => _turnIndex != null ? players[_turnIndex!] : null;

  /// Returns `true` if every player that is not a dartbot of this game has 0 throws.
  bool get _noThrowsPerformedGame {
    bool allSetsEqual1 = true;
    bool allLegsEqual1 = true;
    bool allThrowsEqual0 = true;

    if (type == Type.legs) {
      for (Player player in players) {
        if (player is! DartBot) {
          allLegsEqual1 &=
              player.legsOrSets!.swap().toOption().toNullable()!.length == 1;
          allThrowsEqual0 &= player._currentLegOrSet!
                  .swap()
                  .toOption()
                  .toNullable()!
                  .throws
                  .length ==
              0;
        }
      }
    } else {
      for (Player player in players) {
        if (player is! DartBot) {
          allSetsEqual1 &=
              player._legsOrSets!.toOption().toNullable()!.length == 1;
          allLegsEqual1 &=
              player._currentLegOrSet!.toOption().toNullable()!.legs.length ==
                  1;
          allThrowsEqual0 &= player._currentLegOrSet!
                  .toOption()
                  .toNullable()!
                  ._currentLeg
                  .throws
                  .length ==
              0;
        }
      }
    }

    return allSetsEqual1 && allLegsEqual1 && allThrowsEqual0;
  }

  /// Returns `true` if every player thats is not a dartbot
  /// of this game has 0 throws in the current set.
  bool get _noThrowsPerformedSet {
    bool allLegsEqual1 = true;
    bool allThrowsEqual0 = true;

    if (type == Type.legs) {
      return false;
    } else {
      for (Player player in players) {
        if (player is! DartBot) {
          allLegsEqual1 &=
              player._currentLegOrSet!.toOption().toNullable()!.legs.length ==
                  1;
          allThrowsEqual0 &= player._currentLegOrSet!
                  .toOption()
                  .toNullable()!
                  ._currentLeg
                  .throws
                  .length ==
              0;
        }
      }
    }

    return allLegsEqual1 && allThrowsEqual0;
  }

  /// Returns `true` if every player thats is not a dartbot
  /// of this game has 0 throws in the current leg.
  bool get _noThrowsPerformedLeg {
    bool allThrowsEqual0 = true;

    if (type == Type.legs) {
      for (Player player in players) {
        if (player is! DartBot) {
          allThrowsEqual0 &= player._currentLegOrSet!
                  .swap()
                  .toOption()
                  .toNullable()!
                  .throws
                  .length ==
              0;
        }
      }
    } else {
      for (Player player in players) {
        if (player is! DartBot) {
          allThrowsEqual0 &= player._currentLegOrSet!
                  .toOption()
                  .toNullable()!
                  ._currentLeg
                  .throws
                  .length ==
              0;
        }
      }
    }
    return allThrowsEqual0;
  }

  /// Validates this game.
  ///
  /// Throws an [ArgumentError] if this game is invalid.
  void _validate() {
    if (startingPoints < 2) {
      throw ArgumentError.value(
        startingPoints,
        'startingPoints',
        'StartingPoints mustn`t be less than 2.',
      );
    }

    if (size < 1) {
      throw ArgumentError.value(
        size,
        'size',
        'Size mustn`t be less than 1.',
      );
    }

    if (players.isEmpty) {
      throw ArgumentError.value(
        players,
        'players',
        'Players mustn`t be empty.',
      );
    }

    bool allNull = true;
    for (Player player in players) {
      allNull &= player._legsOrSetsNeededToWin == null &&
          player.legsOrSets == null &&
          player.isCurrentTurn == null;
    }

    bool allNotNull = true;
    for (Player player in players) {
      allNotNull &= player._legsOrSetsNeededToWin != null &&
          player.legsOrSets != null &&
          player.isCurrentTurn != null;
    }

    // pending
    if (status == Status.pending) {
      if (!allNull) {
        throw ArgumentError(
          'In pending game all players must have legsOrSetsNeededToWin = null, '
          'legsOrSets = null and isCurrentTurn = null.',
        );
      }
    }

    // running
    if (status == Status.running) {
      if (!allNotNull) {
        throw ArgumentError(
          'In running game all players must have legsOrSetsNeededToWin != null, '
          'legsOrSets != null and isCurrentTurn != null.',
        );
      }
    }

    // canceled
    if (status == Status.canceled) {
      if (!(allNull || allNotNull)) {
        throw ArgumentError(
          'In pending game all players must have legsOrSetsNeededToWin = null, '
          'legsOrSets = null and isCurrentTurn = null or legsOrSetsNeededToWin != null, '
          'legsOrSets != null and isCurrentTurn != null.',
        );
      }
    }

    // finished
    if (status == Status.finished) {
      if (!allNotNull) {
        throw ArgumentError(
          'In finished game all players must have legsOrSetsNeededToWin != null, '
          'legsOrSets != null and isCurrentTurn != null.',
        );
      }

      // Finished game has exact 1 winner
      final exactOneWinner =
          players.map((player) => player.won!).where((won) => won).length == 1;

      if (!exactOneWinner) {
        throw ArgumentError(
          'In finished game exactly 1 player won.',
        );
      }
    }

    if (status == Status.running ||
        status == Status.canceled ||
        status == Status.finished) {
      if (allNotNull) {
        // LegsOrSetsNeededToWin same for all players
        final allLegsOrSetsNeededToWinEqual = players
                .map(
                  (player) => player._legsOrSetsNeededToWin,
                )
                .toSet()
                .length ==
            1;
        if (!(allLegsOrSetsNeededToWinEqual)) {
          throw ArgumentError(
            'In running game all players must have the same legsOrSetsNeededToWin.',
          );
        }

        // LegsOrSetsNeededToWin calculated correctly depending on mode and size
        final legsOrSetsNeededToWin =
            mode == Mode.firstTo ? size : (size / 2).round();
        final allLegsOrSetsDependingOnModeAndSize = players.every(
          (player) => player._legsOrSetsNeededToWin == legsOrSetsNeededToWin,
        );
        if (!(allLegsOrSetsDependingOnModeAndSize)) {
          throw ArgumentError(
            'In running game all players must have legsOrSetsNeededToWin calculated based '
            'on mode and size of the game.',
          );
        }

        // Exact 1 player current turn
        final exactOnePlayerIsCurrentTurn =
            players.where((player) => player.isCurrentTurn == true).length == 1;

        if (!exactOnePlayerIsCurrentTurn) {
          throw ArgumentError(
            'In running game exact one player must be current turn.',
          );
        }

        // Correct legsOrSets of each player depending on type
        if (type == Type.legs) {
          bool allLegs = true;
          for (Player player in players) {
            allLegs &= player._legsOrSets!.isLeft();
          }

          if (!allLegs) {
            throw ArgumentError(
              'In running game with type leg all players must have legs.',
            );
          }
        }

        if (type == Type.sets) {
          bool allSets = true;
          for (Player player in players) {
            allSets &= player._legsOrSets!.isRight();
          }

          if (!allSets) {
            throw ArgumentError(
              'In running game with type set all players must have sets.',
            );
          }

          // Equal amount of legs per set
          final legsPerSetList = players
              .map((player) => player.legsOrSets!
                  .toOption()
                  .toNullable()!
                  .map((set) => set.legs.length)
                  .toList())
              .toList();
          bool allSetsEqualAmountOfLegs = true;
          for (int i = 0; i < legsPerSetList.length - 1; i++) {
            allSetsEqualAmountOfLegs &=
                ListEquality().equals(legsPerSetList[i], legsPerSetList[i + 1]);
          }

          if (!allSetsEqualAmountOfLegs) {
            throw ArgumentError(
              'In running game with type set all players must have sets with equal amount of legs.',
            );
          }
        }

        // Equal amount of legs/sets for each player
        final allLegsOrSetsSameLength = players
                .map((player) => player._legsOrSets!
                    .fold((legs) => legs.length, (sets) => sets.length))
                .toSet()
                .length ==
            1;

        if (!allLegsOrSetsSameLength) {
          throw ArgumentError(
            'In running game all players must have same amount of legs or sets.',
          );
        }

        // StartingPoints equal for all legs/sets of each player
        bool allLegsOrSetsStartingPointsEqual = true;
        for (Player player in players) {
          allLegsOrSetsStartingPointsEqual &= player._legsOrSets!.fold(
            (legs) => legs.every((leg) => leg.startingPoints == startingPoints),
            (sets) => sets.every((set) => set.startingPoints == startingPoints),
          );
        }

        if (!allLegsOrSetsStartingPointsEqual) {
          throw ArgumentError(
            'In running game the starting points of all players legs/sets must be equal.',
          );
        }

        // Equal or +1 amount of throws per leg
        final throwAmountPerLegList = players
            .map<List<int>>(
              (player) => player.legsOrSets!.fold(
                (legs) => legs.map((leg) => leg.throws.length).toList(),
                (sets) => sets
                    .map<Iterable<int>>(
                      (set) => set.legs.map((leg) => leg.throws.length),
                    )
                    .expand((i) => i)
                    .toList(),
              ),
            )
            .toList();

        bool allPlayersAllLegsEqualOr1MoreThrows = true;
        for (int i = 0; i < throwAmountPerLegList[0].length; i++) {
          final list = <int>[];
          for (final item in throwAmountPerLegList) {
            list.add(item[i]);
          }

          allPlayersAllLegsEqualOr1MoreThrows &=
              (list.reduce(max) - list.reduce(min)) <= 1;
        }

        if (!allPlayersAllLegsEqualOr1MoreThrows) {
          throw ArgumentError(
            'In running game all players must have legs with equal amount of throws '
            'per leg or at maximum 1 throw more than other players in this leg.',
          );
        }

        if (status == Status.running || status == Status.canceled) {
          // Running/Canceled game has exact 0 winner
          final noWinner =
              players.map((player) => player.won!).where((won) => won).length ==
                  0;

          if (!noWinner) {
            throw ArgumentError(
              'In running/pending game exactly 0 player won.',
            );
          }
        }
      }
    }
  }

  @override
  String toString() {
    return 'Game{status: $status, startingPoints: $startingPoints, mode: $mode, size: $size, '
        'type: $type, players: $players}';
  }
}
