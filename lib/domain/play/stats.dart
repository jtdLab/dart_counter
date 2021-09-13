import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats.freezed.dart';

@freezed
class LegStats with _$LegStats {
  const factory LegStats({
    @Default(0) double average,
    @Default(0) double checkoutPercentage,
    @Default(0) double firstNineAverage,
    double? firstDartAverage,
    double? secondDartAverage,
    double? thirdDartAverage,
    @Default(0) int fourtyPlus,
    @Default(0) int sixtyPlus,
    @Default(0) int eightyPlus,
    @Default(0) int hundredPlus,
    @Default(0) int hundredTwentyPlus,
    @Default(0) int hundredFourtyPlus,
    @Default(0) int hundredSixtyPlus,
    @Default(0) int hundredEighty,
  }) = _LegStats;

  factory LegStats.dummy() => LegStats(
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

@freezed
class SetStats with _$SetStats {
  const factory SetStats({
    @Default(0) double average,
    @Default(0) double checkoutPercentage,
    @Default(0) double firstNineAverage,
    int? bestLegDartsThrown,
    double? bestLegAverage,
    int? worstLegDartsThrown,
    double? worstLegAverage,
    double? averageDartsPerLeg,
    int? highestFinish,
    double? firstDartAverage,
    double? secondDartAverage,
    double? thirdDartAverage,
    @Default(0) int fourtyPlus,
    @Default(0) int sixtyPlus,
    @Default(0) int eightyPlus,
    @Default(0) int hundredPlus,
    @Default(0) int hundredTwentyPlus,
    @Default(0) int hundredFourtyPlus,
    @Default(0) int hundredSixtyPlus,
    @Default(0) int hundredEighty,
  }) = _SetStats;

  factory SetStats.dummy() => SetStats(
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

@freezed
class PlayerStats with _$PlayerStats {
  const factory PlayerStats({
    @Default(0) double average,
    @Default(0) double checkoutPercentage,
    @Default(0) double firstNineAverage,
    int? bestLegDartsThrown,
    double? bestLegAverage,
    int? worstLegDartsThrown,
    double? worstLegAverage,
    double? averageDartsPerLeg,
    int? highestFinish,
    double? firstDartAverage,
    double? secondDartAverage,
    double? thirdDartAverage,
    @Default(0) int fourtyPlus,
    @Default(0) int sixtyPlus,
    @Default(0) int eightyPlus,
    @Default(0) int hundredPlus,
    @Default(0) int hundredTwentyPlus,
    @Default(0) int hundredFourtyPlus,
    @Default(0) int hundredSixtyPlus,
    @Default(0) int hundredEighty,
  }) = _PlayerStats;

  factory PlayerStats.dummy() => PlayerStats(
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
