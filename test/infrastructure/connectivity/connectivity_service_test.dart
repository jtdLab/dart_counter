import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dart_counter/infrastructure/connectivity/connectivity_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockConnectivity extends Mock implements Connectivity {}

void main() {
  late MockConnectivity mockConnectivity;

  setUp(() {
    mockConnectivity = MockConnectivity();
  });

  group('#Methods#', () {
    group('#isOffline#', () {
      test(
        'GIVEN network access '
        'THEN return false ',
        () async {
          // Arrange
          when(() => mockConnectivity.checkConnectivity())
              .thenAnswer((_) async => ConnectivityResult.mobile);
          final underTest = ConnectivityService(mockConnectivity);

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
          // Arrange
          when(() => mockConnectivity.checkConnectivity())
              .thenAnswer((_) async => ConnectivityResult.none);
          final underTest = ConnectivityService(mockConnectivity);

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
          when(() => mockConnectivity.onConnectivityChanged)
              .thenAnswer((_) => Stream.value(ConnectivityResult.mobile));
          final underTest = ConnectivityService(mockConnectivity);

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
          when(() => mockConnectivity.onConnectivityChanged)
              .thenAnswer((_) => Stream.value(ConnectivityResult.none));
          final underTest = ConnectivityService(mockConnectivity);

          // Act
          final stream = underTest.watchIsOffline();

          // Assert
          expect(stream, emitsInOrder([true]));
        },
      );
    });
  });
}
