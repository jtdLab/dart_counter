part of './../../../../bobs_twenty_seven_training_game.dart';

/**
 * enum Mode { easy, hard }
 */

class Game extends AbstractGame<Player> {
  /// Creates a game with given [ownerName] and [mode].
  Game({
    String? ownerName,
  }) : super(owner: Player(name: ownerName));

  Game.fromData({
    required Status status,
    required List<Player> players,
    required Player owner,
  }) : super.fromData(status: status, players: players, owner: owner);

  @override
  bool start() {
    if (status == Status.pending) {
      for (Player player in players) {
        player._throws = [];
        player._targetValue = 1;
        player._isDisqualified = false;
      }

      _turnIndex = 0;
      _currentTurn!.isCurrentTurn = true;

      status = Status.running;

      return true;
    }

    return false;
  }

  // TODO
  @override
  bool performThrow({
    required Throw t,
  }) {
    if (t.darts == null) {
      throw ArgumentError('Darts must not be null.');
    }

    if (t.dartsThrown != 3) {
      throw ArgumentError('DartsThrown must be 3.');
    }

    if (t.dartsOnDouble != 3) {
      throw ArgumentError('DartsOnDouble must be 3.');
    }

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

  // TODO
  @override
  bool undoThrow() {
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

  int? _turnIndex;
  Player? get _currentTurn => _turnIndex != null ? players[_turnIndex!] : null;

  // TODO
  @override
  String toString() {
    return 'Game{status: ${status.toString().split('.')[1]}, players: $players}';
  }
}
