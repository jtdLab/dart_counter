part of '../../../score_training_game.dart';

class Game extends AbstractGame<Player> {
  int numberOfTakes; // TODO get and set + test

  /// Creates a game with given [ownerName] and [numberOfTakes].
  Game({
    String? ownerName,
    this.numberOfTakes = 1,
  }) : super(owner: Player(name: ownerName));

  Game.fromData({
    required Status status,
    required List<Player> players,
    required Player owner,
    required this.numberOfTakes,
  }) : super.fromData(status: status, players: players, owner: owner);

  @override
  bool start() {
    if (status == Status.pending) {
      for (Player player in players) {
        player._numberOfTakes = numberOfTakes;
        player._throws = [];
        player.isCurrentTurn = false;
      }

      _turnIndex = 0;
      _currentTurn!.isCurrentTurn = true;

      status = Status.running;
      return true;
    }
    return false;
  }

  @override
  bool performThrow({
    required Throw t,
  }) {
    if (t.dartsOnDouble != 0) {
      throw ArgumentError('DartsOnDouble must be 0.');
    }

    if (t.dartsThrown != 3) {
      throw ArgumentError('DartsThrown must be 3.');
    }

    if (status == Status.running) {
      _currentTurn!._throws!.add(t);

      if (_turnIndex == players.length - 1 && _currentTurn!.takesLeft! == 0) {
        // every player has done all his takes => finish game
        status = Status.finished;
      } else {
        _currentTurn!.isCurrentTurn = false;
        _turnIndex = (_turnIndex! + 1) % players.length;
        _currentTurn!.isCurrentTurn = true;
      }

      return true;
    }
    return false;
  }

  @override
  bool undoThrow() {
    if (status == Status.running) {
      if (_turnIndex == 0 && _currentTurn!._throws!.isEmpty) {
        // no throw performed yet
        return false;
      }

      _currentTurn!.isCurrentTurn = false;
      _turnIndex = (_turnIndex! - 1) % players.length;

      _currentTurn!._throws!.removeLast();

      _currentTurn!.isCurrentTurn = true;

      return true;
    }

    return false;
  }

  int? _turnIndex;
  Player? get _currentTurn => _turnIndex != null ? players[_turnIndex!] : null;

  @override
  String toString() {
    return 'Game{status: ${status.toString().split('.')[1]}, players: $players, owner: $owner, numberOfTakes: $numberOfTakes}';
  }
}
