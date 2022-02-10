import 'package:dart_counter/infrastructure/core/infrastructure_error.dart';
import 'package:dart_counter/infrastructure/training/bobs_twenty_seven/mode_x.dart';
import 'package:dart_game/bobs_twenty_seven_training_game.dart' as ex;
import 'package:dart_counter/domain/training/bobs_twenty_seven/mode.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('domain', () {
    group('toShortString', () {
      test('easy', () {
        // Arrange
        const mode = Mode.easy;

        // Act
        final string = mode.toShortString();

        // Assert
        expect(string, 'easy');
      });

      test('hard', () {
        // Arrange
        const mode = Mode.hard;

        // Act
        final string = mode.toShortString();

        // Assert
        expect(string, 'hard');
      });
    });

    group('parse', () {
      test('easy', () {
        // Arrange
        const string = 'easy';

        // Act
        final mode = ModeX.parse(string);

        // Assert
        expect(mode, Mode.easy);
      });

      test('hard', () {
        // Arrange
        const string = 'hard';

        // Act
        final mode = ModeX.parse(string);

        // Assert
        expect(mode, Mode.hard);
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
      test('easy', () {
        // Arrange
        const mode = ex.Mode.easy;

        // Act
        final string = mode.toShortString();

        // Assert
        expect(string, 'easy');
      });

      test('hard', () {
        // Arrange
        const mode = ex.Mode.hard;

        // Act
        final string = mode.toShortString();

        // Assert
        expect(string, 'hard');
      });
    });

    group('parse', () {
      test('easy', () {
        // Arrange
        const string = 'easy';

        // Act
        final mode = ExternalModeX.parse(string);

        // Assert
        expect(mode, ex.Mode.easy);
      });

      test('hard', () {
        // Arrange
        const string = 'hard';

        // Act
        final mode = ExternalModeX.parse(string);

        // Assert
        expect(mode, ex.Mode.hard);
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
