import 'package:dart_counter/infrastructure/connectivity/fake_connectivity_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('#Methods#', () {
    group('#isOffline#', () {
      test(
        'GIVEN network access '
        'THEN return false ',
        () async {
          // Arrange
          FakeConnectivityService.hasNetworkConnection = true;
          final underTest = FakeConnectivityService();

          // Act
          final isOffline = await underTest.isOffline();

          // Assert
          expect(isOffline, false);
        },
      );

      test(
        'GIVEN no network access '
        'THEN return true ',
        () async {
          // Arrange
          FakeConnectivityService.hasNetworkConnection = false;
          final underTest = FakeConnectivityService();

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
        'THEN emit [false] ',
        () {
          // Arrange
          FakeConnectivityService.hasNetworkConnection = true;
          final underTest = FakeConnectivityService();

          // Act
          final stream = underTest.watchIsOffline();

          // Assert
          expect(stream, emitsInOrder([false]));
        },
      );

      test(
        'GIVEN no network access '
        'THEN emit [true] ',
        () {
          // Arrange
          FakeConnectivityService.hasNetworkConnection = false;
          final underTest = FakeConnectivityService();

          // Act
          final stream = underTest.watchIsOffline();

          // Assert
          expect(stream, emitsInOrder([true]));
        },
      );
    });
  });
}
