import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'career_stats.freezed.dart';

/// Indicates wheter a specific stat increased, declined or did not change in recent time.
enum Trend { up, down, none }

/// Error that may occur when parsing a String to a [Trend]
class TrendParseError extends Error {
  final String notParsableString;

  TrendParseError(this.notParsableString);

  @override
  String toString() => 'Error parsing $notParsableString to Trend';
}

/// Utility methods to convert a [String] to [Trend] and vice versa.
extension Trends on Trend {
  String toShortString() {
    return toString().split('.').last;
  }

  static Trend parse(String str) {
    return Trend.values.firstWhere(
      (e) => e.toString() == 'Trend.$str',
      orElse: () => throw TrendParseError(str),
    );
  }
}

/// Domain model of the stats an app-user has achieved since created.
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

  factory CareerStats.dummy() {
    final games = faker.randomGenerator.integer(200);
    final wins = faker.randomGenerator.integer(games);
    final defeats = games - wins;

    return CareerStats(
      average: faker.randomGenerator.element([
        19.99,
        28.99,
        37.53,
        48.88,
        54.01,
        60.82,
        75.90,
        90.00,
        103.04,
      ]),
      averageTrend:
          faker.randomGenerator.element([Trend.none, Trend.up, Trend.down]),
      checkoutPercentage: faker.randomGenerator.element([
        6.55,
        13.99,
        26.99,
        39.53,
        45.88,
        51.01,
        68.82,
        76.90,
        90.00,
      ]),
      checkoutPercentageTrend:
          faker.randomGenerator.element([Trend.none, Trend.up, Trend.down]),
      firstNine: faker.randomGenerator.element([
        15.94,
        23.29,
        39.56,
        46.28,
        59.41,
        66.28,
        71.09,
        94.00,
        105.40,
      ]),
      firstNineTrend:
          faker.randomGenerator.element([Trend.none, Trend.up, Trend.down]),
      games: games,
      wins: wins,
      defeats: defeats,
    );
  }
}
