import 'package:flutter_test/flutter_test.dart';
import 'package:dart_game/dart_game.dart';

void main() {
  group('constructor', () {
    group('()', () {
      group('valid args', () {
        test(
            'GIVEN valid args '
            'WHEN new instance created '
            'THEN assign props correctly.', () {
          // Arrange
          final type = DartType.triple;
          final value = 20;

          // Act
          final dart = Dart(type: type, value: value);

          // Assert
          expect(dart.type, type);
          expect(dart.value, value);
        });
      });

      group('invalid args', () {
        test(
            'GIVEN type = triple and value = 25 '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final type = DartType.triple;
          final value = 25;

          // Act & Assert

          expect(
            () => Dart(type: type, value: value),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN value = 21, 22, 23 or 24 '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final type = DartType.triple;
          for (int i = 21; i < 25; i++) {
            final value = i;

            // Act & Assert
            expect(
              () => Dart(type: type, value: value),
              throwsA(isArgumentError),
            );
          }
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
          final type = DartType.triple;
          final value = 20;

          // Act
          final dart = Dart.fromData(type: type, value: value);

          // Assert
          expect(dart.type, type);
          expect(dart.value, value);
        });
      });

      group('invalid args', () {
        test(
            'GIVEN type = triple and value = 25 '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final type = DartType.triple;
          final value = 25;

          // Act & Assert
          expect(
            () => Dart.fromData(type: type, value: value),
            throwsA(isArgumentError),
          );
        });

        test(
            'GIVEN value = 21, 22, 23 or 24 '
            'WHEN new instance created '
            'THEN throw ArgumentError.', () {
          // Arrange
          final type = DartType.triple;
          for (int i = 21; i < 25; i++) {
            final value = i;

            // Act & Assert
            expect(
              () => Dart.fromData(type: type, value: value),
              throwsA(isArgumentError),
            );
          }
        });
      });
    });
  });

  group('getters', () {
    group('points', () {
      test(
          'GIVEN type = single '
          'WHEN get points '
          'THEN return value.', () {
        // Arrange
        final value = 20;
        final type = DartType.single;
        final dart = Dart(type: type, value: value);

        // Act & Assert
        expect(dart.points, value);
      });

      test(
          'GIVEN type = double '
          'WHEN get points '
          'THEN return 2 * value.', () {
        // Arrange
        final value = 20;
        final type = DartType.double;
        final dart = Dart(type: type, value: value);

        // Act & Assert
        expect(dart.points, 2 * value);
      });

      test(
          'GIVEN type = triple '
          'WHEN get points '
          'THEN return 3 * value.', () {
        // Arrange
        final value = 20;
        final type = DartType.triple;
        final dart = Dart(type: type, value: value);

        // Act & Assert
        expect(dart.points, 3 * value);
      });
    });
  });

  group('toString()', () {
    test(
        'GIVEN type = single '
        'WHEN toString() called '
        'THEN return correct string representation.', () {
      // Arrange
      final value = 20;
      final type = DartType.single;

      // Act & Assert
      expect(
        Dart(type: type, value: value).toString(),
        'Dart{type: single, value: 20}',
      );
    });

    test(
        'GIVEN type = double'
        'WHEN toString() called '
        'THEN return correct string representation.', () {
      // Arrange
      final value = 20;
      final type = DartType.double;

      // Act & Assert
      expect(
        Dart(type: type, value: value).toString(),
        'Dart{type: double, value: 20}',
      );
    });

    test(
        'GIVEN type = triple '
        'WHEN toString() called '
        'THEN return correct string representation.', () {
      // Arrange
      final value = 20;
      final type = DartType.triple;

      // Act & Assert
      expect(
        Dart(type: type, value: value).toString(),
        'Dart{type: triple, value: 20}',
      );
    });
  });
}
