import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/game_history/game_history_failure.dart';
import 'package:dart_counter/infrastructure/game_history/fake_game_history_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthService extends Mock implements IAuthService {}

void main() {
  late MockAuthService mockAuthService;

  late FakeGameHistoryService underTest;

  setUp(() {
    mockAuthService = MockAuthService();

    underTest = FakeGameHistoryService(mockAuthService);
  });

  group('#Methods#', () {
    group('#fetchGameHistoryOffline#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          // not authenticated user
          when(
            () => mockAuthService.isAuthenticated(),
          ).thenAnswer((_) => false);

          // Act & Assert
          expect(
            underTest.getGameHistoryOffline(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // no network access
          FakeGameHistoryService.hasNetworkConnection = false;

          // Act
          final result = await underTest.getGameHistoryOffline();

          // Assert
          expect(result, left(const GameHistoryFailure.noNetworkAccess()));
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'THEN game history sorted by createdAt from most recent to oldest.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // network access
          FakeGameHistoryService.hasNetworkConnection = true;

          // Act
          final result = await underTest.getGameHistoryOffline();

          // Assert
          expect(
            result
                .toOption()
                .toNullable()!
                .getOrCrash()
                .asList()
                .map((e) => e.createdAt)
                .toList(),
            result
                .toOption()
                .toNullable()!
                .getOrCrash()
                .asList()
                .map((e) => e.createdAt)
                .toList()
              ..sort(
                (a, b) => a.compareTo(b),
              ),
          );
        },
      );
    });

    group('#fetchGameHistoryOnline#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          // not authenticated user
          when(
            () => mockAuthService.isAuthenticated(),
          ).thenAnswer((_) => false);

          // Act & Assert
          expect(
            underTest.getGameHistoryOnline(uid: 'randomId'),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // no network access
          FakeGameHistoryService.hasNetworkConnection = false;

          // Act
          final result =
              await underTest.getGameHistoryOnline(uid: 'randomId45380');

          // Assert
          expect(result, left(const GameHistoryFailure.noNetworkAccess()));
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'THEN game history sorted by createdAt from most recent to oldest.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // network access
          FakeGameHistoryService.hasNetworkConnection = true;

          // Act
          final result =
              await underTest.getGameHistoryOnline(uid: 'randomIdw438');

          // Assert
          expect(
            result
                .toOption()
                .toNullable()!
                .getOrCrash()
                .asList()
                .map((e) => e.createdAt)
                .toList(),
            result
                .toOption()
                .toNullable()!
                .getOrCrash()
                .asList()
                .map((e) => e.createdAt)
                .toList()
              ..sort(
                (a, b) => a.compareTo(b),
              ),
          );
        },
      );
    });
  });
}
