import 'package:flutter_test/flutter_test.dart';
import 'package:dart_game/single_training_game.dart';

void main() {
  group('constructor', () {
    group('()', () {
      group('valid args', () {
        test(
            'GIVEN valid args '
            'WHEN new instance created '
            'THEN assign props correctly.', () {
          // Arrange
          final targetValue = 20;

          // Act
          final round = Round(targetValue: targetValue);

          // Assert
          expect(round.targetValue, targetValue);
          expect(round.hits, []);
        });
      });
    });

    group('fromData()', () {
      group('valid args', () {
        test(
            'GIVEN valid args '
            'WHEN new instance created '
            'THEN assign props correctly.', () {
          // Arrange
          final targetValue = 20;
          final hits = [Hit.single, Hit.missed, Hit.double];

          // Act
          final round = Round.fromData(targetValue: targetValue, hits: hits);

          // Assert
          expect(round.targetValue, targetValue);
          expect(round.hits, hits);
        });
      });
    });
  });

  group('getters', () {
    group('triples', () {
      test(
          'GIVEN 0 triples '
          'WHEN get triples '
          'THEN return 0.', () {
        // Arrange
        final targetValue = 20;
        final hits = [Hit.missed, Hit.missed, Hit.missed];

        // Act
        final round = Round.fromData(targetValue: targetValue, hits: hits);

        // Assert
        expect(round.triples, 0);
      });

      test(
          'GIVEN >0 triples '
          'WHEN get triples '
          'THEN return correct amount.', () {
        // Arrange
        final targetValue = 20;
        final hits = [Hit.triple, Hit.triple, Hit.missed];

        // Act
        final round = Round.fromData(targetValue: targetValue, hits: hits);

        // Assert
        expect(round.triples, 2);
      });
    });

    group('doubles', () {
      test(
          'GIVEN 0 doubles '
          'WHEN get doubles '
          'THEN return 0.', () {
        // Arrange
        final targetValue = 20;
        final hits = [Hit.missed, Hit.missed, Hit.missed];

        // Act
        final round = Round.fromData(targetValue: targetValue, hits: hits);

        // Assert
        expect(round.doubles, 0);
      });

      test(
          'GIVEN >0 doubles '
          'WHEN get doubles '
          'THEN return correct amount.', () {
        // Arrange
        final targetValue = 20;
        final hits = [Hit.double, Hit.double, Hit.missed];

        // Act
        final round = Round.fromData(targetValue: targetValue, hits: hits);

        // Assert
        expect(round.doubles, 2);
      });
    });

    group('singles', () {
      test(
          'GIVEN 0 singles '
          'WHEN get singles '
          'THEN return 0.', () {
        // Arrange
        final targetValue = 20;
        final hits = [Hit.missed, Hit.missed, Hit.missed];

        // Act
        final round = Round.fromData(targetValue: targetValue, hits: hits);

        // Assert
        expect(round.single, 0);
      });

      test(
          'GIVEN >0 singles '
          'WHEN get singles '
          'THEN return correct amount.', () {
        // Arrange
        final targetValue = 20;
        final hits = [Hit.single, Hit.single, Hit.missed];

        // Act
        final round = Round.fromData(targetValue: targetValue, hits: hits);

        // Assert
        expect(round.single, 2);
      });
    });

    group('missed', () {
      test(
          'GIVEN 0 missed '
          'WHEN get missed '
          'THEN return 0.', () {
        // Arrange
        final targetValue = 20;
        final hits = [Hit.triple, Hit.triple, Hit.triple];

        // Act
        final round = Round.fromData(targetValue: targetValue, hits: hits);

        // Assert
        expect(round.missed, 0);
      });

      test(
          'GIVEN >0 missed '
          'WHEN get missed '
          'THEN return correct amount.', () {
        // Arrange
        final targetValue = 20;
        final hits = [Hit.missed, Hit.triple, Hit.missed];

        // Act
        final round = Round.fromData(targetValue: targetValue, hits: hits);

        // Assert
        expect(round.missed, 2);
      });
    });

    group('points', () {
      test(
          'GIVEN 0 points '
          'WHEN get points '
          'THEN return 0.', () {
        // Arrange
        final targetValue = 20;
        final hits = [Hit.missed, Hit.missed, Hit.missed];

        // Act
        final round = Round.fromData(targetValue: targetValue, hits: hits);

        // Assert
        expect(round.points, 0);
      });

      test(
          'GIVEN >0 missed '
          'WHEN get missed '
          'THEN return correct amount.', () {
        // Arrange
        final targetValue = 20;
        final hits = [Hit.missed, Hit.triple, Hit.single];

        // Act
        final round = Round.fromData(targetValue: targetValue, hits: hits);

        // Assert
        expect(round.points, 80);
      });
    });
  });

  group('toString()', () {
    test(
        'GIVEN valid args '
        'WHEN toString() called '
        'THEN return correct string representation.', () {
      // Arrange
      final targetValue = 20;
      final hits = [Hit.single, Hit.missed, Hit.single];

      // Act & Assert
      expect(
        Round.fromData(targetValue: targetValue, hits: hits).toString(),
        'Round{targetValue: $targetValue, hits: $hits}',
      );
    });
  });
}
