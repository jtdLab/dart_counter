import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthService extends Mock implements IAuthService {}

void main() {
  late MockAuthService mockAuthService;

  setUp(() {
    mockAuthService = MockAuthService();
    when(
      () => mockAuthService.isAuthenticated(),
    ).thenAnswer((_) => false);
    when(
      () => mockAuthService.watchIsAuthenticated(),
    ).thenAnswer((_) => const Stream.empty());
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test(
          'WHEN not authenticated '
          'THEN initial state set to Unauthenticated.', () {
        // Arrange
        when(
          () => mockAuthService.isAuthenticated(),
        ).thenAnswer((_) => false);

        // Act
        final underTest = AuthBloc(mockAuthService);

        // Assert
        expect(
          underTest.state,
          const AuthState.unauthenticated(),
        );
      });

      test(
          'WHEN authenticated '
          'THEN initial state set to Authenticated.', () {
        // Arrange
        when(
          () => mockAuthService.isAuthenticated(),
        ).thenAnswer((_) => true);

        // Act
        final underTest = AuthBloc(mockAuthService);

        // Assert
        expect(
          underTest.state,
          const AuthState.authenticated(),
        );
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN AuthBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => AuthBloc.getIt(),
          throwsA(anything),
        );
      });

      test(
          'GIVEN AuthBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = AuthBloc(mockAuthService);
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = AuthBloc.getIt();

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });
  });

  group('#Events#', () {
    group('#Started#', () {
      blocTest<AuthBloc, AuthState>(
        'GIVEN authenticated and then not authenticated '
        'THEN emit [Authenticated, Unauthenticated] on auth state change.',
        setUp: () {
          when(
            () => mockAuthService.isAuthenticated(),
          ).thenAnswer((_) => false);
          when(
            () => mockAuthService.watchIsAuthenticated(),
          ).thenAnswer(
            (_) => Stream.fromIterable([true, false]),
          );
        },
        build: () => AuthBloc(mockAuthService),
        act: (bloc) => bloc.add(const AuthEvent.started()),
        expect: () => [
          const Authenticated(),
          const Unauthenticated(),
        ],
      );
    });
  });
}
