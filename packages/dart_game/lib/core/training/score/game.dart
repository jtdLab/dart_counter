part of '../../../score_training_game.dart';

class Game extends AbstractGame<Player> {
  int numberOfTakes;

  /// Creates a game with given [ownerName] and [numberOfTakes].
  Game({
    String? ownerName,
    this.numberOfTakes = 1,
  }) : super(owner: Player(name: ownerName));

  Game.fromData({
    required Status status,
    required this.numberOfTakes,
    required List<Player> players,
    required Player owner,
  }) : super.fromData(status: status, players: players, owner: owner);

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

      status = Status.running;
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

  int? _turnIndex;
  Player? get _currentTurn => _turnIndex != null ? players[_turnIndex!] : null;

  @override
  String toString() {
    return 'Game{status: ${status.toString().split('.')[1]}, numberOfTakes: $numberOfTakes, players: $players}';
  }
}
