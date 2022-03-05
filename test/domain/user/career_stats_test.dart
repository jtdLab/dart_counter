import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/domain/user/trend.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('#Constructors#', () {
    group('#empty#', () {
      test(
          'Return career stats with all numbers set to 0 and all trends set to none.',
          () {
        // Act
        final underTest = CareerStats.empty();

        // Act
        expect(
          underTest,
          const CareerStats(
            average: 0.0,
            averageTrend: Trend.none,
            checkoutPercentage: 0.0,
            checkoutPercentageTrend: Trend.none,
            firstNine: 0.0,
            firstNineTrend: Trend.none,
            games: 0,
            wins: 0,
            defeats: 0,
          ),
        );
      });
    });
  });
}
