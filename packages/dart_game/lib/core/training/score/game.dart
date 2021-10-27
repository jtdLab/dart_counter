part of '../../../score_training_game.dart';

/// The status of a [Game]
enum Status { pending, canceled, running, finished }

class Game {
  Status get status => _status;
  final List<Player> players;
  int numberOfTakes;
  Player get owner => _owner;

  /// Creates a game with given [ownerName].
  Game({
    String? ownerName,
    this.numberOfTakes = 1,
  })  : _status = Status.pending,
        players = [] {
    addPlayer(name: ownerName);
  }

  Game.fromData({
    required Status status,
    required this.numberOfTakes,
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
      for (Player player in players) {
        player._numberOfTakes = numberOfTakes;
        player._throws = [];
      }

      _turnIndex = 0;
      _currentTurn!.isCurrentTurn = true;

      _status = Status.running;
      return true;
    }
    return false;
  }

  /// Cancels this game.
  bool cancel() {
    if (status == Status.pending || status == Status.running) {
      status == Status.canceled;
      return true;
    }

    return false;
  }

  /// Performs throw with [points].
  bool performThrow({
    required int points,
  }) {
    if (status == Status.running) {
      _currentTurn!._throws!.add(points);

      _currentTurn!.isCurrentTurn = false;
      _turnIndex = (_turnIndex! + 1) % players.length;
      _currentTurn!.isCurrentTurn = true;
      return true;
    }
    return false;
  }

  /// Undos the last throw of the previous turn of this game.
  bool undoThrow() {
    if (status == Status.running) {
      if (_turnIndex == 0 && _currentTurn!._throws!.isEmpty) {
        // no throw performed yet
        return false;
      }

      _currentTurn!.isCurrentTurn = false;
      _turnIndex = (_turnIndex! - 1) % players.length;

      final throws = _currentTurn!._throws;

      if (throws!.length > 0) {
        throws.removeLast();

        _currentTurn!.isCurrentTurn = true;
        return true;
      }
    }
    return false;
  }

  Status _status;
  int? _turnIndex;
  late Player _owner;

  Player? get _currentTurn => _turnIndex != null ? players[_turnIndex!] : null;

  @override
  String toString() {
    return 'Game{status: ${status.toString().split('.')[1]}, numberOfTakes: $numberOfTakes, players: $players}';
  }
}
