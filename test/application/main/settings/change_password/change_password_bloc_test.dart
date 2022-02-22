import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/settings/change_password/change_password_bloc.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthService extends Mock implements IAuthService {}

void main() {
  late MockAuthService mockAuthService;

  setUpAll(() {
    // Mocktail related setup
    registerFallbackValue(Password.empty());
  });

  setUp(() {
    mockAuthService = MockAuthService();
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test(
          'Initial state set to ChangePasswordInitial with empty oldPassword, empty newPassowrd '
          'empty newPasswordAgain and showErrorMessages false.', () {
        // Arrange & Act
        final underTest = ChangePasswordBloc(mockAuthService);

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
    });

    group('#GetIt#', () {
      test(
          'GIVEN ChangePasswordBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(() => ChangePasswordBloc.getIt(), throwsA(anything));
      });

      test(
          'GIVEN ChangePasswordBloc is registered inside getIt '
          'THEN initial state set to ChangePasswordInitial with empty oldPassword, empty newPassowrd '
          'empty newPasswordAgain and showErrorMessages false.', () {
        // Arrange
        getIt.registerFactoryParam(
          (param1, _) => ChangePasswordBloc(mockAuthService),
        );

        // Act
        final underTest = ChangePasswordBloc.getIt();

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

      test(
          'GIVEN ChangePasswordBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = ChangePasswordBloc(mockAuthService);
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = ChangePasswordBloc.getIt();

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });
  });

  group('#Events#', () {
    group('#OldPasswordChanged#', () {
      blocTest<ChangePasswordBloc, ChangePasswordState>(
        'GIVEN current state is ChangePasswordInitial '
        'THEN emit [ChangePasswordInitial].',
        build: () => ChangePasswordBloc(mockAuthService),
        act: (bloc) => bloc.add(
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

      blocTest<ChangePasswordBloc, ChangePasswordState>(
        'GIVEN current state is ChangePasswordSubmitFailure '
        'THEN emit [ChangePasswordInitial].',
        build: () => ChangePasswordBloc(mockAuthService),
        seed: () => const ChangePasswordState.submitFailure(
          authFailure: AuthFailure.invalidEmail(),
        ),
        act: (bloc) => bloc.add(
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
    });

    group('#NewPasswordChanged#', () {
      blocTest<ChangePasswordBloc, ChangePasswordState>(
        'GIVEN current state is ChangePasswordInitial '
        'THEN emit [ChangePasswordInitial]',
        build: () => ChangePasswordBloc(mockAuthService),
        act: (bloc) => bloc.add(
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

      blocTest<ChangePasswordBloc, ChangePasswordState>(
        'GIVEN current state is ChangePasswordSubmitFailure '
        'THEN emit [ChangePasswordInitial].',
        build: () => ChangePasswordBloc(mockAuthService),
        seed: () => const ChangePasswordState.submitFailure(
          authFailure: AuthFailure.invalidEmail(),
        ),
        act: (bloc) => bloc.add(
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
    });

    group('#NewPasswordAgainChanged#', () {
      blocTest<ChangePasswordBloc, ChangePasswordState>(
        'GIVEN current state is ChangePasswordInitial '
        'THEN emit [ChangePasswordInitial].',
        build: () => ChangePasswordBloc(mockAuthService),
        act: (bloc) => bloc.add(
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

      blocTest<ChangePasswordBloc, ChangePasswordState>(
        'GIVEN current state is ChangePasswordSubmitFailure '
        'THEN emit [ChangePasswordInitial].',
        build: () => ChangePasswordBloc(mockAuthService),
        seed: () => const ChangePasswordState.submitFailure(
          authFailure: AuthFailure.invalidEmail(),
        ),
        act: (bloc) => bloc.add(
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
    });

    group('#ConfirmPressed#', () {
      blocTest<ChangePasswordBloc, ChangePasswordState>(
        'GIVEN current state is ChangePasswordInitial with valid and correct old password '
        'and valid new password which matches new password-again '
        'THEN emit [ChangePasswordSubmitInProgress, ChangePasswordSubmitSuccess].',
        setUp: () {
          when(
            () => mockAuthService.updatePassword(
              oldPassword: any(named: 'oldPassword'),
              newPassword: any(named: 'newPassword'),
            ),
          ).thenAnswer((_) async => right(unit));
        },
        build: () => ChangePasswordBloc(mockAuthService),
        seed: () => ChangePasswordState.initial(
          oldPassword: Password('oldPassword'),
          newPassword: Password('newPassword'),
          newPasswordAgain: Password('newPassword'),
          showErrorMessages: false,
        ),
        act: (bloc) => bloc.add(
          const ChangePasswordEvent.confirmPressed(),
        ),
        wait: const Duration(seconds: 1),
        expect: () => [
          const ChangePasswordSubmitInProgress(),
          const ChangePasswordSubmitSuccess(),
        ],
      );

      blocTest<ChangePasswordBloc, ChangePasswordState>(
        'GIVEN current state is ChangePasswordInitial with not matching new password and new password-again '
        'THEN emit [ChangePasswordSubmitFailure].',
        build: () => ChangePasswordBloc(mockAuthService),
        seed: () => ChangePasswordState.initial(
          oldPassword: Password('oldPassword'),
          newPassword: Password('newPassword'),
          newPasswordAgain: Password('newPassword1'),
          showErrorMessages: false,
        ),
        act: (bloc) => bloc.add(
          const ChangePasswordEvent.confirmPressed(),
        ),
        expect: () => [
          const ChangePasswordSubmitFailure(
            authFailure: AuthFailure.passwordsNotMatching(),
          ),
        ],
      );

      blocTest<ChangePasswordBloc, ChangePasswordState>(
        'GIVEN current state is ChangePasswordInitial with invalid old password '
        'THEN emit [ChangePasswordSubmitFailure].',
        build: () => ChangePasswordBloc(mockAuthService),
        seed: () => ChangePasswordState.initial(
          oldPassword: Password('a'),
          newPassword: Password('newPassword'),
          newPasswordAgain: Password('newPassword'),
          showErrorMessages: false,
        ),
        act: (bloc) => bloc.add(
          const ChangePasswordEvent.confirmPressed(),
        ),
        expect: () => [
          const ChangePasswordSubmitFailure(
            authFailure: AuthFailure.invalidOldPassword(),
          ),
        ],
      );

      blocTest<ChangePasswordBloc, ChangePasswordState>(
        'GIVEN current state is ChangePasswordInitial with invalid new password '
        'THEN emit [ChangePasswordSubmitFailure].',
        build: () => ChangePasswordBloc(mockAuthService),
        seed: () => ChangePasswordState.initial(
          oldPassword: Password('oldPassword'),
          newPassword: Password('a'),
          newPasswordAgain: Password('newPassword'),
          showErrorMessages: false,
        ),
        act: (bloc) => bloc.add(
          const ChangePasswordEvent.confirmPressed(),
        ),
        expect: () => [
          const ChangePasswordSubmitFailure(
            authFailure: AuthFailure.invalidNewPassword(),
          ),
        ],
      );

      blocTest<ChangePasswordBloc, ChangePasswordState>(
        'GIVEN current state is ChangePasswordInitial with valid and correct old password '
        'and valid new password which matches new password-again but backend error occurs '
        'THEN emit [ChangePasswordSubmitInProgress, ChangePasswordSubmitFailure].',
        setUp: () {
          when(
            () => mockAuthService.updatePassword(
              oldPassword: any(named: 'oldPassword'),
              newPassword: any(named: 'newPassword'),
            ),
          ).thenAnswer((_) async => left(const AuthFailure.serverError()));
        },
        build: () => ChangePasswordBloc(mockAuthService),
        seed: () => ChangePasswordState.initial(
          oldPassword: Password('oldPassword'),
          newPassword: Password('newPassword'),
          newPasswordAgain: Password('newPassword'),
          showErrorMessages: false,
        ),
        act: (bloc) => bloc.add(
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
    });
  });
}
