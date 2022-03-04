import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dart_counter/infrastructure/connectivity/connectivity_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockConnectivity extends Mock implements Connectivity {}

void main() {
  late MockConnectivity mockConnectivity;

  late ConnectivityService underTest;

  setUp(() {
    mockConnectivity = MockConnectivity();

    underTest = ConnectivityService(mockConnectivity);
  });

  group('#Methods#', () {
    group('#isOffline#', () {
      test(
        'GIVEN network access '
        'THEN return false.',
        () async {
          // Arrange
          // network access
          when(() => mockConnectivity.checkConnectivity())
              .thenAnswer((_) async => ConnectivityResult.mobile);

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
          when(() => mockConnectivity.checkConnectivity())
              .thenAnswer((_) async => ConnectivityResult.none);

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
          when(() => mockConnectivity.onConnectivityChanged)
              .thenAnswer((_) => Stream.value(ConnectivityResult.mobile));

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
          when(() => mockConnectivity.onConnectivityChanged)
              .thenAnswer((_) => Stream.value(ConnectivityResult.none));

          // Act
          final stream = underTest.watchIsOffline();

          // Assert
          expect(stream, emitsInOrder([true]));
        },
      );
    });
  });
}
