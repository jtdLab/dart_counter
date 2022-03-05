import 'package:dart_counter/domain/user/trend.dart';
import 'package:dart_counter/infrastructure/core/infrastructure_error.dart';
import 'package:dart_counter/infrastructure/user/trend_x.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('#toShortString#', () {
    test(
        'GIVEN Trend.up '
        'THEN return up.', () {
      // Arrange
      const trend = Trend.up;

      // Act
      final result = trend.toShortString();

      // Assert
      expect(result, 'up');
    });

    test(
        'GIVEN Trend.none '
        'THEN return none.', () {
      // Arrange
      const trend = Trend.none;

      // Act
      final result = trend.toShortString();

      // Assert
      expect(result, 'none');
    });

    test(
        'GIVEN Trend.down '
        'THEN return down.', () {
      // Arrange
      const trend = Trend.down;

      // Act
      final result = trend.toShortString();

      // Assert
      expect(result, 'down');
    });
  });

  group('#parse#', () {
    test(
        'GIVEN up '
        'THEN return Trend.up.', () {
      // Arrange
      const trend = 'up';

      // Act
      final result = TrendX.parse(trend);

      // Assert
      expect(result, Trend.up);
    });

    test(
        'GIVEN none '
        'THEN return Trend.none.', () {
      // Arrange
      const trend = 'none';

      // Act
      final result = TrendX.parse(trend);

      // Assert
      expect(result, Trend.none);
    });

    test(
        'GIVEN down '
        'THEN return Trend.down.', () {
      // Arrange
      const trend = 'down';

      // Act
      final result = TrendX.parse(trend);

      // Assert
      expect(result, Trend.down);
    });

    test(
        'GIVEN some invalid string '
        'THEN throw EnumParseError.', () {
      // Arrange
      const trend = 'sdfosnfosnd';

      // Act & Assert
      expect(
        () => TrendX.parse(trend),
        throwsA(isA<EnumParseError>()),
      );
    });
  });
}
