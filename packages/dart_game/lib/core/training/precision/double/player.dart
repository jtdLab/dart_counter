part of '../../../../double_training_game.dart';

class Player extends AbstractPlayer {
  List<Throw>? get throws => _throws;
  int? get targetValue => _targetValue;

  /// Creates an empty player with given [id] and [name].
  Player({
    String? id,
    String? name,
  }) : super(id: id, name: name);

  Player.fromData({
    String? id,
    String? name,
    bool? isCurrentTurn,
    List<Throw>? throws,
    int? targetValue = 1,
  })  : _throws = throws,
        _targetValue = targetValue,
        super.fromData(id: id, name: name, isCurrentTurn: isCurrentTurn);

  /// The amount of doubles hit by this player.
  int? get doubles => _throws?.fold<int>(
        0,
        (acc, t) =>
            acc +
            t.darts!
                .where(
                  (dart) => dart.type == DartType.double && dart.points != 0,
                )
                .length,
      );

  /// The amount of misses hit by this player.
  int? get missed => _throws?.fold<int>(
        0,
        (acc, t) => acc + t.darts!.where((dart) => dart.points == 0).length,
      );

  List<Throw>? _throws;
  int? _targetValue;

  @override
  String toString() {
    return 'Player{id: $id, name: $name, isCurrentTurn: $isCurrentTurn, targetValue: $_targetValue, throws: $throws}';
  }
}
