import 'package:dart_client/domain/stats.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats_dto.freezed.dart';
part 'stats_dto.g.dart';

@freezed
class StatsDto with _$StatsDto {
  const factory StatsDto({
    double? average,
    double? checkoutPercentage,
    double? firstNineAverage,
    int? bestLegDartsThrown,
    double? bestLegAverage,
    int? worstLegDartsThrown,
    double? worstLegAverage,
    double? averageDartsPerLeg,
    int? highestFinish,
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
  }) = _StatsDto;

  const StatsDto._();

  factory StatsDto.fromDomain(Stats stats) {
    return StatsDto(
      average: stats.average,
      checkoutPercentage: stats.checkoutPercentage,
      firstNineAverage: stats.firstNineAverage,
      bestLegDartsThrown: stats.bestLegDartsThrown,
      bestLegAverage: stats.bestLegAverage,
      worstLegDartsThrown: stats.worstLegDartsThrown,
      worstLegAverage: stats.worstLegAverage,
      averageDartsPerLeg: stats.averageDartsPerLeg,
      highestFinish: stats.highestFinish,
      firstDartAverage: stats.firstDartAverage,
      secondDartAverage: stats.secondDartAverage,
      thirdDartAverage: stats.thirdDartAverage,
      fourtyPlus: stats.fourtyPlus,
      sixtyPlus: stats.sixtyPlus,
      eightyPlus: stats.eightyPlus,
      hundredPlus: stats.hundredPlus,
      hundredTwentyPlus: stats.hundredTwentyPlus,
      hundredFourtyPlus: stats.hundredFourtyPlus,
      hundredSixtyPlus: stats.hundredSixtyPlus,
      hundredEighty: stats.hundredEighty,
    );
  }

  Stats toDomain() {
    return Stats(
      average: average,
      checkoutPercentage: checkoutPercentage,
      firstNineAverage: firstNineAverage,
      bestLegDartsThrown: bestLegDartsThrown,
      bestLegAverage: bestLegAverage,
      worstLegDartsThrown: worstLegDartsThrown,
      worstLegAverage: worstLegAverage,
      averageDartsPerLeg: averageDartsPerLeg,
      highestFinish: highestFinish,
      firstDartAverage: firstDartAverage,
      secondDartAverage: secondDartAverage,
      thirdDartAverage: thirdDartAverage,
      fourtyPlus: fourtyPlus,
      sixtyPlus: sixtyPlus,
      eightyPlus: eightyPlus,
      hundredPlus: hundredPlus,
      hundredTwentyPlus: hundredTwentyPlus,
      hundredFourtyPlus: hundredFourtyPlus,
      hundredSixtyPlus: hundredSixtyPlus,
      hundredEighty: hundredEighty,
    );
  }

  factory StatsDto.fromJson(Map<String, dynamic> json) =>
      _$StatsDtoFromJson(json);
}
