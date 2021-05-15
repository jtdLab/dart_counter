import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'career_stats_dto.freezed.dart';
part 'career_stats_dto.g.dart';

@freezed
class CareerStatsDto with _$CareerStatsDto {
  const factory CareerStatsDto({
    required double average,
    required String averageTrend,
    required double checkoutPercentage,
    required String checkoutPercentageTrend,
    required double firstNine,
    required String firstNineTrend,
    required int games,
    required int wins,
    required int defeats,
  }) = _CareerStatsDto;

  const CareerStatsDto._();

  factory CareerStatsDto.fromDomain(CareerStats careerStats) {
    return CareerStatsDto(
      average: careerStats.average,
      averageTrend: careerStats.averageTrend.toString().split('.')[1],
      checkoutPercentage: careerStats.checkoutPercentage,
      checkoutPercentageTrend:
          careerStats.checkoutPercentageTrend.toString().split('.')[1],
      firstNine: careerStats.firstNine,
      firstNineTrend: careerStats.firstNineTrend.toString().split('.')[1],
      games: careerStats.games,
      wins: careerStats.wins,
      defeats: careerStats.defeats,
    );
  }

  CareerStats toDomain() {
    return CareerStats(
      average: average,
      averageTrend:
          Trend.values.firstWhere((e) => e.toString() == 'Trend.$averageTrend'),
      checkoutPercentage: checkoutPercentage,
      checkoutPercentageTrend: Trend.values
          .firstWhere((e) => e.toString() == 'Trend.$checkoutPercentageTrend'),
      firstNine: firstNine,
      firstNineTrend: Trend.values
          .firstWhere((e) => e.toString() == 'Trend.$firstNineTrend'),
      games: games,
      wins: wins,
      defeats: defeats,
    );
  }

  factory CareerStatsDto.fromJson(Map<String, dynamic> json) =>
      _$CareerStatsDtoFromJson(json);
}
