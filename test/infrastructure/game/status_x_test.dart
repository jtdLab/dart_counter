import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/infrastructure/core/infrastructure_error.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dart_counter/infrastructure/game/status_x.dart';
import 'package:dart_client/dart_client.dart' as c;
import 'package:dart_game/dart_game.dart' as ex;

void main() {
  group('domain', () {
    group('toShortString', () {
      test('pending', () {
        // Arrange
        const status = Status.pending;

        // Act
        final string = status.toShortString();

        // Assert
        expect(string, 'pending');
      });

      test('running', () {
        // Arrange
        const status = Status.running;

        // Act
        final string = status.toShortString();

        // Assert
        expect(string, 'running');
      });

      test('canceled', () {
        // Arrange
        const status = Status.canceled;

        // Act
        final string = status.toShortString();

        // Assert
        expect(string, 'canceled');
      });

      test('finished', () {
        // Arrange
        const status = Status.finished;

        // Act
        final string = status.toShortString();

        // Assert
        expect(string, 'finished');
      });
    });

    group('parse', () {
      test('pending', () {
        // Arrange
        const string = 'pending';

        // Act
        final status = StatusX.parse(string);

        // Assert
        expect(status, Status.pending);
      });

      test('running', () {
        // Arrange
        const string = 'running';

        // Act
        final status = StatusX.parse(string);

        // Assert
        expect(status, Status.running);
      });

      test('canceled', () {
        // Arrange
        const string = 'canceled';

        // Act
        final status = StatusX.parse(string);

        // Assert
        expect(status, Status.canceled);
      });

      test('finished', () {
        // Arrange
        const string = 'finished';

        // Act
        final status = StatusX.parse(string);

        // Assert
        expect(status, Status.finished);
      });

      test('invalid string', () {
        // Assert
        expect(
          () => StatusX.parse('fojdsfosdf'),
          throwsA(isA<EnumParseError>()),
        );
      });
    });
  });

  group('external', () {
    group('toShortString', () {
      test('pending', () {
        // Arrange
        const status = ex.Status.pending;

        // Act
        final string = status.toShortString();

        // Assert
        expect(string, 'pending');
      });

      test('running', () {
        // Arrange
        const status = ex.Status.running;

        // Act
        final string = status.toShortString();

        // Assert
        expect(string, 'running');
      });

      test('canceled', () {
        // Arrange
        const status = ex.Status.canceled;

        // Act
        final string = status.toShortString();

        // Assert
        expect(string, 'canceled');
      });

      test('finished', () {
        // Arrange
        const status = ex.Status.finished;

        // Act
        final string = status.toShortString();

        // Assert
        expect(string, 'finished');
      });
    });

    group('parse', () {
      test('pending', () {
        // Arrange
        const string = 'pending';

        // Act
        final status = ExternalStatusX.parse(string);

        // Assert
        expect(status, ex.Status.pending);
      });

      test('running', () {
        // Arrange
        const string = 'running';

        // Act
        final status = ExternalStatusX.parse(string);

        // Assert
        expect(status, ex.Status.running);
      });

      test('canceled', () {
        // Arrange
        const string = 'canceled';

        // Act
        final status = ExternalStatusX.parse(string);

        // Assert
        expect(status, ex.Status.canceled);
      });

      test('finished', () {
        // Arrange
        const string = 'finished';

        // Act
        final status = ExternalStatusX.parse(string);

        // Assert
        expect(status, ex.Status.finished);
      });

      test('invalid string', () {
        // Assert
        expect(
          () => ExternalStatusX.parse('fojdsfosdf'),
          throwsA(isA<EnumParseError>()),
        );
      });
    });
  });

  group('client', () {
    group('toShortString', () {
      test('pending', () {
        // Arrange
        const status = c.Status.pending;

        // Act
        final string = status.toShortString();

        // Assert
        expect(string, 'pending');
      });

      test('running', () {
        // Arrange
        const status = c.Status.running;

        // Act
        final string = status.toShortString();

        // Assert
        expect(string, 'running');
      });

      test('canceled', () {
        // Arrange
        const status = c.Status.canceled;

        // Act
        final string = status.toShortString();

        // Assert
        expect(string, 'canceled');
      });

      test('finished', () {
        // Arrange
        const status = c.Status.finished;

        // Act
        final string = status.toShortString();

        // Assert
        expect(string, 'finished');
      });
    });

    group('parse', () {
      test('pending', () {
        // Arrange
        const string = 'pending';

        // Act
        final status = ClientStatusX.parse(string);

        // Assert
        expect(status, c.Status.pending);
      });

      test('running', () {
        // Arrange
        const string = 'running';

        // Act
        final status = ClientStatusX.parse(string);

        // Assert
        expect(status, c.Status.running);
      });

      test('canceled', () {
        // Arrange
        const string = 'canceled';

        // Act
        final status = ClientStatusX.parse(string);

        // Assert
        expect(status, c.Status.canceled);
      });

      test('finished', () {
        // Arrange
        const string = 'finished';

        // Act
        final status = ClientStatusX.parse(string);

        // Assert
        expect(status, c.Status.finished);
      });

      test('invalid string', () {
        // Assert
        expect(
          () => ClientStatusX.parse('fojdsfosdf'),
          throwsA(isA<EnumParseError>()),
        );
      });
    });
  });
}
