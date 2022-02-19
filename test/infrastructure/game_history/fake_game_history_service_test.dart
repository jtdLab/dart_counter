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

  setUp(() {
    mockAuthService = MockAuthService();
  });

  void setUpMockAuthServiceWithAuthenticatedUser() {
    when(
      () => mockAuthService.isAuthenticated(),
    ).thenAnswer((_) => true);
    when(
      () => mockAuthService.watchIsAuthenticated(),
    ).thenAnswer((_) => Stream.fromIterable([true]));
  }

  void setUpMockAuthServiceWithNotAuthenticatedUser() {
    when(
      () => mockAuthService.isAuthenticated(),
    ).thenAnswer((_) => false);
    when(
      () => mockAuthService.watchIsAuthenticated(),
    ).thenAnswer((_) => Stream.fromIterable([false]));
  }

  group('fetchGameHistoryOffline', () {
    test(
      'GIVEN not authenticated user '
      'THEN throw NotAuthenticatedError.',
      () {
        // Arrange
        setUpMockAuthServiceWithNotAuthenticatedUser();
        final underTest = FakeGameHistoryService(mockAuthService);

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
        setUpMockAuthServiceWithAuthenticatedUser();
        FakeGameHistoryService.hasNetworkConnection = false;
        final underTest = FakeGameHistoryService(mockAuthService);

        // Act
        final failurOrUnit = await underTest.getGameHistoryOffline();

        // Assert
        expect(
          failurOrUnit,
          left(const GameHistoryFailure.noNetworkAccess()),
        );
      },
    );

    test(
      'GIVEN authenticated user and has network access '
      'THEN return right with a game history sorted by createdAt from most recent to oldest.',
      () async {
        // Arrange
        setUpMockAuthServiceWithAuthenticatedUser();
        FakeGameHistoryService.hasNetworkConnection = true;
        final underTest = FakeGameHistoryService(mockAuthService);

        // Act
        final failurOrUnit = await underTest.getGameHistoryOffline();

        // Assert
        expect(failurOrUnit.isRight(), true);
        expect(
          failurOrUnit
              .toOption()
              .toNullable()!
              .getOrCrash()
              .asList()
              .map((e) => e.createdAt)
              .toList(),
          failurOrUnit
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

  group('fetchGameHistoryOnline', () {
    test(
      'GIVEN not authenticated user '
      'THEN throw NotAuthenticatedError.',
      () {
        // Arrange
        setUpMockAuthServiceWithNotAuthenticatedUser();
        final underTest = FakeGameHistoryService(mockAuthService);

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
        setUpMockAuthServiceWithAuthenticatedUser();
        FakeGameHistoryService.hasNetworkConnection = false;
        final underTest = FakeGameHistoryService(mockAuthService);

        // Act
        final failurOrUnit =
            await underTest.getGameHistoryOnline(uid: 'randomId45380');

        // Assert
        expect(
          failurOrUnit,
          left(const GameHistoryFailure.noNetworkAccess()),
        );
      },
    );

    test(
      'GIVEN authenticated user and has network access '
      'THEN return right with a game history sorted by createdAt from most recent to oldest.',
      () async {
        // Arrange
        setUpMockAuthServiceWithAuthenticatedUser();
        FakeGameHistoryService.hasNetworkConnection = true;
        final underTest = FakeGameHistoryService(mockAuthService);

        // Act
        final failurOrUnit =
            await underTest.getGameHistoryOnline(uid: 'randomIdw438');

        // Assert
        expect(failurOrUnit.isRight(), true);
        expect(
          failurOrUnit
              .toOption()
              .toNullable()!
              .getOrCrash()
              .asList()
              .map((e) => e.createdAt)
              .toList(),
          failurOrUnit
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
}
