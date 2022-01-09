part of '../../../../double_training_game.dart';

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
        player._isFinished = false;
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
    final darts = t.darts;
    if (darts == null) {
      throw ArgumentError('Darts must not be null.');
    }

    if (t.dartsOnDouble != t.dartsThrown) {
      throw ArgumentError('DartsOnDouble must be equal to dartsThrown.');
    }

    final dartsWithPointsNotZero = darts
        .where((dart) => dart.type == DartType.double && dart.points != 0)
        .toList();

    if (dartsWithPointsNotZero.length > 1) {
      throw ArgumentError(
        'There must not be more than one dart with type double and points != 0.',
      );
    }

    if (status == Status.running) {
      if (dartsWithPointsNotZero.length == 1) {
        final dart = dartsWithPointsNotZero[0];
        if (_currentTurn!.targetValue != dart.value) {
          throw ArgumentError(
            'The targetValue of current turn and the value of the dart hit on double must be equal.',
          );
        }
      }

      // add throw
      _currentTurn!._throws!.add(t);

      // calc index of next target value
      final index = _currentTurn!._throws!
          .where(
            (t) =>
                t.darts!
                    .where((dart) =>
                        dart.type == DartType.double && dart.points != 0)
                    .length ==
                1,
          )
          .length;

      // update targetValue if current turn didnt check every double already
      if (index <= 20) {
        _currentTurn!._targetValue = _targetValues![index];
      } else {
        // player is finished
        _currentTurn!._isFinished = true;
      }

      if (players.fold(true, (acc, player) => acc &= player.isFinished!)) {
        // every player has checked all doubles => finish game
        status = Status.finished;
      } else {
        // recursive function to update turn index to next not finished player
        void rec() {
          _turnIndex = (_turnIndex! + 1) % players.length;
          if (_currentTurn!.isFinished!) {
            /// already finished => go next player
            rec();
          }
        }

        // update current turn
        _currentTurn!.isCurrentTurn = false;
        rec();
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

      final amountOfThrows = players.map((player) => player._throws!.length);
      final maxAmountOfThrows = amountOfThrows.reduce((a, b) => max(a, b));

      if (_currentTurn!._throws!.length == maxAmountOfThrows) {
        final allEqual =
            amountOfThrows.every((element) => element == amountOfThrows.first);
        if (allEqual) {
          _turnIndex = players.length - 1;
        }

        _currentTurn!._throws!.removeLast();

        final index = _currentTurn!._throws!
            .where(
              (t) =>
                  t.darts!
                      .where((dart) =>
                          dart.type == DartType.double && dart.points != 0)
                      .length ==
                  1,
            )
            .length;
        _currentTurn!._targetValue = _targetValues![index];

        _currentTurn!.isCurrentTurn = true;
      } else {
        _currentTurn!.isCurrentTurn = false;
        _turnIndex = (_turnIndex! - 1) % players.length;

        return undoThrow();
      }

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
