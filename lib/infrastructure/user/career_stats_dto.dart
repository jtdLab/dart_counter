import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/infrastructure/core/infrastructure_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'career_stats_dto.freezed.dart';
part 'career_stats_dto.g.dart';

/// Utility methods to convert a [String] to [Trend] and vice versa.
extension TrendX on Trend {
  String toShortString() {
    return toString().split('.').last;
  }

  static Trend parse(String str) {
    return Trend.values.firstWhere(
      (e) => e.toString() == 'Trend.$str',
      orElse: () => throw EnumParseError<Trend>(str),
    );
  }
}

/// Data transfer object corresponing to [CareerStats].
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
      averageTrend: careerStats.averageTrend.toShortString(),
      checkoutPercentage: careerStats.checkoutPercentage,
      checkoutPercentageTrend:
          careerStats.checkoutPercentageTrend.toShortString(),
      firstNine: careerStats.firstNine,
      firstNineTrend: careerStats.firstNineTrend.toShortString(),
      games: careerStats.games,
      wins: careerStats.wins,
      defeats: careerStats.defeats,
    );
  }

  CareerStats toDomain() {
    return CareerStats(
      average: average,
      averageTrend: TrendX.parse(averageTrend),
      checkoutPercentage: checkoutPercentage,
      checkoutPercentageTrend: TrendX.parse(checkoutPercentageTrend),
      firstNine: firstNine,
      firstNineTrend: TrendX.parse(firstNineTrend),
      games: games,
      wins: wins,
      defeats: defeats,
    );
  }

  factory CareerStatsDto.fromJson(Map<String, dynamic> json) =>
      _$CareerStatsDtoFromJson(json);
}
