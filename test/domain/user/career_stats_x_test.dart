import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('merge', () {
    const careerStats = CareerStats(
      average: 10,
      averageTrend: Trend.down,
      checkoutPercentage: 0.5,
      checkoutPercentageTrend: Trend.down,
      firstNine: 10,
      firstNineTrend: Trend.down,
      games: 10,
      wins: 5,
      defeats: 5,
    );
    const otherCareerStats = CareerStats(
      average: 40,
      averageTrend: Trend.up,
      checkoutPercentage: 1.0,
      checkoutPercentageTrend: Trend.up,
      firstNine: 40,
      firstNineTrend: Trend.up,
      games: 90,
      wins: 80,
      defeats: 10,
    );

    // TODO this test may throw when the careerstats domain object validates itselve
    test(
        'returns carrer stats with all fields equal 0 and all trends are none '
        'when the sum of games is 0', () {
      // Arrange & Act
      final underTest = careerStats
          .copyWith(games: 0)
          .merge(otherCareerStats.copyWith(games: 0));

      // Assert
      expect(
        underTest,
        const CareerStats(
          average: 0,
          averageTrend: Trend.none,
          checkoutPercentage: 0,
          checkoutPercentageTrend: Trend.none,
          firstNine: 0,
          firstNineTrend: Trend.none,
          games: 0,
          wins: 0,
          defeats: 0,
        ),
      );
    });

    test(
        'returns carrer stats with all fields weighted by the amount of games and all trends are taken from the careerStats with more games '
        'when the sum of games is >0', () {
      // Act
      final underTest = careerStats.merge(otherCareerStats);

      // Assert
      expect(
        underTest,
        const CareerStats(
          average: 37,
          averageTrend: Trend.up,
          checkoutPercentage: 0.95,
          checkoutPercentageTrend: Trend.up,
          firstNine: 37,
          firstNineTrend: Trend.up,
          games: 100,
          wins: 85,
          defeats: 15,
        ),
      );
    });
  });
}
