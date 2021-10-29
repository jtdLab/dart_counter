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
    final darts = t.darts;
    if (darts == null) {
      throw ArgumentError('Darts must not be null.');
    }

    if (t.dartsOnDouble != t.dartsThrown) {
      throw ArgumentError('DartsOnDouble must be equal to dartsThrown.');
    }

    if (!(DartUtils.isOneDartFinish(points: t.points) || t.points == 0)) {
      throw ArgumentError('Points must be a one-dart-finish or 0.');
    }

    final dartsThatHaveToBeMissed = darts.take(t.dartsThrown - 1);
    for (final d in dartsThatHaveToBeMissed) {
      if (d.points != 0) {
        throw ArgumentError(
          'Darts before the dart that was hit on the target double must have 0 points.',
        );
      }
    }

    if (status == Status.running) {
      /**
      *  _currentTurn!._currentRound!.hits.addAll([hit1, hit2, hit3]);

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
      */
    }

    return false;
  }

  // TODO
  @override
  bool undoThrow() {
    if (status == Status.running) {
      /**
      *  final rounds = _currentTurn!._rounds;
      if (rounds != null) {
        if (rounds.length > 0) {
          rounds.removeLast();
          _currentTurn!.isCurrentTurn = false;
          _turnIndex = (_turnIndex! - 1) % players.length;
          _currentTurn!.isCurrentTurn = true;
          return true;
        }
      }
      */
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
