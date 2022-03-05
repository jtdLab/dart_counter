import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/domain/user/trend.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('#merge#', () {
    test(
        'GIVEN 2 empty careerStats '
        'THEN return empty careerStats.', () {
      // Arrange & Act
      final careerStats = CareerStats.empty();
      final otherCareerStats = CareerStats.empty();

      final underTest = careerStats.merge(otherCareerStats);

      // Assert
      expect(underTest, CareerStats.empty());
    });

    test(
        'GIVEN the carrerStats has less games than other careerStats '
        'THEN return carrer stats with all fields weighted by the amount of games and all trends are taken from other careerStats.',
        () {
      // Arrange
      const lessGames = CareerStats(
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
      const moreGames = CareerStats(
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

      // Act
      final underTest = lessGames.merge(moreGames);

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

    test(
        'GIVEN carrerStats has more games than other careerStats '
        'THEN return carrer stats with all fields weighted by the amount of games and all trends are taken from careerStats.',
        () {
      // Arrange
      const moreGames = CareerStats(
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
      const lessGames = CareerStats(
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

      // Act
      final underTest = moreGames.merge(lessGames);

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
