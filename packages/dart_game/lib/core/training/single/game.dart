part of '../../../single_training_game.dart';

/// The mode of a [Game].
///
/// Ascending means starting from 1 going up to 25.
///
/// Descending means starting at 25 going down to 1.
enum Mode { ascending, descending, random }

/// The status of a [Game]
enum Status { pending, canceled, running, finished }

class Game {
  Status get status => _status;
  Mode mode;
  final List<Player> players;
  Player get owner => _owner;

  /// Creates a game with given [ownerName].
  Game({
    String? ownerName,
  })  : _status = Status.pending,
        mode = Mode.ascending,
        players = [] {
    addPlayer(name: ownerName);
  }

  Game.fromData({
    required Status status,
    required this.mode,
    required this.players,
    required Player owner,
  })  : _status = status,
        _owner = owner {
    if (!players.contains(owner)) {
      throw ArgumentError.value(owner, 'Owner is not part of the players.');
    }
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
        final player = Player(
          id: id,
          name: name,
        );

        if (players.isEmpty) {
          _owner = player;
        }

        players.add(player);

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
      if (index == players.indexOf(owner)) {
        return false;
      }
      if (players.length > 1) {
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

  /// Starts this game and initializes the [players].
  ///
  /// Returns `true` if started.
  bool start() {
    if (status == Status.pending) {
      final targetValue = mode == Mode.ascending ? 1 : 20;

      for (Player player in players) {
        player._rounds = [Round(targetValue: targetValue)];
      }

      _turnIndex = 0;
      _currentTurn!.isCurrentTurn = true;

      _status = Status.running;
      return true;
    }
    return false;
  }

// TODO test
  bool cancel() {
    if (status == Status.pending || status == Status.running) {
      status == Status.canceled;
      return true;
    }

    return false;
  }

  /**
   * /// Adds a single hit to the current turn for the current target single number.
  bool singleHit() {
    if (status == Status.running) {
      return _addHitToCurrentTurn(Hit.single);
    }
    return false;
  }

  /// Adds a double hit to the current turn for the current target single number.
  bool doubleHit() {
    if (status == Status.running) {
      return _addHitToCurrentTurn(Hit.double);
    }
    return false;
  }

  /// Adds a triple hit to the current turn for the current target single number.
  bool tripleHit() {
    if (status == Status.running) {
      return _addHitToCurrentTurn(Hit.triple);
    }
    return false;
  }

  /// Adds a miss to the current turn for the current target single number.
  bool nothingHit() {
    if (status == Status.running) {
      return _addHitToCurrentTurn(Hit.missed);
    }
    return false;
  }

  /// Undos the last input of this game.
  bool undoLastHit() {
    if (status == Status.running) {
      final currentHits = _currentTurn!._currentRound!.hits;
      if (currentHits.isNotEmpty) {
        currentHits.removeLast();
        return true;
      }
    }
    return false;
  }

  /// Finishes the current turn and updates state of this game to the next turn if its not finished.
  bool commitHits() {
    if (status == Status.running) {
      final currentHits = _currentTurn!._currentRound!.hits;
      if (currentHits.length == 3) {
        final targetValue = mode == Mode.ascending ? 1 : 20;

        if (_turnIndex == players.length - 1) {
          for (Player player in players) {
            player._rounds?.add(Round(targetValue: targetValue));
          }
        }

        _currentTurn!.isCurrentTurn = false;
        _turnIndex = (_turnIndex! + 1) % players.length;
        _currentTurn!.isCurrentTurn = true;
        return true;
      }
    }
    return false;
  }
   */

  // TODO test
  /// Performs hits [hit1], [hit2] and [hit3] to the current turn and go to next turn.
  bool performHits(
    Hit hit1,
    Hit hit2,
    Hit hit3,
  ) {
    if (status == Status.running) {
      _currentTurn!._currentRound!.hits.addAll([hit1, hit2, hit3]);

      if (_turnIndex == players.length - 1) {
        final targetValue;

        if (mode == Mode.ascending) {
          targetValue = _currentTurn!.rounds!.length + 1;
        } else if (mode == Mode.descending) {
          targetValue = 21 - _currentTurn!.rounds!.length; // TODo

        } else {
          // TODO random
          throw UnimplementedError();
        }

        for (Player player in players) {
          player._rounds?.add(Round(targetValue: targetValue));
        }
      }

      _currentTurn!.isCurrentTurn = false;
      _turnIndex = (_turnIndex! + 1) % players.length;
      _currentTurn!.isCurrentTurn = true;
      return true;
    }
    return false;
  }

  /// Undos the last round of the previous turn of this game.
  bool undoHits() {
    if (status == Status.running) {
      final rounds = _currentTurn!._rounds;
      if (rounds != null) {
        if (rounds.length > 0) {
          rounds.removeLast();
          _currentTurn!.isCurrentTurn = false;
          _turnIndex = (_turnIndex! - 1) % players.length;
          _currentTurn!.isCurrentTurn = true;
          return true;
        }
      }
    }
    return false;
  }

  Status _status;
  int? _turnIndex;
  late Player _owner;

  Player? get _currentTurn => _turnIndex != null ? players[_turnIndex!] : null;

  bool _addHitToCurrentTurn(Hit hit) {
    final currentHits = _currentTurn!._currentRound!.hits;
    if (currentHits.length < 3) {
      currentHits.add(hit);
      return true;
    }

    return false;
  }

  @override
  String toString() {
    return 'Game{status: ${status.toString().split('.')[1]}, mode: ${mode.toString().split('.')[1]}, players: $players}';
  }
}
