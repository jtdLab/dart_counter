part of './../../../../bobs_twenty_seven_training_game.dart';

/// The mode of a [Game].
///
/// If mode is easy a player can go below 0 points.
/// If mode is hard a player who goes below 0 points is disqualified.
enum Mode { easy, hard }

class Game extends AbstractGame<Player> {
  Mode mode;

  /// Creates a game with given [ownerName] and [mode].
  Game({
    String? ownerName,
    this.mode = Mode.easy,
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
      for (Player player in players) {
        player.isCurrentTurn = false;
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

  @override
  bool performThrow({
    required Throw t,
  }) {
    if (t.darts == null) {
      throw ArgumentError('Darts must not be null.');
    }

    if (t.dartsOnDouble != 3) {
      throw ArgumentError('DartsOnDouble must be 3.');
    }

    if (status == Status.running) {
      _currentTurn!._throws!.add(t);

      if (mode == Mode.hard) {
        if (_currentTurn!.points! >= 0) {
          final nextTargetValue = _currentTurn!._throws!.length + 1;

          _currentTurn!._targetValue = nextTargetValue;
        } else {
          // points <0 => disqualify player
          _currentTurn!._isDisqualified = true;
        }
      }

      final disqualifiedPlayers =
          players.where((player) => player.isDisqualified!);
      final notDisqualifiedPlayers =
          players.where((player) => !player.isDisqualified!);

      final allPlayersAreDisqualified =
          disqualifiedPlayers.length == players.length;
      final allNotDisqualifiedHave21Throws = notDisqualifiedPlayers.fold<bool>(
        true,
        (acc, player) => acc &= player.throws!.length == 21,
      );

      if (allPlayersAreDisqualified || allNotDisqualifiedHave21Throws) {
        // every player is disqualified or has done all his takes => finish game
        status = Status.finished;
      } else {
        // update current turn◊
        _currentTurn!.isCurrentTurn = false;
        if (mode == Mode.hard) {
          // recursive function to update turn index to next not disqualified player
          void rec() {
            _turnIndex = (_turnIndex! + 1) % players.length;
            if (_currentTurn!.isDisqualified!) {
              /// already finished => go next player
              rec();
            }
          }

          rec();
        } else {
          _turnIndex = (_turnIndex! + 1) % players.length;
        }
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

        if (mode == Mode.hard) {
          if (_currentTurn!.points! >= 0) {
            // not longer disqualified
            _currentTurn!._isDisqualified = false;
          }
        }

        _currentTurn!._targetValue = _currentTurn!._throws!.length + 1;

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

  @override
  String toString() {
    return 'Game{status: ${status.toString().split('.')[1]}, players: $players, owner: $owner, mode: ${mode.toString().split('.')[1]}}';
  }
}
