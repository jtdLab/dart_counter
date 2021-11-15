import 'package:dart_counter/domain/training/mode.dart';
import 'package:dart_counter/infrastructure/core/errors.dart';
import 'package:dart_counter/infrastructure/training/mode_x.dart';
import 'package:dart_game/core/training/precision/mode.dart' as ex;
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('domain', () {
    group('toShortString', () {
      test('ascending', () {
        // Arrange
        const mode = Mode.ascending;

        // Act
        final string = mode.toShortString();

        // Assert
        expect(string, 'ascending');
      });

      test('descending', () {
        // Arrange
        const mode = Mode.descending;

        // Act
        final string = mode.toShortString();

        // Assert
        expect(string, 'descending');
      });

      test('random', () {
        // Arrange
        const mode = Mode.random;

        // Act
        final string = mode.toShortString();

        // Assert
        expect(string, 'random');
      });
    });

    group('parse', () {
      test('ascending', () {
        // Arrange
        const string = 'ascending';

        // Act
        final mode = ModeX.parse(string);

        // Assert
        expect(mode, Mode.ascending);
      });

      test('descending', () {
        // Arrange
        const string = 'descending';

        // Act
        final mode = ModeX.parse(string);

        // Assert
        expect(mode, Mode.descending);
      });

      test('random', () {
        // Arrange
        const string = 'random';

        // Act
        final mode = ModeX.parse(string);

        // Assert
        expect(mode, Mode.random);
      });

      test('invalid string', () {
        // Assert
        expect(
          () => ModeX.parse('fojdsfosdf'),
          throwsA(isA<EnumParseError>()),
        );
      });
    });
  });

  group('external', () {
    group('toShortString', () {
      test('ascending', () {
        // Arrange
        const mode = ex.Mode.ascending;

        // Act
        final string = mode.toShortString();

        // Assert
        expect(string, 'ascending');
      });

      test('descending', () {
        // Arrange
        const mode = ex.Mode.descending;

        // Act
        final string = mode.toShortString();

        // Assert
        expect(string, 'descending');
      });

      test('random', () {
        // Arrange
        const mode = ex.Mode.random;

        // Act
        final string = mode.toShortString();

        // Assert
        expect(string, 'random');
      });
    });

    group('parse', () {
      test('ascending', () {
        // Arrange
        const string = 'ascending';

        // Act
        final mode = ExternalModeX.parse(string);

        // Assert
        expect(mode, ex.Mode.ascending);
      });

      test('descending', () {
        // Arrange
        const string = 'descending';

        // Act
        final mode = ExternalModeX.parse(string);

        // Assert
        expect(mode, ex.Mode.descending);
      });

      test('random', () {
        // Arrange
        const string = 'random';

        // Act
        final mode = ExternalModeX.parse(string);

        // Assert
        expect(mode, ex.Mode.random);
      });

      test('invalid string', () {
        // Assert
        expect(
          () => ExternalModeX.parse('fojdsfosdf'),
          throwsA(isA<EnumParseError>()),
        );
      });
    });
  });
}
