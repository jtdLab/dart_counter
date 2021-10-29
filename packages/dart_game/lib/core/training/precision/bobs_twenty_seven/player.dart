part of './../../../../bobs_twenty_seven_training_game.dart';

class Player extends AbstractPlayer {
  List<Throw>? get throws => _throws;
  int? get targetValue => _targetValue;
  bool? get isDisqualified => _isDisqualified;

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
    bool? isDisqualified,
  })  : _throws = throws,
        _targetValue = targetValue,
        _isDisqualified = isDisqualified,
        super.fromData(id: id, name: name, isCurrentTurn: isCurrentTurn);

  /// The percentage of doubles hit by this player.
  double? get checkoutPercentage {
    if (_throws == null) {
      return null;
    }

    if (_throws!.isEmpty) {
      return null;
    }

    final dartsOnDouble = _throws!.fold<int>(
      0,
      (acc, t) =>
          acc +
          t.darts!
              .where((dart) => dart.type == DartType.double && dart.points != 0)
              .length,
    );

    return dartsOnDouble / (3 * _throws!.length);
  }

  /// The amount of points achived by this player.
  int? get points {
    if (_throws != null) {
      int points = 27;
      for (int i = 0; i < _throws!.length; i++) {
        final t = _throws![i];
        final doublesHit = t.darts!
            .where((dart) => dart.type == DartType.double && dart.points != 0)
            .length;

        final targetValue = i + 1;
        if (doublesHit == 0) {
          points -= targetValue;
        } else {
          points += doublesHit * targetValue * 2;
        }
      }

      return points;
    }

    return null;
  }

  /// The largest amount of points this player had.
  int? get highestPoints {
    if (_throws != null) {
      int maxPoints = 27;
      int points = 27;
      for (int i = 0; i < _throws!.length; i++) {
        final t = _throws![i];
        final doublesHit = t.darts!
            .where((dart) => dart.type == DartType.double && dart.points != 0)
            .length;

        final targetValue = i + 1;
        if (doublesHit == 0) {
          points -= targetValue;
        } else {
          points += doublesHit * targetValue * 2;
        }

        if (points > maxPoints) {
          maxPoints = points;
        }
      }

      return maxPoints;
    }

    return null;
  }

  List<Throw>? _throws;
  int? _targetValue;
  bool? _isDisqualified;

  @override
  String toString() {
    return 'Player{id: $id, name: $name, isCurrentTurn: $isCurrentTurn, throws: $throws, targetValue: $_targetValue, isDisqualified: $_isDisqualified}';
  }
}
