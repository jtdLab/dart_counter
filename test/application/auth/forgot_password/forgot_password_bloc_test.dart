import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/auth/forgot_password/forgot_password_bloc.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthService extends Mock implements IAuthService {}

void main() {
  setUpAll(() {
    // mocktail related setup
    registerFallbackValue(EmailAddress.empty());
  });

  late MockAuthService mockAuthService;

  setUp(() {
    mockAuthService = MockAuthService();
  });

  test(
      'Initial state set to ForgotPasswordInitial with email empty and show error messages false.',
      () {
    // Arrange & Act
    final underTest = ForgotPasswordBloc(mockAuthService);

    // Assert
    expect(
      underTest.state,
      ForgotPasswordState.initial(
        email: EmailAddress.empty(),
        showErrorMessages: false,
      ),
    );
  });

  group('EmailChanged', () {
    blocTest(
      'Emit [ForgotPasswordInitial] when current state is ForgotPasswordInitial.',
      build: () => ForgotPasswordBloc(mockAuthService),
      act: (ForgotPasswordBloc bloc) =>
          bloc.add(const ForgotPasswordEvent.emailChanged(newEmail: 'abcd')),
      expect: () => [
        ForgotPasswordInitial(
          email: EmailAddress('abcd'),
          showErrorMessages: false,
        ),
      ],
    );

    blocTest(
      'Emit [ForgotPasswordInitial] when current state is ForgotPasswordSubmitFailure.',
      build: () => ForgotPasswordBloc(mockAuthService),
      seed: () => const ForgotPasswordState.submitFailure(
        authFailure: AuthFailure.invalidEmail(),
      ),
      act: (ForgotPasswordBloc bloc) =>
          bloc.add(const ForgotPasswordEvent.emailChanged(newEmail: 'abcd')),
      expect: () => [
        ForgotPasswordInitial(
          email: EmailAddress('abcd'),
          showErrorMessages: true,
        ),
      ],
    );
  });

  group('ConfirmPressed', () {
    blocTest(
      'WHEN current state is ForgotPasswordInitial with valid and existing email '
      'THEN emit [ForgotPasswordSubmitInProgress, ForgotPasswordSubmitSuccess].',
      build: () {
        when<Future<Either<AuthFailure, Unit>>>(
          () => mockAuthService.sendPasswordResetEmail(
            emailAddress: any(named: 'emailAddress'),
          ),
        ).thenAnswer((_) async => right(unit));

        return ForgotPasswordBloc(mockAuthService);
      },
      seed: () => ForgotPasswordState.initial(
        email: EmailAddress('a@b.com'),
        showErrorMessages: false,
      ),
      act: (ForgotPasswordBloc bloc) => bloc.add(
        const ForgotPasswordEvent.confirmPressed(),
      ),
      wait: const Duration(seconds: 1),
      expect: () => [
        const ForgotPasswordSubmitInProgress(),
        const ForgotPasswordSubmitSuccess(),
      ],
    );

    blocTest(
      'WHEN current state is ForgotPasswordInitial with valid and not existing email '
      'THEN emit [ForgotPasswordSubmitInProgress, ForgotPasswordSubmitFailure].',
      build: () {
        when<Future<Either<AuthFailure, Unit>>>(
          () => mockAuthService.sendPasswordResetEmail(
            emailAddress: any(named: 'emailAddress'),
          ),
        ).thenAnswer((_) async => left(const AuthFailure.serverError()));

        return ForgotPasswordBloc(mockAuthService);
      },
      seed: () => ForgotPasswordState.initial(
        email: EmailAddress('a@b.com'),
        showErrorMessages: false,
      ),
      act: (ForgotPasswordBloc bloc) => bloc.add(
        const ForgotPasswordEvent.confirmPressed(),
      ),
      wait: const Duration(seconds: 1),
      expect: () => [
        const ForgotPasswordSubmitInProgress(),
        const ForgotPasswordSubmitFailure(
          authFailure: AuthFailure.serverError(),
        ),
      ],
    );

    blocTest(
      'WHEN current state is ForgotPasswordInitial with invalid email '
      'THEN emit [ForgotPasswordSubmitFailure].',
      build: () => ForgotPasswordBloc(mockAuthService),
      seed: () => ForgotPasswordState.initial(
        email: EmailAddress('abd'),
        showErrorMessages: false,
      ),
      act: (ForgotPasswordBloc bloc) => bloc.add(
        const ForgotPasswordEvent.confirmPressed(),
      ),
      expect: () => [
        const ForgotPasswordSubmitFailure(
          authFailure: AuthFailure.invalidEmail(),
        ),
      ],
    );
  });
}
