import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/unauthenticated/sign_in/sign_in_bloc.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthService extends Mock implements IAuthService {}

void main() {
  setUpAll(() {
    // Mocktail related setup
    registerFallbackValue(EmailAddress.empty());
    registerFallbackValue(Password.empty());
  });

  late MockAuthService mockAuthService;

  setUp(() {
    mockAuthService = MockAuthService();
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test('Initial state set to SignInInitial with email and password empty.',
          () {
        // Arrange & Act
        final underTest = SignInBloc(mockAuthService);

        // Assert
        expect(
          underTest.state,
          SignInState.initial(
            email: EmailAddress.empty(),
            password: Password.empty(),
          ),
        );
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN SignInBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => SignInBloc.getIt(),
          throwsA(anything),
        );
      });

      test(
          'GIVEN ForgotPasswordBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = SignInBloc(mockAuthService);
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = SignInBloc.getIt();

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        // Reset DI-container
        await getIt.reset();
      });
    });
  });

  group('#Events#', () {
    group('#EmailChanged#', () {
      blocTest(
        'Emit [SignInInitial] with updated email.',
        build: () => SignInBloc(mockAuthService),
        act: (SignInBloc bloc) =>
            bloc.add(const SignInEvent.emailChanged(newEmail: 'abcd')),
        expect: () => [
          SignInInitial(
            email: EmailAddress('abcd'),
            password: Password.empty(),
          ),
        ],
      );
    });

    group('#PasswordChanged#', () {
      blocTest(
        'Emit [SignInInitial] with updated password.',
        build: () => SignInBloc(mockAuthService),
        act: (SignInBloc bloc) =>
            bloc.add(const SignInEvent.passwordChanged(newPassword: 'abcd')),
        expect: () => [
          SignInInitial(
            email: EmailAddress.empty(),
            password: Password('abcd'),
          ),
        ],
      );
    });

    group('#SignInPressed#', () {
      blocTest(
        'GIVEN SignInInitial with invalid email '
        'THEN emit [SignInLoadFailure, SignInInitial].',
        build: () => SignInBloc(mockAuthService),
        seed: () => SignInState.initial(
          email: EmailAddress('invalidEmail'),
          password: Password('abcdefg'),
        ),
        act: (SignInBloc bloc) => bloc.add(const SignInEvent.signInPressed()),
        expect: () => [
          const SignInLoadFailure(
            failure: AuthFailure.invalidEmailAndPasswordCombination(),
          ),
          SignInInitial(
            email: EmailAddress('invalidEmail'),
            password: Password('abcdefg'),
          ),
        ],
      );

      blocTest(
        'GIVEN SignInInitial with invalid password '
        'THEN emit [SignInLoadFailure, SignInInitial].',
        build: () => SignInBloc(mockAuthService),
        seed: () => SignInState.initial(
          email: EmailAddress('a@b.com'),
          password: Password('a'),
        ),
        act: (SignInBloc bloc) => bloc.add(const SignInEvent.signInPressed()),
        expect: () => [
          const SignInLoadFailure(
            failure: AuthFailure.invalidEmailAndPasswordCombination(),
          ),
          SignInInitial(
            email: EmailAddress('a@b.com'),
            password: Password('a'),
          ),
        ],
      );

      blocTest(
        'GIVEN SignInInitial with valid email and password '
        'WHEN signin fails '
        'THEN emit [SignInLoadInProgress, SignInLoadFailure, SignInInitial].',
        build: () {
          when<Future<Either<AuthFailure, Unit>>>(
            () => mockAuthService.signInWithEmailAndPassword(
              emailAddress: any(named: 'emailAddress'),
              password: any(named: 'password'),
            ),
          ).thenAnswer((_) async => left(const AuthFailure.serverError()));

          return SignInBloc(mockAuthService);
        },
        seed: () => SignInState.initial(
          email: EmailAddress('a@b.com'),
          password: Password('abcdefg'),
        ),
        act: (SignInBloc bloc) => bloc.add(const SignInEvent.signInPressed()),
        wait: const Duration(milliseconds: 600),
        expect: () => [
          const SignInLoadInProgress(),
          const SignInLoadFailure(
            failure: AuthFailure.serverError(),
          ),
          SignInInitial(
            email: EmailAddress('a@b.com'),
            password: Password('abcdefg'),
          ),
        ],
      );

      blocTest(
        'GIVEN SignInInitial with valid email and password '
        'WHEN signin succeeds '
        'THEN emit [SignInLoadInProgress].',
        build: () {
          when<Future<Either<AuthFailure, Unit>>>(
            () => mockAuthService.signInWithEmailAndPassword(
              emailAddress: any(named: 'emailAddress'),
              password: any(named: 'password'),
            ),
          ).thenAnswer((_) async => right(unit));

          return SignInBloc(mockAuthService);
        },
        seed: () => SignInState.initial(
          email: EmailAddress('a@b.com'),
          password: Password('abcdefg'),
        ),
        act: (SignInBloc bloc) => bloc.add(const SignInEvent.signInPressed()),
        wait: const Duration(milliseconds: 600),
        expect: () => [
          const SignInLoadInProgress(),
        ],
      );
    });

    group('#SignInWithFacebookPressed#', () {
      blocTest(
        'GIVEN SignInInitial '
        'WHEN signin fails '
        'THEN emit [SignInLoadInProgress, SignInLoadFailure, SignInInitial].',
        build: () {
          when<Future<Either<AuthFailure, Unit>>>(
            () => mockAuthService.signInWithFacebook(),
          ).thenAnswer((_) async => left(const AuthFailure.serverError()));

          return SignInBloc(mockAuthService);
        },
        seed: () => SignInState.initial(
          email: EmailAddress.empty(),
          password: Password.empty(),
        ),
        act: (SignInBloc bloc) =>
            bloc.add(const SignInEvent.signInWithFacebookPressed()),
        wait: const Duration(milliseconds: 600),
        expect: () => [
          const SignInLoadInProgress(),
          const SignInLoadFailure(
            failure: AuthFailure.serverError(),
          ),
          SignInInitial(
            email: EmailAddress.empty(),
            password: Password.empty(),
          ),
        ],
      );

      blocTest(
        'GIVEN SignInInitial '
        'WHEN signin succeeds '
        'THEN emit [SignInLoadInProgress].',
        build: () {
          when<Future<Either<AuthFailure, Unit>>>(
            () => mockAuthService.signInWithFacebook(),
          ).thenAnswer((_) async => right(unit));

          return SignInBloc(mockAuthService);
        },
        seed: () => SignInState.initial(
          email: EmailAddress.empty(),
          password: Password.empty(),
        ),
        act: (SignInBloc bloc) =>
            bloc.add(const SignInEvent.signInWithFacebookPressed()),
        wait: const Duration(milliseconds: 600),
        expect: () => [
          const SignInLoadInProgress(),
        ],
      );
    });

    group('#SignInWithGooglePressed#', () {
      blocTest(
        'GIVEN SignInInitial '
        'WHEN signin fails '
        'THEN emit [SignInLoadInProgress, SignInLoadFailure, SignInInitial].',
        build: () {
          when<Future<Either<AuthFailure, Unit>>>(
            () => mockAuthService.signInWithGoogle(),
          ).thenAnswer((_) async => left(const AuthFailure.serverError()));

          return SignInBloc(mockAuthService);
        },
        seed: () => SignInState.initial(
          email: EmailAddress.empty(),
          password: Password.empty(),
        ),
        act: (SignInBloc bloc) =>
            bloc.add(const SignInEvent.signInWithGooglePressed()),
        wait: const Duration(milliseconds: 600),
        expect: () => [
          const SignInLoadInProgress(),
          const SignInLoadFailure(
            failure: AuthFailure.serverError(),
          ),
          SignInInitial(
            email: EmailAddress.empty(),
            password: Password.empty(),
          ),
        ],
      );

      blocTest(
        'GIVEN SignInInitial '
        'WHEN signin succeeds '
        'THEN emit [SignInLoadInProgress].',
        build: () {
          when<Future<Either<AuthFailure, Unit>>>(
            () => mockAuthService.signInWithGoogle(),
          ).thenAnswer((_) async => right(unit));

          return SignInBloc(mockAuthService);
        },
        seed: () => SignInState.initial(
          email: EmailAddress.empty(),
          password: Password.empty(),
        ),
        act: (SignInBloc bloc) =>
            bloc.add(const SignInEvent.signInWithGooglePressed()),
        wait: const Duration(milliseconds: 600),
        expect: () => [
          const SignInLoadInProgress(),
        ],
      );
    });

    group('#SignInWithApplePressed#', () {
      blocTest(
        'GIVEN SignInInitial '
        'WHEN signin fails '
        'THEN emit [SignInLoadInProgress, SignInLoadFailure, SignInInitial].',
        build: () {
          when<Future<Either<AuthFailure, Unit>>>(
            () => mockAuthService.signInWithApple(),
          ).thenAnswer((_) async => left(const AuthFailure.serverError()));

          return SignInBloc(mockAuthService);
        },
        seed: () => SignInState.initial(
          email: EmailAddress.empty(),
          password: Password.empty(),
        ),
        act: (SignInBloc bloc) =>
            bloc.add(const SignInEvent.signInWithApplePressed()),
        wait: const Duration(milliseconds: 600),
        expect: () => [
          const SignInLoadInProgress(),
          const SignInLoadFailure(
            failure: AuthFailure.serverError(),
          ),
          SignInInitial(
            email: EmailAddress.empty(),
            password: Password.empty(),
          ),
        ],
      );

      blocTest(
        'GIVEN SignInInitial '
        'WHEN signin succeeds '
        'THEN emit [SignInLoadInProgress].',
        build: () {
          when<Future<Either<AuthFailure, Unit>>>(
            () => mockAuthService.signInWithApple(),
          ).thenAnswer((_) async => right(unit));

          return SignInBloc(mockAuthService);
        },
        seed: () => SignInState.initial(
          email: EmailAddress.empty(),
          password: Password.empty(),
        ),
        act: (SignInBloc bloc) =>
            bloc.add(const SignInEvent.signInWithApplePressed()),
        wait: const Duration(milliseconds: 600),
        expect: () => [
          const SignInLoadInProgress(),
        ],
      );
    });
  });
}
