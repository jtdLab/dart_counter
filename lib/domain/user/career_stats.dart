import 'package:freezed_annotation/freezed_annotation.dart';

part 'career_stats.freezed.dart';

enum Trend { up, down, none }

@freezed
class CareerStats with _$CareerStats {
  const factory CareerStats({
    required double average,
    required Trend averageTrend,
    required double checkoutPercentage,
    required Trend checkoutPercentageTrend,
    required double firstNine,
    required Trend firstNineTrend,
    required int games,
    required int wins,
    required int defeats,
  }) = _CareerStats;

  factory CareerStats.initial() => const CareerStats(
        average: 0.0,
        averageTrend: Trend.none,
        checkoutPercentage: 0.0,
        checkoutPercentageTrend: Trend.none,
        firstNine: 0.0,
        firstNineTrend: Trend.none,
        games: 0,
        wins: 0,
        defeats: 0,
      );
}
