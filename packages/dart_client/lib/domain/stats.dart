import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats.freezed.dart';

@freezed
class Stats with _$Stats {
  const factory Stats({
    required double average,
    required double checkoutPercentage,
    required double firstNineAverage,
    int? bestLegDartsThrown,
    double? bestLegAverage,
    int? worstLegDartsThrown,
    double? worstLegAverage,
    double? averageDartsPerLeg,
    int? highestFinish,
    double? firstDartAverage,
    double? secondDartAverage,
    double? thirdDartAverage,
    required int fourtyPlus,
    required int sixtyPlus,
    required int eightyPlus,
    required int hundredPlus,
    required int hundredTwentyPlus,
    required int hundredFourtyPlus,
    required int hundredSixtyPlus,
    required int hundredEighty,
  }) = _Stats;

  factory Stats.dummy() => Stats(
        average: faker.randomGenerator.decimal(scale: 80, min: 30),
        checkoutPercentage: faker.randomGenerator.decimal(scale: 100),
        firstNineAverage: faker.randomGenerator.decimal(scale: 80, min: 40),
        fourtyPlus: faker.randomGenerator.integer(20, min: 5),
        sixtyPlus: faker.randomGenerator.integer(18, min: 4),
        eightyPlus: faker.randomGenerator.integer(12, min: 3),
        hundredPlus: faker.randomGenerator.integer(12, min: 2),
        hundredTwentyPlus: faker.randomGenerator.integer(8, min: 1),
        hundredFourtyPlus: faker.randomGenerator.integer(6),
        hundredSixtyPlus: faker.randomGenerator.integer(5),
        hundredEighty: faker.randomGenerator.integer(4),
      );
}
