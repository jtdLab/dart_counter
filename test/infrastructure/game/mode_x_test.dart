import 'package:dart_client/dart_client.dart' as c;
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/infrastructure/core/infrastructure_error.dart';
import 'package:dart_counter/infrastructure/game/mode_x.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('domain', () {
    group('toShortString', () {
      test('firstTo', () {
        // Arrange
        const mode = Mode.firstTo;

        // Act
        final string = mode.toShortString();

        // Assert
        expect(string, 'firstTo');
      });

      test('bestOf', () {
        // Arrange
        const mode = Mode.bestOf;

        // Act
        final string = mode.toShortString();

        // Assert
        expect(string, 'bestOf');
      });
    });

    group('parse', () {
      test('firstTo', () {
        // Arrange
        const string = 'firstTo';

        // Act
        final mode = ModeX.parse(string);

        // Assert
        expect(mode, Mode.firstTo);
      });

      test('bestOf', () {
        // Arrange
        const string = 'bestOf';

        // Act
        final mode = ModeX.parse(string);

        // Assert
        expect(mode, Mode.bestOf);
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
      test('firstTo', () {
        // Arrange
        const mode = ex.Mode.firstTo;

        // Act
        final string = mode.toShortString();

        // Assert
        expect(string, 'firstTo');
      });

      test('bestOf', () {
        // Arrange
        const mode = ex.Mode.bestOf;

        // Act
        final string = mode.toShortString();

        // Assert
        expect(string, 'bestOf');
      });
    });

    group('parse', () {
      test('firstTo', () {
        // Arrange
        const string = 'firstTo';

        // Act
        final mode = ExternalModeX.parse(string);

        // Assert
        expect(mode, ex.Mode.firstTo);
      });

      test('bestOf', () {
        // Arrange
        const string = 'bestOf';

        // Act
        final mode = ExternalModeX.parse(string);

        // Assert
        expect(mode, ex.Mode.bestOf);
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

  group('client', () {
    group('toShortString', () {
      test('firstTo', () {
        // Arrange
        const mode = c.Mode.firstTo;

        // Act
        final string = mode.toShortString();

        // Assert
        expect(string, 'firstTo');
      });

      test('bestOf', () {
        // Arrange
        const mode = c.Mode.bestOf;

        // Act
        final string = mode.toShortString();

        // Assert
        expect(string, 'bestOf');
      });
    });

    group('parse', () {
      test('firstTo', () {
        // Arrange
        const string = 'firstTo';

        // Act
        final mode = ClientModeX.parse(string);

        // Assert
        expect(mode, c.Mode.firstTo);
      });

      test('bestOf', () {
        // Arrange
        const string = 'bestOf';

        // Act
        final mode = ClientModeX.parse(string);

        // Assert
        expect(mode, c.Mode.bestOf);
      });

      test('invalid string', () {
        // Assert
        expect(
          () => ClientModeX.parse('fojdsfosdf'),
          throwsA(isA<EnumParseError>()),
        );
      });
    });
  });
}
