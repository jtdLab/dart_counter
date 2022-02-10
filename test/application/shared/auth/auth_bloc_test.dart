import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthService extends Mock implements IAuthService {}

void main() {
  late MockAuthService mockAuthService;

  setUp(() {
    mockAuthService = MockAuthService();
  });

  test(
      'WHEN not authenticated '
      'THEN initial state set to Unauthenticated.', () {
    // Arrange
    when(
      () => mockAuthService.isAuthenticated(),
    ).thenAnswer((_) => false);
    when(
      () => mockAuthService.watchIsAuthenticated(),
    ).thenAnswer((_) => const Stream.empty());

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
    when(
      () => mockAuthService.watchIsAuthenticated(),
    ).thenAnswer((_) => const Stream.empty());

    // Act
    final underTest = AuthBloc(mockAuthService);

    // Assert
    expect(
      underTest.state,
      const AuthState.authenticated(),
    );
  });

  blocTest(
    'GIVEN authenticated and then not authenticated '
    'THEN emit [Authenticated, Unauthenticated] on auth state change.',
    build: () {
      when(
        () => mockAuthService.isAuthenticated(),
      ).thenAnswer((_) => false);
      when(
        () => mockAuthService.watchIsAuthenticated(),
      ).thenAnswer(
        (_) => Stream.fromIterable([true, false]),
      );

      return AuthBloc(mockAuthService);
    },
    act: (AuthBloc bloc) => bloc.add(const AuthEvent.started()),
    expect: () => [
      const Authenticated(),
      const Unauthenticated(),
    ],
  );
}
