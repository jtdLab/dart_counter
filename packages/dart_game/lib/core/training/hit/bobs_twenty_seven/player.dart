part of './../../../../bobs_twenty_seven_training_game.dart';

class Player extends AbstractPlayer {
  List<Round>? get rounds => _rounds;

  /// Creates an empty player with given [id] and [name].
  Player({
    String? id,
    String? name,
  }) : super(id: id, name: name);

  Player.fromData({
    String? id,
    String? name,
    bool? isCurrentTurn,
    List<Round>? rounds,
  })  : _rounds = rounds,
        super.fromData(id: id, name: name, isCurrentTurn: isCurrentTurn);

  /// The amount of doubles hit by this player.
  int? get doubles => rounds?.fold<int>(0, (acc, round) => acc + round.doubles);

  /// The amount of misses hit by this player.
  int? get missed => rounds?.fold<int>(0, (acc, round) => acc + round.missed);

  /// The current value this player aims to hit.
  int? get currentTargetValue => _currentRound?.targetValue;

  /// The amount of points scored by this player.
  int? get points => _rounds != null
      ? _rounds!.fold<int>(0, (acc, element) => acc + element.points)
      : null;

  List<Round>? _rounds;
  Round? get _currentRound => _rounds?.last;

  @override
  String toString() {
    return 'Player{id: $id, name: $name, isCurrentTurn: $isCurrentTurn, rounds: $rounds}';
  }
}
