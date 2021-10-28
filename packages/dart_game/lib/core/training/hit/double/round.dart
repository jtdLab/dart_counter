part of '../../../../double_training_game.dart';

class Round {
  final int targetValue;

  List<Hit> hits;

  Round({
    required this.targetValue,
  }) : hits = [];

  Round.fromData({
    required this.targetValue,
    required this.hits,
  });

  /// The amount of doubles hit in this round.
  int get doubles => hits.where((element) => element == Hit.double).length;

  /// The amount of misses hit in this round.
  int get missed => hits.where((element) => element == Hit.missed).length;

  /// The amount of points scored in this round.
  int get points {
    return hits.fold(0, (acc, hit) {
      final int multiplier;
      switch (hit) {
        case Hit.double:
          multiplier = 2;
          break;

        default:
          multiplier = 0;
      }
      return acc + multiplier * targetValue;
    });
  }

  @override
  String toString() {
    return 'Round{targetValue: $targetValue, hits: $hits}';
  }
}
