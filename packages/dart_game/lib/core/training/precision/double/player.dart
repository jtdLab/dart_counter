part of '../../../../double_training_game.dart';

class Player extends AbstractPlayer {
  List<Throw>? get throws => _throws;
  int? get targetValue => _targetValue;
  bool? get isFinished => _isFinished;

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
    int? targetValue,
    bool? isFinished,
  })  : _throws = throws,
        _targetValue = targetValue,
        _isFinished = isFinished,
        super.fromData(id: id, name: name, isCurrentTurn: isCurrentTurn);

  /// The amount of misses hit by this player.
  int? get missed => _throws?.fold<int>(
        0,
        (acc, t) => acc + t.darts!.where((dart) => dart.points == 0).length,
      );

  /// The amount of darts thrown by this player.
  int? get dartsThrown => missed != null
      ? _doubles != null
          ? _doubles! + missed!
          : null
      : null;

  /// The percentage of doubles hit by this player.
  double? get checkoutPercentage => _doubles != null
      ? missed != null
          ? (dartsThrown!) != 0
              ? _doubles! / (dartsThrown!)
              : null
          : null
      : null;

  List<Throw>? _throws;
  int? _targetValue;
  bool? _isFinished;

  /// The amount of doubles hit by this player.
  int? get _doubles => _throws?.fold<int>(
        0,
        (acc, t) =>
            acc +
            t.darts!
                .where(
                  (dart) => dart.type == DartType.double && dart.points != 0,
                )
                .length,
      );

  @override
  String toString() {
    return 'Player{id: $id, name: $name, isCurrentTurn: $isCurrentTurn, throws: $throws, targetValue: $_targetValue, isFinished: $_isFinished}';
  }
}
