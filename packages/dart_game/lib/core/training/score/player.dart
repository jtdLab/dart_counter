part of '../../../score_training_game.dart';

class Player extends AbstractPlayer {
  List<Throw>? get throws => _throws;

  /// Creates an empty player with given [id] and [name].
  Player({
    String? id,
    String? name,
  }) : super(id: id, name: name);

  Player.fromData({
    String? id,
    String? name,
    bool? isCurrentTurn,
    int? numberOfTakes,
    List<Throw>? throws,
  })  : _numberOfTakes = numberOfTakes,
        _throws = throws,
        super.fromData(id: id, name: name, isCurrentTurn: isCurrentTurn);

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

  /// The average of the first dart of every throw of this player.
  ///
  /// Returns `null` if this leg has 0 throws with 1st dart provided.
  double? get firstDartAverage {
    if (_throws == null) {
      return null;
    }

    int amount = 0;
    int points = 0;
    for (Throw t in _throws!) {
      if (t.darts != null) {
        Dart? firstDart = t.darts?[0];
        if (firstDart != null) {
          amount++;
          points += firstDart.points;
        }
      }
    }
    return amount == 0 ? null : points / amount;
  }

  /// The average of the second dart of every throw of this player.
  ///
  /// Returns `null` if this leg has 0 throws with 2nd dart provided.
  double? get secondDartAverage {
    if (_throws == null) {
      return null;
    }

    int amount = 0;
    int points = 0;
    for (Throw t in _throws!) {
      if (t.darts != null) {
        Dart? secondDart = t.darts?[1];
        if (secondDart != null) {
          amount++;
          points += secondDart.points;
        }
      }
    }
    return amount == 0 ? null : points / amount;
  }

  /// The average of the third dart of every throw of this player.
  ///
  /// Returns `null` if this leg has 0 throws with 3rd dart provided.
  double? get thirdDartAverage {
    if (_throws == null) {
      return null;
    }

    int amount = 0;
    int points = 0;
    for (Throw t in _throws!) {
      if (t.darts != null) {
        Dart? thirdDart = t.darts?[2];
        if (thirdDart != null) {
          amount++;
          points += thirdDart.points;
        }
      }
    }
    return amount == 0 ? null : points / amount;
  }

  /// The amount of points scored by this player.
  int? get points => _throws != null
      ? _throws!.fold<int>(0, (acc, element) => acc + element.points)
      : null;

  /// The amount of takes this player has in the game he is part of
  /// 
  /// This is set by the parent game on start.
  int? _numberOfTakes;
  List<Throw>? _throws;

  @override
  String toString() {
    return 'Player{id: $id, name: $name, isCurrentTurn: $isCurrentTurn, throws: $throws}';
  }
}
