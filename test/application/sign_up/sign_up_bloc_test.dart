import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/sign_up/sign_up_bloc.dart';
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
    registerFallbackValue(Username.empty());
    registerFallbackValue(Password.empty());
  });

  late MockAuthService mockAuthService;

  setUp(() {
    mockAuthService = MockAuthService();
  });

  test('initial state initialized correctly', () {
    // Arrange & Act
    final underTest = SignUpBloc(mockAuthService);

    // Assert
    expect(
      underTest.state,
      SignUpState.initial(
        email: EmailAddress.empty(),
        username: Username.empty(),
        password: Password.empty(),
        passwordAgain: Password.empty(),
        showErrorMessages: false,
      ),
    );
  });

  group('EmailChanged', () {
    blocTest(
      'emits [SignUpInitial] with updated email',
      build: () => SignUpBloc(mockAuthService),
      act: (SignUpBloc bloc) =>
          bloc.add(const SignUpEvent.emailChanged(newEmail: 'abcd')),
      expect: () => [
        SignUpInitial(
          email: EmailAddress('abcd'),
          username: Username.empty(),
          password: Password.empty(),
          passwordAgain: Password.empty(),
          showErrorMessages: false,
        ),
      ],
    );
  });

  group('UsernameChanged', () {
    blocTest(
      'emits [SignUpInitial] with updated username',
      build: () => SignUpBloc(mockAuthService),
      act: (SignUpBloc bloc) =>
          bloc.add(const SignUpEvent.usernameChanged(newUsername: 'abcd')),
      expect: () => [
        SignUpInitial(
          email: EmailAddress.empty(),
          username: Username('abcd'),
          password: Password.empty(),
          passwordAgain: Password.empty(),
          showErrorMessages: false,
        ),
      ],
    );
  });

  group('PasswordChanged', () {
    blocTest(
      'emits [SignUpInitial] with updated password',
      build: () => SignUpBloc(mockAuthService),
      act: (SignUpBloc bloc) =>
          bloc.add(const SignUpEvent.passwordChanged(newPassword: 'abcd')),
      expect: () => [
        SignUpInitial(
          email: EmailAddress.empty(),
          username: Username.empty(),
          password: Password('abcd'),
          passwordAgain: Password.empty(),
          showErrorMessages: false,
        ),
      ],
    );
  });

  group('PasswordChanged', () {
    blocTest(
      'emits [SignUpInitial] with updated password',
      build: () => SignUpBloc(mockAuthService),
      act: (SignUpBloc bloc) => bloc.add(
        const SignUpEvent.passwordAgainChanged(newPasswordAgain: 'abcd'),
      ),
      expect: () => [
        SignUpInitial(
          email: EmailAddress.empty(),
          username: Username.empty(),
          password: Password.empty(),
          passwordAgain: Password('abcd'),
          showErrorMessages: false,
        ),
      ],
    );
  });

  group('SignUpPressed', () {
    blocTest(
      'GIVEN SignInInitial with invalid email '
      'emits [SignInInitial] with showErrorMessages set to true',
      build: () => SignUpBloc(mockAuthService),
      seed: () => SignUpState.initial(
        email: EmailAddress('invalidEmail'),
        username: Username('dummyName'),
        password: Password('abcdefg'),
        passwordAgain: Password('abcdefg'),
        showErrorMessages: false,
      ),
      act: (SignUpBloc bloc) => bloc.add(const SignUpEvent.signUpPressed()),
      expect: () => [
        SignUpInitial(
          email: EmailAddress('invalidEmail'),
          username: Username('dummyName'),
          password: Password('abcdefg'),
          passwordAgain: Password('abcdefg'),
          showErrorMessages: true,
        ),
      ],
    );

    blocTest(
      'GIVEN SignInInitial with invalid username '
      'emits [SignInInitial] with showErrorMessages set to true',
      build: () => SignUpBloc(mockAuthService),
      seed: () => SignUpState.initial(
        email: EmailAddress('a@b.com'),
        username: Username('a'),
        password: Password('abcdefg'),
        passwordAgain: Password('abcdefg'),
        showErrorMessages: false,
      ),
      act: (SignUpBloc bloc) => bloc.add(const SignUpEvent.signUpPressed()),
      expect: () => [
        SignUpInitial(
          email: EmailAddress('a@b.com'),
          username: Username('a'),
          password: Password('abcdefg'),
          passwordAgain: Password('abcdefg'),
          showErrorMessages: true,
        ),
      ],
    );

    blocTest(
      'GIVEN SignInInitial with invalid password '
      'emits [SignInInitial] with showErrorMessages set to true',
      build: () => SignUpBloc(mockAuthService),
      seed: () => SignUpState.initial(
        email: EmailAddress('a@b.com'),
        username: Username('dummyName'),
        password: Password('a'),
        passwordAgain: Password('abcdefg'),
        showErrorMessages: false,
      ),
      act: (SignUpBloc bloc) => bloc.add(const SignUpEvent.signUpPressed()),
      expect: () => [
        SignUpInitial(
          email: EmailAddress('a@b.com'),
          username: Username('dummyName'),
          password: Password('a'),
          passwordAgain: Password('abcdefg'),
          showErrorMessages: true,
        ),
      ],
    );

    blocTest(
      'GIVEN SignInInitial with invalid passwordAgain '
      'emits [SignInInitial] with showErrorMessages set to true',
      build: () => SignUpBloc(mockAuthService),
      seed: () => SignUpState.initial(
        email: EmailAddress('a@b.com'),
        username: Username('dummyName'),
        password: Password('abcdefg'),
        passwordAgain: Password('a'),
        showErrorMessages: false,
      ),
      act: (SignUpBloc bloc) => bloc.add(const SignUpEvent.signUpPressed()),
      expect: () => [
        SignUpInitial(
          email: EmailAddress('a@b.com'),
          username: Username('dummyName'),
          password: Password('abcdefg'),
          passwordAgain: Password('a'),
          showErrorMessages: true,
        ),
      ],
    );

    blocTest(
      'GIVEN SignInInitial with not matching password and passwordAgain '
      'emits [SignInInitial] with showErrorMessages set to true',
      build: () => SignUpBloc(mockAuthService),
      seed: () => SignUpState.initial(
        email: EmailAddress('a@b.com'),
        username: Username('dummyName'),
        password: Password('abcdefg'),
        passwordAgain: Password('abcdefgh'),
        showErrorMessages: false,
      ),
      act: (SignUpBloc bloc) => bloc.add(const SignUpEvent.signUpPressed()),
      expect: () => [
        SignUpInitial(
          email: EmailAddress('a@b.com'),
          username: Username('dummyName'),
          password: Password('abcdefg'),
          passwordAgain: Password('abcdefgh'),
          showErrorMessages: true,
        ),
      ],
    );

    blocTest(
      'GIVEN SignInInitial with valid email, username, password and passwordAgain '
      'WHEN signin fails '
      'emits [SignInLoadInProgress, SignInLoadFailure, SignInInitial] with showErrorMessages set to true',
      build: () {
        when<Future<Either<AuthFailure, Unit>>>(
          () => mockAuthService.signUpWithEmailAndUsernameAndPassword(
            emailAddress: any(named: 'emailAddress'),
            username: any(named: 'username'),
            password: any(named: 'password'),
          ),
        ).thenAnswer((_) async => left(const AuthFailure.serverError()));

        return SignUpBloc(mockAuthService);
      },
      seed: () => SignUpState.initial(
        email: EmailAddress('a@b.com'),
        username: Username('dummyName'),
        password: Password('abcdefg'),
        passwordAgain: Password('abcdefg'),
        showErrorMessages: false,
      ),
      act: (SignUpBloc bloc) => bloc.add(const SignUpEvent.signUpPressed()),
      wait: const Duration(milliseconds: 600),
      expect: () => [
        const SignUpLoadInProgress(),
        const SignUpLoadFailure(
          authFailure: AuthFailure.serverError(),
        ),
        SignUpInitial(
          email: EmailAddress('a@b.com'),
          username: Username('dummyName'),
          password: Password('abcdefg'),
          passwordAgain: Password('abcdefg'),
          showErrorMessages: true,
        ),
      ],
    );

    blocTest(
      'GIVEN SignInInitial with valid email, username, password and passwordAgain '
      'WHEN signin succeeds '
      'emits [SignInLoadInProgress]',
      build: () {
        when<Future<Either<AuthFailure, Unit>>>(
          () => mockAuthService.signUpWithEmailAndUsernameAndPassword(
            emailAddress: any(named: 'emailAddress'),
            username: any(named: 'username'),
            password: any(named: 'password'),
          ),
        ).thenAnswer((_) async => right(unit));

        return SignUpBloc(mockAuthService);
      },
      seed: () => SignUpState.initial(
        email: EmailAddress('a@b.com'),
        username: Username('dummyName'),
        password: Password('abcdefg'),
        passwordAgain: Password('abcdefg'),
        showErrorMessages: false,
      ),
      act: (SignUpBloc bloc) => bloc.add(const SignUpEvent.signUpPressed()),
      wait: const Duration(milliseconds: 600),
      expect: () => [
        const SignUpLoadInProgress(),
      ],
    );
  });
}
