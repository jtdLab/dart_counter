import 'package:dart_client/dart_client.dart' as c;
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/infrastructure/core/infrastructure_error.dart';
import 'package:dart_counter/infrastructure/game/type_x.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('domain', () {
    group('toShortString', () {
      test('legs', () {
        // Arrange
        const type = Type.legs;

        // Act
        final string = type.toShortString();

        // Assert
        expect(string, 'legs');
      });

      test('sets', () {
        // Arrange
        const type = Type.sets;

        // Act
        final string = type.toShortString();

        // Assert
        expect(string, 'sets');
      });
    });

    group('parse', () {
      test('legs', () {
        // Arrange
        const string = 'legs';

        // Act
        final type = TypeX.parse(string);

        // Assert
        expect(type, Type.legs);
      });

      test('sets', () {
        // Arrange
        const string = 'sets';

        // Act
        final type = TypeX.parse(string);

        // Assert
        expect(type, Type.sets);
      });

      test('invalid string', () {
        // Assert
        expect(
          () => TypeX.parse('fojdsfosdf'),
          throwsA(isA<EnumParseError>()),
        );
      });
    });
  });

  group('external', () {
    group('toShortString', () {
      test('legs', () {
        // Arrange
        const type = ex.Type.legs;

        // Act
        final string = type.toShortString();

        // Assert
        expect(string, 'legs');
      });

      test('sets', () {
        // Arrange
        const type = ex.Type.sets;

        // Act
        final string = type.toShortString();

        // Assert
        expect(string, 'sets');
      });
    });

    group('parse', () {
      test('legs', () {
        // Arrange
        const string = 'legs';

        // Act
        final type = ExternalTypeX.parse(string);

        // Assert
        expect(type, ex.Type.legs);
      });

      test('sets', () {
        // Arrange
        const string = 'sets';

        // Act
        final type = ExternalTypeX.parse(string);

        // Assert
        expect(type, ex.Type.sets);
      });

      test('invalid string', () {
        // Assert
        expect(
          () => ExternalTypeX.parse('fojdsfosdf'),
          throwsA(isA<EnumParseError>()),
        );
      });
    });
  });

  group('client', () {
    group('toShortString', () {
      test('legs', () {
        // Arrange
        const type = c.Type.legs;

        // Act
        final string = type.toShortString();

        // Assert
        expect(string, 'legs');
      });

      test('sets', () {
        // Arrange
        const type = c.Type.sets;

        // Act
        final string = type.toShortString();

        // Assert
        expect(string, 'sets');
      });
    });

    group('parse', () {
      test('legs', () {
        // Arrange
        const string = 'legs';

        // Act
        final type = ClientTypeX.parse(string);

        // Assert
        expect(type, c.Type.legs);
      });

      test('sets', () {
        // Arrange
        const string = 'sets';

        // Act
        final type = ClientTypeX.parse(string);

        // Assert
        expect(type, c.Type.sets);
      });

      test('invalid string', () {
        // Assert
        expect(
          () => ClientTypeX.parse('fojdsfosdf'),
          throwsA(isA<EnumParseError>()),
        );
      });
    });
  });
}
