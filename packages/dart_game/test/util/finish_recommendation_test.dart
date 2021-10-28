import 'package:flutter_test/flutter_test.dart';

void main() {
  group('getFor', () {
    test(
        'GIVEN 0 <= finishable points <= 170 '
        'WHEN getFor called '
        'THEN return not empty list.', () {
      for (int i = 2; i <= 170; i++) {
        // Arrange
        final points = i;
        if (![159, 162, 163, 165, 166, 168, 169].contains(points)) {
          // Act & Assert
          expect(FinishRecommendation.getFor(points: points)?.isNotEmpty, true);
        }
      }
    });

    test(
        'GIVEN 0 <= finishable points <= 170 '
        'WHEN getFor called '
        'THEN return list with a double as the last dart.', () {
      for (int i = 2; i <= 170; i++) {
        // Arrange
        final points = i;
        if (![159, 162, 163, 165, 166, 168, 169].contains(points)) {
          // Act & Assert
          expect(FinishRecommendation.getFor(points: points)?.last[0], 'D');
        }
      }
    });

    test(
        'GIVEN 0 <= finishable points <= 170 '
        'WHEN getFor called '
        'THEN the sum of the points of the returned list should match the points in args.',
        () {
      int calcPointsFromFinishRecommendation(
        List<String> finishRecommendation,
      ) {
        int points = 0;
        for (String s in finishRecommendation) {
          if (s[0] == 'T') {
            points += 3 * int.parse(s.substring(1));
          } else if (s[0] == 'D') {
            points += 2 * int.parse(s.substring(1));
          } else {
            points += int.parse(s);
          }
        }
        return points;
      }

      for (int i = 2; i <= 170; i++) {
        // Arrange
        final points = i;
        if (![159, 162, 163, 165, 166, 168, 169].contains(points)) {
          // Act & Assert
          expect(
            calcPointsFromFinishRecommendation(
              FinishRecommendation.getFor(points: points)!,
            ),
            points,
          );
        }
      }
    });

    test(
        'GIVEN points = null '
        'WHEN getFor called '
        'THEN return null.', () {
      // Arrange
      final points = null;

      // Act & Assert
      expect(FinishRecommendation.getFor(points: points), null);
    });

    test(
        'GIVEN points < 0 '
        'WHEN getFor called '
        'THEN return null.', () {
      // Arrange
      final points = -1;

      // Act & Assert
      expect(FinishRecommendation.getFor(points: points), null);
    });

    test(
        'GIVEN points > 170 '
        'WHEN getFor called '
        'THEN return null.', () {
      // Arrange
      final points = 171;

      // Act & Assert
      expect(FinishRecommendation.getFor(points: points), null);
    });

    test(
        'GIVEN 0 <= not finishable points <= 170 '
        'WHEN getFor called '
        'THEN return null.', () {
      // Arrange
      final points = [0, 1, 159, 162, 163, 165, 166, 168, 169];

      for (final p in points) {
        // Act & Assert
        expect(FinishRecommendation.getFor(points: p), null);
      }
    });
  });
}
