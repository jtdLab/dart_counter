import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'leg_stats.freezed.dart';

@freezed
class LegStats with _$LegStats {
  // coverage:ignore-start
  const factory LegStats({
    double? average,
    double? checkoutPercentage,
    double? firstNineAverage,
    double? firstDartAverage,
    double? secondDartAverage,
    double? thirdDartAverage,
    int? fourtyPlus,
    int? sixtyPlus,
    int? eightyPlus,
    int? hundredPlus,
    int? hundredTwentyPlus,
    int? hundredFourtyPlus,
    int? hundredSixtyPlus,
    int? hundredEighty,
  }) = _LegStats;

  factory LegStats.dummy() => LegStats(
        average: faker.randomGenerator.decimal(scale: 80, min: 30),
        checkoutPercentage: faker.randomGenerator.element([
          null,
          faker.randomGenerator.decimal(scale: 100),
        ]),
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
  // coverage:ignore-end
}
