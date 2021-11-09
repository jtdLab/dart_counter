import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/core/errors.dart';
import 'package:dart_counter/application/settings/change_password/change_password_bloc.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthFacade extends Mock implements IAuthService {}

void main() {
  setUpAll(() {
    // mocktail related setup
    registerFallbackValue(Password.empty());
  });

  late MockAuthFacade mockAuthFacade;

  setUp(() {
    mockAuthFacade = MockAuthFacade();
  });

  test('initial state initialized correctly', () {
    // Arrange & Act
    final underTest = ChangePasswordBloc(mockAuthFacade);

    // Assert
    expect(
      underTest.state,
      ChangePasswordState.initial(
        oldPassword: Password.empty(),
        newPassword: Password.empty(),
        newPasswordAgain: Password.empty(),
        showErrorMessages: false,
      ),
    );
  });

  group('OldPasswordChanged', () {
    blocTest(
      'emits [ChangePasswordInitial] when current state is ChangePasswordInitial ',
      build: () => ChangePasswordBloc(mockAuthFacade),
      act: (ChangePasswordBloc bloc) => bloc.add(
        const ChangePasswordEvent.oldPasswordChanged(newOldPassword: 'abcd'),
      ),
      expect: () => [
        ChangePasswordInitial(
          oldPassword: Password('abcd'),
          newPassword: Password.empty(),
          newPasswordAgain: Password.empty(),
          showErrorMessages: false,
        ),
      ],
    );

    blocTest(
      'emits [ChangePasswordInitial] when current state is ChangePasswordSubmitFailure ',
      build: () => ChangePasswordBloc(mockAuthFacade),
      seed: () => const ChangePasswordState.submitFailure(
        authFailure: AuthFailure.invalidEmail(),
      ),
      act: (ChangePasswordBloc bloc) => bloc.add(
        const ChangePasswordEvent.oldPasswordChanged(newOldPassword: 'abcd'),
      ),
      expect: () => [
        ChangePasswordInitial(
          oldPassword: Password('abcd'),
          newPassword: Password.empty(),
          newPasswordAgain: Password.empty(),
          showErrorMessages: true,
        ),
      ],
    );

    blocTest(
      'throws Error when current state is ChangePasswordSubmitInProgress ',
      build: () => ChangePasswordBloc(mockAuthFacade),
      seed: () => const ChangePasswordState.submitInProgress(),
      act: (ChangePasswordBloc bloc) => bloc.add(
        const ChangePasswordEvent.oldPasswordChanged(newOldPassword: 'abcd'),
      ),
      errors: () => [isA<UnexpectedStateError>()],
    );

    blocTest(
      'throws Error when current state is ChangePasswordSubmitSuccess ',
      build: () => ChangePasswordBloc(mockAuthFacade),
      seed: () => const ChangePasswordState.submitSuccess(),
      act: (ChangePasswordBloc bloc) => bloc.add(
        const ChangePasswordEvent.oldPasswordChanged(newOldPassword: 'abcd'),
      ),
      errors: () => [isA<UnexpectedStateError>()],
    );
  });

  group('NewPasswordChanged', () {
    blocTest(
      'emits [ChangePasswordInitial] when current state is ChangePasswordInitial ',
      build: () => ChangePasswordBloc(mockAuthFacade),
      act: (ChangePasswordBloc bloc) => bloc.add(
        const ChangePasswordEvent.newPasswordChanged(newNewPassword: 'abcd'),
      ),
      expect: () => [
        ChangePasswordInitial(
          oldPassword: Password.empty(),
          newPassword: Password('abcd'),
          newPasswordAgain: Password.empty(),
          showErrorMessages: false,
        ),
      ],
    );

    blocTest(
      'emits [ChangePasswordInitial] when current state is ChangePasswordSubmitFailure ',
      build: () => ChangePasswordBloc(mockAuthFacade),
      seed: () => const ChangePasswordState.submitFailure(
        authFailure: AuthFailure.invalidEmail(),
      ),
      act: (ChangePasswordBloc bloc) => bloc.add(
        const ChangePasswordEvent.newPasswordChanged(newNewPassword: 'abcd'),
      ),
      expect: () => [
        ChangePasswordInitial(
          oldPassword: Password.empty(),
          newPassword: Password('abcd'),
          newPasswordAgain: Password.empty(),
          showErrorMessages: true,
        ),
      ],
    );

    blocTest(
      'throws Error when current state is ChangePasswordSubmitInProgress ',
      build: () => ChangePasswordBloc(mockAuthFacade),
      seed: () => const ChangePasswordState.submitInProgress(),
      act: (ChangePasswordBloc bloc) => bloc.add(
        const ChangePasswordEvent.newPasswordChanged(newNewPassword: 'abcd'),
      ),
      errors: () => [isA<UnexpectedStateError>()],
    );

    blocTest(
      'throws Error when current state is ChangePasswordSubmitSuccess ',
      build: () => ChangePasswordBloc(mockAuthFacade),
      seed: () => const ChangePasswordState.submitSuccess(),
      act: (ChangePasswordBloc bloc) => bloc.add(
        const ChangePasswordEvent.newPasswordChanged(newNewPassword: 'abcd'),
      ),
      errors: () => [isA<UnexpectedStateError>()],
    );
  });

  group('NewPasswordAgainChanged', () {
    blocTest(
      'emits [ChangePasswordInitial] when current state is ChangePasswordInitial ',
      build: () => ChangePasswordBloc(mockAuthFacade),
      act: (ChangePasswordBloc bloc) => bloc.add(
        const ChangePasswordEvent.newPasswordAgainChanged(
          newNewPasswordAgain: 'abcd',
        ),
      ),
      expect: () => [
        ChangePasswordInitial(
          oldPassword: Password.empty(),
          newPassword: Password.empty(),
          newPasswordAgain: Password('abcd'),
          showErrorMessages: false,
        ),
      ],
    );

    blocTest(
      'emits [ChangePasswordInitial] when current state is ChangePasswordSubmitFailure ',
      build: () => ChangePasswordBloc(mockAuthFacade),
      seed: () => const ChangePasswordState.submitFailure(
        authFailure: AuthFailure.invalidEmail(),
      ),
      act: (ChangePasswordBloc bloc) => bloc.add(
        const ChangePasswordEvent.newPasswordAgainChanged(
          newNewPasswordAgain: 'abcd',
        ),
      ),
      expect: () => [
        ChangePasswordInitial(
          oldPassword: Password.empty(),
          newPassword: Password.empty(),
          newPasswordAgain: Password('abcd'),
          showErrorMessages: true,
        ),
      ],
    );

    blocTest(
      'throws Error when current state is ChangePasswordSubmitInProgress ',
      build: () => ChangePasswordBloc(mockAuthFacade),
      seed: () => const ChangePasswordState.submitInProgress(),
      act: (ChangePasswordBloc bloc) => bloc.add(
        const ChangePasswordEvent.newPasswordAgainChanged(
          newNewPasswordAgain: 'abcd',
        ),
      ),
      errors: () => [isA<UnexpectedStateError>()],
    );

    blocTest(
      'throws Error when current state is ChangePasswordSubmitSuccess ',
      build: () => ChangePasswordBloc(mockAuthFacade),
      seed: () => const ChangePasswordState.submitSuccess(),
      act: (ChangePasswordBloc bloc) => bloc.add(
        const ChangePasswordEvent.newPasswordAgainChanged(
          newNewPasswordAgain: 'abcd',
        ),
      ),
      errors: () => [isA<UnexpectedStateError>()],
    );
  });

  group('ConfirmPressed', () {
    blocTest(
      'emits [ChangePasswordSubmitInProgress, ChangePasswordSubmitSuccess] '
      'when current state is ChangePasswordInitial with valid and correct old password '
      'and valid new password which matches new password-again ',
      build: () {
        when<Future<Either<AuthFailure, Unit>>>(
          () => mockAuthFacade.updatePassword(
            oldPassword: any(named: 'oldPassword'),
            newPassword: any(named: 'newPassword'),
          ),
        ).thenAnswer((_) async => right(unit));

        return ChangePasswordBloc(mockAuthFacade);
      },
      seed: () => ChangePasswordState.initial(
        oldPassword: Password('oldPassword'),
        newPassword: Password('newPassword'),
        newPasswordAgain: Password('newPassword'),
        showErrorMessages: false,
      ),
      act: (ChangePasswordBloc bloc) => bloc.add(
        const ChangePasswordEvent.confirmPressed(),
      ),
      wait: const Duration(seconds: 1),
      expect: () => [
        const ChangePasswordSubmitInProgress(),
        const ChangePasswordSubmitSuccess(),
      ],
    );

    blocTest(
      'emits [ChangePasswordSubmitFailure] '
      'when current state is ChangePasswordInitial with not matching new password and new password-again ',
      build: () => ChangePasswordBloc(mockAuthFacade),
      seed: () => ChangePasswordState.initial(
        oldPassword: Password('oldPassword'),
        newPassword: Password('newPassword'),
        newPasswordAgain: Password('newPassword1'),
        showErrorMessages: false,
      ),
      act: (ChangePasswordBloc bloc) => bloc.add(
        const ChangePasswordEvent.confirmPressed(),
      ),
      expect: () => [
        const ChangePasswordSubmitFailure(
          authFailure: AuthFailure.passwordsNotMatching(),
        ),
      ],
    );

    blocTest(
      'emits [ChangePasswordSubmitFailure] '
      'when current state is ChangePasswordInitial with invalid old password ',
      build: () => ChangePasswordBloc(mockAuthFacade),
      seed: () => ChangePasswordState.initial(
        oldPassword: Password('a'),
        newPassword: Password('newPassword'),
        newPasswordAgain: Password('newPassword'),
        showErrorMessages: false,
      ),
      act: (ChangePasswordBloc bloc) => bloc.add(
        const ChangePasswordEvent.confirmPressed(),
      ),
      expect: () => [
        const ChangePasswordSubmitFailure(
          authFailure: AuthFailure.invalidOldPassword(),
        ),
      ],
    );

    blocTest(
      'emits [ChangePasswordSubmitFailure] '
      'when current state is ChangePasswordInitial with invalid new password ',
      build: () => ChangePasswordBloc(mockAuthFacade),
      seed: () => ChangePasswordState.initial(
        oldPassword: Password('oldPassword'),
        newPassword: Password('a'),
        newPasswordAgain: Password('newPassword'),
        showErrorMessages: false,
      ),
      act: (ChangePasswordBloc bloc) => bloc.add(
        const ChangePasswordEvent.confirmPressed(),
      ),
      expect: () => [
        const ChangePasswordSubmitFailure(
          authFailure: AuthFailure.invalidNewPassword(),
        ),
      ],
    );

    blocTest(
      'emits [ChangePasswordSubmitInProgress, ChangePasswordSubmitFailure] '
      'when current state is ChangePasswordInitial with valid and correct old password '
      'and valid new password which matches new password-again but backend error occurs ',
      build: () {
        when<Future<Either<AuthFailure, Unit>>>(
          () => mockAuthFacade.updatePassword(
            oldPassword: any(named: 'oldPassword'),
            newPassword: any(named: 'newPassword'),
          ),
        ).thenAnswer((_) async => left(const AuthFailure.serverError()));

        return ChangePasswordBloc(mockAuthFacade);
      },
      seed: () => ChangePasswordState.initial(
        oldPassword: Password('oldPassword'),
        newPassword: Password('newPassword'),
        newPasswordAgain: Password('newPassword'),
        showErrorMessages: false,
      ),
      act: (ChangePasswordBloc bloc) => bloc.add(
        const ChangePasswordEvent.confirmPressed(),
      ),
      wait: const Duration(seconds: 1),
      expect: () => [
        const ChangePasswordSubmitInProgress(),
        const ChangePasswordSubmitFailure(
          authFailure: AuthFailure.serverError(),
        ),
      ],
    );

    blocTest(
      'throws Error when current state is ChangePasswordSubmitInProgress ',
      build: () => ChangePasswordBloc(mockAuthFacade),
      seed: () => const ChangePasswordState.submitInProgress(),
      act: (ChangePasswordBloc bloc) =>
          bloc.add(const ChangePasswordEvent.confirmPressed()),
      errors: () => [isA<UnexpectedStateError>()],
    );

    blocTest(
      'throws Error when current state is ChangePasswordSubmitSuccess ',
      build: () => ChangePasswordBloc(mockAuthFacade),
      seed: () => const ChangePasswordState.submitSuccess(),
      act: (ChangePasswordBloc bloc) =>
          bloc.add(const ChangePasswordEvent.confirmPressed()),
      errors: () => [isA<UnexpectedStateError>()],
    );

    blocTest(
      'throws Error when current state is ChangePasswordSubmitFailure ',
      build: () => ChangePasswordBloc(mockAuthFacade),
      seed: () => const ChangePasswordState.submitFailure(
        authFailure: AuthFailure.invalidEmail(),
      ),
      act: (ChangePasswordBloc bloc) =>
          bloc.add(const ChangePasswordEvent.confirmPressed()),
      errors: () => [isA<UnexpectedStateError>()],
    );
  });
}
