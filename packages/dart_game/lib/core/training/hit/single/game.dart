part of '../../../../single_training_game.dart';

class Game extends HitGame<Player> {
  Mode mode;

  /// Creates a game with given [ownerName] and [mode].
  Game({
    String? ownerName,
    this.mode = Mode.ascending,
  }) : super(owner: Player(name: ownerName));

  Game.fromData({
    required Status status,
    required this.mode,
    required List<Player> players,
    required Player owner,
  }) : super.fromData(status: status, players: players, owner: owner);

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

      status = Status.running;
      return true;
    }
    return false;
  }

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

  int? _turnIndex;
  Player? get _currentTurn => _turnIndex != null ? players[_turnIndex!] : null;

  @override
  String toString() {
    return 'Game{status: ${status.toString().split('.')[1]}, mode: ${mode.toString().split('.')[1]}, players: $players}';
  }
}
