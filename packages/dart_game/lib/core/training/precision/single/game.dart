part of '../../../../single_training_game.dart';

class Game extends AbstractGame<Player> {
  Mode mode;

  /// Creates a game with given [ownerName] and [mode].
  Game({
    String? ownerName,
    this.mode = Mode.ascending,
  }) : super(owner: Player(name: ownerName));

  Game.fromData({
    required Status status,
    required List<Player> players,
    required Player owner,
    required this.mode,
  }) : super.fromData(status: status, players: players, owner: owner);

  @override
  bool start() {
    if (status == Status.pending) {
      switch (mode) {
        case Mode.ascending:
          _targetValues = List.generate(20, (index) => index + 1) + [25];
          break;
        case Mode.descending:
          _targetValues = (List.generate(20, (index) => index + 1) + [25])
              .reversed
              .toList();
          break;
        case Mode.random:
          _targetValues = (List.generate(20, (index) => index + 1) + [25])
            ..shuffle();
          break;
      }

      for (Player player in players) {
        player.isCurrentTurn = false;
        player._throws = [];
        player._targetValue = _targetValues![0];
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
    if (t.darts == null) {
      throw ArgumentError('Darts must not be null.');
    }

    if (t.dartsOnDouble != 0) {
      throw ArgumentError('DartsOnDouble must be 0.');
    }

    if (t.dartsThrown != 3) {
      throw ArgumentError('DartsThrown must be 3.');
    }

    if (status == Status.running) {
      _currentTurn!._throws!.add(t);

      final index = _currentTurn!._throws!.length;
      if (index <= 20) {
        _currentTurn!._targetValue = _targetValues![index];
      }

      if (_turnIndex == players.length - 1 && index == 21) {
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

      final index = _currentTurn!._throws!.length;
      if (index <= 20) {
        _currentTurn!._targetValue = _targetValues![index];
      }

      _currentTurn!.isCurrentTurn = true;

      return true;
    }

    return false;
  }

  int? _turnIndex;
  Player? get _currentTurn => _turnIndex != null ? players[_turnIndex!] : null;
  List<int>? _targetValues;

  @override
  String toString() {
    return 'Game{status: ${status.toString().split('.')[1]}, players: $players, owner: $owner, mode: ${mode.toString().split('.')[1]}}';
  }
}
