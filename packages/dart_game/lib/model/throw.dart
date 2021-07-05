part of dart_game;

class Throw {
  late final int points;
  late final int dartsOnDouble;
  late final int dartsThrown;
  late final List<Dart>? darts;

  Throw(
    this.points, {
    this.dartsThrown = 3,
    this.dartsOnDouble = 0,
    this.darts = null,
  });

  Throw.fromDarts({required this.darts, required this.dartsOnDouble}) {
    dartsThrown = darts!.length;
    points = darts!.fold(0, (previousValue, dart) => dart.points);
  }

  @override
  String toString() {
    return 'Throw{points: $points, dartsOnDouble: $dartsOnDouble, dartsThrown: $dartsThrown, darts: $darts}';
  }
}
