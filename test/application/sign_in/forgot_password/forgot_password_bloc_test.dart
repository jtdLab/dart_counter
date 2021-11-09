import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/application/sign_in/forgot_password/forgot_password_bloc.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthFacade extends Mock implements IAuthFacade {}

void main() {
  setUpAll(() {
    // mocktail related setup
    registerFallbackValue(EmailAddress.empty());
  });

  late MockAuthFacade mockAuthFacade;

  setUp(() {
    mockAuthFacade = MockAuthFacade();
  });

  test('initial state initialized correctly', () {
    // Arrange & Act
    final underTest = ForgotPasswordBloc(mockAuthFacade);

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
      'emits [ForgotPasswordInitial] when current state is ForgotPasswordInitial ',
      build: () => ForgotPasswordBloc(mockAuthFacade),
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
      'emits [ForgotPasswordInitial] when current state is ForgotPasswordSubmitFailure ',
      build: () => ForgotPasswordBloc(mockAuthFacade),
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

    blocTest(
      'throws Error when current state is ForgotPasswordSubmitInProgress ',
      build: () => ForgotPasswordBloc(mockAuthFacade),
      seed: () => const ForgotPasswordState.submitInProgress(),
      act: (ForgotPasswordBloc bloc) =>
          bloc.add(const ForgotPasswordEvent.emailChanged(newEmail: 'abcd')),
      errors: () => [isA<UnexpectedStateError>()],
    );

    blocTest(
      'throws Error when current state is ForgotPasswordSubmitSuccess ',
      build: () => ForgotPasswordBloc(mockAuthFacade),
      seed: () => const ForgotPasswordState.submitSuccess(),
      act: (ForgotPasswordBloc bloc) =>
          bloc.add(const ForgotPasswordEvent.emailChanged(newEmail: 'abcd')),
      errors: () => [isA<UnexpectedStateError>()],
    );
  });

  group('ConfirmPressed', () {
    blocTest(
      'emits [ForgotPasswordSubmitInProgress, ForgotPasswordSubmitSuccess] '
      'when current state is ForgotPasswordInitial with valid and existing email ',
      build: () {
        when<Future<Either<AuthFailure, Unit>>>(
          () => mockAuthFacade.sendPasswordResetEmail(
            emailAddress: any(named: 'emailAddress'),
          ),
        ).thenAnswer((_) async => right(unit));

        return ForgotPasswordBloc(mockAuthFacade);
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
      'emits [ForgotPasswordSubmitInProgress, ForgotPasswordSubmitFailure] '
      'when current state is ForgotPasswordInitial with valid and not existing email ',
      build: () {
        when<Future<Either<AuthFailure, Unit>>>(
          () => mockAuthFacade.sendPasswordResetEmail(
            emailAddress: any(named: 'emailAddress'),
          ),
        ).thenAnswer((_) async => left(const AuthFailure.serverError()));

        return ForgotPasswordBloc(mockAuthFacade);
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
      'emits [ForgotPasswordSubmitFailure] '
      'when current state is ForgotPasswordInitial with invalid email ',
      build: () => ForgotPasswordBloc(mockAuthFacade),
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

    blocTest(
      'throws Error when current state is ForgotPasswordSubmitInProgress ',
      build: () => ForgotPasswordBloc(mockAuthFacade),
      seed: () => const ForgotPasswordState.submitInProgress(),
      act: (ForgotPasswordBloc bloc) =>
          bloc.add(const ForgotPasswordEvent.confirmPressed()),
      errors: () => [isA<UnexpectedStateError>()],
    );

    blocTest(
      'throws Error when current state is ForgotPasswordSubmitSuccess ',
      build: () => ForgotPasswordBloc(mockAuthFacade),
      seed: () => const ForgotPasswordState.submitSuccess(),
      act: (ForgotPasswordBloc bloc) =>
          bloc.add(const ForgotPasswordEvent.confirmPressed()),
      errors: () => [isA<UnexpectedStateError>()],
    );

    blocTest(
      'throws Error when current state is ForgotPasswordSubmitFailure ',
      build: () => ForgotPasswordBloc(mockAuthFacade),
      seed: () => const ForgotPasswordState.submitFailure(
        authFailure: AuthFailure.invalidEmail(),
      ),
      act: (ForgotPasswordBloc bloc) =>
          bloc.add(const ForgotPasswordEvent.confirmPressed()),
      errors: () => [isA<UnexpectedStateError>()],
    );
  });
}
