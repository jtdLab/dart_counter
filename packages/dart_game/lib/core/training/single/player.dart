part of '../../../single_training_game.dart';

class Player {
  final String id;
  String? name;
  bool? isCurrentTurn;
  List<Round>? get rounds => _rounds;

  /// Creates an empty player with given [id] and [name].
  Player({
    String? id,
    this.name,
  }) : id = id ?? Uuid().v4();

  Player.fromData({
    required this.id,
    this.name,
    this.isCurrentTurn,
    List<Round>? rounds,
  }) : _rounds = rounds;

  /// The amount of triples hit by this player.
  int? get triples => rounds?.fold<int>(0, (acc, round) => acc + round.triples);

  /// The amount of doubles hit by this player.
  int? get doubles => rounds?.fold<int>(0, (acc, round) => acc + round.doubles);

  /// The amount of singles hit by this player.
  int? get singles => rounds?.fold<int>(0, (acc, round) => acc + round.single);

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
