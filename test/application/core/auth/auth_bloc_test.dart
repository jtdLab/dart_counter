import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/core/auth/auth_bloc.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthFacade extends Mock implements IAuthService {}

void main() {
  late MockAuthFacade mockAuthFacade;

  setUp(() {
    mockAuthFacade = MockAuthFacade();
  });

  test('initial state initialized correctly when unauthenticated', () {
    // Arrange
    when(
      () => mockAuthFacade.isAuthenticated(),
    ).thenAnswer((_) => false);
    when(
      () => mockAuthFacade.watchIsAuthenticated(),
    ).thenAnswer((_) => const Stream.empty());

    // Act
    final underTest = AuthBloc(mockAuthFacade);

    // Assert
    expect(
      underTest.state,
      const AuthState.unauthenticated(),
    );
  });

  test('initial state initialized correctly when authenticated', () {
    // Arrange
    when(
      () => mockAuthFacade.isAuthenticated(),
    ).thenAnswer((_) => true);
    when(
      () => mockAuthFacade.watchIsAuthenticated(),
    ).thenAnswer((_) => const Stream.empty());

    // Act
    final underTest = AuthBloc(mockAuthFacade);

    // Assert
    expect(
      underTest.state,
      const AuthState.authenticated(),
    );
  });

  blocTest(
    'emits [Authenticated, Unauthenticated] on auth state change ',
    build: () {
      when(
        () => mockAuthFacade.isAuthenticated(),
      ).thenAnswer((_) => false);
      when(
        () => mockAuthFacade.watchIsAuthenticated(),
      ).thenAnswer(
        (_) => Stream.fromIterable([true, false]),
      );

      return AuthBloc(mockAuthFacade);
    },
    act: (AuthBloc bloc) => bloc.add(const AuthEvent.started()),
    expect: () => [
      const Authenticated(),
      const Unauthenticated(),
    ],
  );
}
