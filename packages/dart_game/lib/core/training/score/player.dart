part of '../../../score_training_game.dart';

class Player {
  final String id;
  String? name;
  bool? isCurrentTurn;
  List<int>? get throws => _throws;


  /// Creates an empty player with given [id] and [name].
  Player({
    String? id,
    this.name,
  }) : id = id ?? Uuid().v4();

  Player.fromData({
    required this.id,
    this.name,
    this.isCurrentTurn,
    required int numberOfTakes,
    List<int>? throws,
  })  : _numberOfTakes = numberOfTakes,
        _throws = throws;

  /// The current value this player aims to hit.
  int? get takesLeft =>
      _throws != null ? _numberOfTakes! - _throws!.length : null;

  /// The amount of points scored by this player.
  double? get average {
    if (_throws == null) {
      return null;
    }

    if (_throws!.isEmpty) {
      return null;
    }

    return points! / (_throws!.length);
  }

  /// The amount of points scored by this player.
  int? get points => _throws != null
      ? _throws!.fold<int>(0, (acc, element) => acc + element)
      : null;

  int? _numberOfTakes;
  List<int>? _throws;

  @override
  String toString() {
    return 'Player{id: $id, name: $name, isCurrentTurn: $isCurrentTurn, throws: $throws}';
  }
}
