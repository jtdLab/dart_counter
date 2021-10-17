import 'package:dart_client/dart_client.dart' as dc;
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dart_counter/domain/play/stats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats_dto.freezed.dart';
part 'stats_dto.g.dart';

@freezed
class PlayerStatsDto with _$PlayerStatsDto {
  const factory PlayerStatsDto({
    required double average,
    double? checkoutPercentage,
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
  }) = _PlayerStatsDto;

  const PlayerStatsDto._();

  factory PlayerStatsDto.fromDomain(PlayerStats stats) {
    return PlayerStatsDto(
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

// TODO remove or keep
/**
 *   factory PlayerStatsDto.fromExternal(ex.Stats stats) {
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

 */
  factory PlayerStatsDto.fromClient(dc.Stats stats) {
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

  factory PlayerStatsDto.fromJson(Map<String, dynamic> json) =>
      _$PlayerStatsDtoFromJson(json);
}
