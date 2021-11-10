import 'package:dart_counter/infrastructure/connectivity/mocked_connectivity_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('isOffline', () {
    test(
      'GIVEN network access '
      'THEN return false ',
      () async {
        // Arrange
        MockedConnectivityService.hasNetworkConnection = true;
        final underTest = MockedConnectivityService();

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
        MockedConnectivityService.hasNetworkConnection = false;
        final underTest = MockedConnectivityService();

        // Act
        final isOffline = await underTest.isOffline();

        // Assert
        expect(isOffline, true);
      },
    );
  });

  group('watchIsOffline', () {
    test(
      'GIVEN network access '
      'THEN emit [false] ',
      () {
        // Arrange
        MockedConnectivityService.hasNetworkConnection = true;
        final underTest = MockedConnectivityService();

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
        MockedConnectivityService.hasNetworkConnection = false;
        final underTest = MockedConnectivityService();

        // Act
        final stream = underTest.watchIsOffline();

        // Assert
        expect(stream, emitsInOrder([true]));
      },
    );
  });
}
