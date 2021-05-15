import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats.freezed.dart';

@freezed
class Stats with _$Stats {
  const factory Stats(
      {required double average,
      required double checkoutPercentage,
      required double firstNineAverage,
      int? bestLegDartsThrown,
      double? bestLegAverage,
      int? worstLegDartsThrown,
      double? worstLegAverage,
      double? averageDartsPerLeg,
      int? highestFinish,
      required int fourtyPlus,
      required int sixtyPlus,
      required int eightyPlus,
      required int hundredPlus,
      required int hundredTwentyPlus,
      required int hundredFourtyPlus,
      required int hundredSixtyPlus,
      required int hundredEighty}) = _Stats;

  factory Stats.dummy() => const Stats(
        average: 93.94,
        checkoutPercentage: 54.0,
        firstNineAverage: 92.11,
        bestLegDartsThrown: 11,
        bestLegAverage: 136.64,
        worstLegDartsThrown: 24,
        worstLegAverage: 62.63,
        averageDartsPerLeg: 17.0,
        highestFinish: 121,
        fourtyPlus: 3,
        sixtyPlus: 13,
        eightyPlus: 20,
        hundredPlus: 10,
        hundredTwentyPlus: 6,
        hundredFourtyPlus: 8,
        hundredSixtyPlus: 2,
        hundredEighty: 3,
      );
}
