import 'package:dart_counter/infrastructure/connectivity/fake_connectivity_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late FakeConnectivityService underTest;

  setUp(() {
    underTest = FakeConnectivityService();
  });

  group('#Methods#', () {
    group('#isOffline#', () {
      test(
        'GIVEN network access '
        'THEN return false.',
        () async {
          // Arrange
          // network access
          FakeConnectivityService.hasNetworkConnection = true;

          // Act
          final isOffline = await underTest.isOffline();

          // Assert
          expect(isOffline, false);
        },
      );

      test(
        'GIVEN no network access '
        'THEN return true.',
        () async {
          // Arrange
          // no network access
          FakeConnectivityService.hasNetworkConnection = false;

          // Act
          final isOffline = await underTest.isOffline();

          // Assert
          expect(isOffline, true);
        },
      );
    });

    group('#watchIsOffline#', () {
      test(
        'GIVEN network access '
        'THEN emit [false].',
        () {
          // Arrange
          // network access
          FakeConnectivityService.hasNetworkConnection = true;

          // Act
          final stream = underTest.watchIsOffline();

          // Assert
          expect(stream, emitsInOrder([false]));
        },
      );

      test(
        'GIVEN no network access '
        'THEN emit [true].',
        () {
          // Arrange
          // no network access
          FakeConnectivityService.hasNetworkConnection = false;

          // Act
          final stream = underTest.watchIsOffline();

          // Assert
          expect(stream, emitsInOrder([true]));
        },
      );
    });
  });
}
