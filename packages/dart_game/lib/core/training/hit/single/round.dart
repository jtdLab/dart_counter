part of '../../../../single_training_game.dart';

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

  /// The amount of triples hit in this round.
  int get triples => hits.where((element) => element == Hit.triple).length;

  /// The amount of doubles hit in this round.
  int get doubles => hits.where((element) => element == Hit.double).length;

  /// The amount of singles hit in this round.
  int get single => hits.where((element) => element == Hit.single).length;

  /// The amount of misses hit in this round.
  int get missed => hits.where((element) => element == Hit.missed).length;

  /// The amount of points scored in this round.
  int get points {
    return hits.fold(0, (acc, hit) {
      final int multiplier;
      switch (hit) {
        case Hit.single:
          multiplier = 1;
          break;
        case Hit.double:
          multiplier = 2;
          break;
        case Hit.triple:
          multiplier = 3;
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
