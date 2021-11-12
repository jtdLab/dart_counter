import 'package:dart_client/dart_client.dart' as c;
import 'package:dart_counter/domain/game/player_stats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_stats_dto.freezed.dart';
part 'player_stats_dto.g.dart';

@freezed
class PlayerStatsDto with _$PlayerStatsDto {
  const factory PlayerStatsDto({
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
  }) = _PlayerStatsDto;

  const PlayerStatsDto._();

  PlayerStats toDomain() {
    return PlayerStats(
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

  factory PlayerStatsDto.fromClient(c.Stats stats) {
    return PlayerStatsDto(
      average: stats.average,
      checkoutPercentage: stats.checkoutPercentage,
      firstNineAverage: stats.firstNineAverage,
      bestLegDartsThrown: stats.bestLegDartsThrown,
      bestLegAverage: stats.bestLegAverage,
      worstLegDartsThrown: stats.worstLegDartsThrown,
      worstLegAverage: stats.worstLegAverage,
      averageDartsPerLeg: stats.averageDartsPerLeg,
      firstDartAverage: stats.firstDartAverage,
      secondDartAverage: stats.secondDartAverage,
      thirdDartAverage: stats.thirdDartAverage,
      highestFinish: stats.highestFinish,
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

  factory PlayerStatsDto.fromJson(Map<String, dynamic> json) =>
      _$PlayerStatsDtoFromJson(json);
}
