import 'dart:async';

import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/infrastructure/auth/mocked_auth_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class AuthenticatedMockAuthService extends MockedAuthService {
  @override
  bool isAuthenticated() => true;
}

class UnauthenticatedMockAuthService extends MockedAuthService {
  @override
  bool isAuthenticated() => false;
}

void main() {
  setUpAll(() {
    // mocktail related setup
    registerFallbackValue(EmailAddress.empty());
    registerFallbackValue(Username.empty());
    registerFallbackValue(Password.empty());
  });

  group('idToken', () {
    test(
      'GIVEN authenticated user '
      'THEN return dummyIdToken ',
      () async {
        // Arrange
        final underTest = AuthenticatedMockAuthService();

        // Act
        final idToken = await underTest.idToken();

        // Assert
        expect(idToken, 'dummyIdToken');
      },
    );

    test(
      'GIVEN not authenticated user '
      'THEN throw NotAuthenticatedError ',
      () async {
        // Arrange
        final underTest = UnauthenticatedMockAuthService();

        // Act
        final idToken = await underTest.idToken();

        // Assert
        expect(idToken, null);
      },
    );
  });

  group('isAuthenticated', () {
    test(
      'GIVEN new created mocked auth service '
      'THEN return false ',
      () async {
        // Arrange & Act
        final underTest = MockedAuthService();

        // Assert
        expect(underTest.isAuthenticated(), false);
      },
    );
  });

  group('sendPasswordResetEmail', () {
    test(
      'GIVEN network access '
      'WHEN email is valid '
      'THEN return unit ',
      () async {
        // Arrange
        final underTest = MockedAuthService();

        // Act
        final failurOrUnit = await underTest.sendPasswordResetEmail(
          emailAddress: EmailAddress('a@b.com'),
        );

        // Assert
        expect(failurOrUnit.isRight(), true);
      },
    );

    test(
      'GIVEN network access '
      'WHEN email is invalid '
      'THEN return invalid email failure ',
      () async {
        // Arrange
        final underTest = MockedAuthService();

        // Act
        final failurOrUnit = await underTest.sendPasswordResetEmail(
          emailAddress: EmailAddress('a'),
        );

        // Assert
        expect(failurOrUnit, left(const AuthFailure.invalidEmail()));
      },
    );

    test(
      'GIVEN no network access '
      'THEN return server error failure ',
      () async {
        // Arrange
        final underTest = MockedAuthService();
        underTest.hasNetworkConnection = false;

        // Act
        final failurOrUnit = await underTest.sendPasswordResetEmail(
          emailAddress: EmailAddress('a@b.com'),
        );

        // Assert
        expect(failurOrUnit, left(const AuthFailure.serverError()));
      },
    );
  });

  group('signInWithApple', () {
    test(
      'GIVEN cancelled by user '
      'THEN return cancelled by user failure ',
      () async {
        // Arrange
        final underTest = MockedAuthService();
        underTest.cancelledByUser = true;

        // Act
        final failurOrUnit = await underTest.signInWithApple();

        // Assert
        expect(failurOrUnit, left(const AuthFailure.cancelledByUser()));
      },
    );

    test(
      'GIVEN network access '
      'THEN return unit, update state to authenticated and emit updated auth state ',
      () async {
        // Arrange
        final underTest = MockedAuthService();

        // Act
        final failurOrUnit = await underTest.signInWithApple();

        // Assert
        expect(failurOrUnit.isRight(), true);
        expect(
          underTest.isAuthenticated(),
          true,
        );
        expect(underTest.watchIsAuthenticated(), emitsInOrder([true]));
      },
    );

    test(
      'GIVEN no network access '
      'THEN return server error failure ',
      () async {
        // Arrange
        final underTest = MockedAuthService();
        underTest.hasNetworkConnection = false;

        // Act
        final failurOrUnit = await underTest.signInWithApple();

        // Assert
        expect(failurOrUnit, left(const AuthFailure.serverError()));
      },
    );
  });

  group('signInWithEmailAndPassword', () {
    test(
      'GIVEN network access '
      'WHEN email is invalid '
      'THEN return invalid email and password combination failure ',
      () async {
        // Arrange
        final underTest = MockedAuthService();

        // Act
        final failurOrUnit = await underTest.signInWithEmailAndPassword(
          emailAddress: EmailAddress('a'),
          password: Password('abcdefg12'),
        );

        // Assert
        expect(failurOrUnit,
            left(const AuthFailure.invalidEmailAndPasswordCombination()));
      },
    );

    test(
      'GIVEN network access '
      'WHEN password is invalid '
      'THEN return invalid email and password combination failure ',
      () async {
        // Arrange
        final underTest = MockedAuthService();

        // Act
        final failurOrUnit = await underTest.signInWithEmailAndPassword(
          emailAddress: EmailAddress('a@b.com'),
          password: Password('a'),
        );

        // Assert
        expect(failurOrUnit,
            left(const AuthFailure.invalidEmailAndPasswordCombination()));
      },
    );

    test(
      'GIVEN network access '
      'WHEN email and password are valid '
      'THEN return unit, update state to authenticated and emit updated auth state ',
      () async {
        // Arrange
        final underTest = MockedAuthService();

        // Act
        final failurOrUnit = await underTest.signInWithEmailAndPassword(
          emailAddress: EmailAddress('a@b.com'),
          password: Password('abcdefg12'),
        );

        // Assert
        expect(failurOrUnit.isRight(), true);
        expect(
          underTest.isAuthenticated(),
          true,
        );
        expect(underTest.watchIsAuthenticated(), emitsInOrder([true]));
      },
    );

    test(
      'GIVEN no network access '
      'THEN return server error failure ',
      () async {
        // Arrange
        final underTest = MockedAuthService();
        underTest.hasNetworkConnection = false;

        // Act
        final failurOrUnit = await underTest.signInWithEmailAndPassword(
          emailAddress: EmailAddress('a@b.com'),
          password: Password('abcdefg12'),
        );

        // Assert
        expect(failurOrUnit, left(const AuthFailure.serverError()));
      },
    );
  });

  group('signInWithFacebook', () {
    test(
      'GIVEN cancelled by user '
      'THEN return cancelled by user failure ',
      () async {
        // Arrange
        final underTest = MockedAuthService();
        underTest.cancelledByUser = true;

        // Act
        final failurOrUnit = await underTest.signInWithFacebook();

        // Assert
        expect(failurOrUnit, left(const AuthFailure.cancelledByUser()));
      },
    );

    test(
      'GIVEN network access '
      'THEN return unit, update state to authenticated and emit updated auth state ',
      () async {
        // Arrange
        final underTest = MockedAuthService();

        // Act
        final failurOrUnit = await underTest.signInWithFacebook();

        // Assert
        expect(failurOrUnit.isRight(), true);
        expect(
          underTest.isAuthenticated(),
          true,
        );
        expect(underTest.watchIsAuthenticated(), emitsInOrder([true]));
      },
    );

    test(
      'GIVEN no network access '
      'THEN return server error failure ',
      () async {
        // Arrange
        final underTest = MockedAuthService();
        underTest.hasNetworkConnection = false;

        // Act
        final failurOrUnit = await underTest.signInWithFacebook();

        // Assert
        expect(failurOrUnit, left(const AuthFailure.serverError()));
      },
    );
  });

  group('signInWithGoogle', () {
    test(
      'GIVEN cancelled by user '
      'THEN return cancelled by user failure ',
      () async {
        // Arrange
        final underTest = MockedAuthService();
        underTest.cancelledByUser = true;

        // Act
        final failurOrUnit = await underTest.signInWithGoogle();

        // Assert
        expect(failurOrUnit, left(const AuthFailure.cancelledByUser()));
      },
    );

    test(
      'GIVEN network access '
      'THEN return unit, update state to authenticated and emit updated auth state ',
      () async {
        // Arrange
        final underTest = MockedAuthService();

        // Act
        final failurOrUnit = await underTest.signInWithGoogle();

        // Assert
        expect(failurOrUnit.isRight(), true);
        expect(
          underTest.isAuthenticated(),
          true,
        );
        expect(underTest.watchIsAuthenticated(), emitsInOrder([true]));
      },
    );

    test(
      'GIVEN no network access '
      'THEN return server error failure ',
      () async {
        // Arrange
        final underTest = MockedAuthService();
        underTest.hasNetworkConnection = false;

        // Act
        final failurOrUnit = await underTest.signInWithGoogle();

        // Assert
        expect(failurOrUnit, left(const AuthFailure.serverError()));
      },
    );
  });

  group('signInWithUsernameAndPassword', () {
    test(
      'GIVEN network access '
      'WHEN username is invalid '
      'THEN return invalid username and password combination failure ',
      () async {
        // Arrange
        final underTest = MockedAuthService();

        // Act
        final failurOrUnit = await underTest.signInWithUsernameAndPassword(
          username: Username('a'),
          password: Password('abcdefg12'),
        );

        // Assert
        expect(
          failurOrUnit,
          left(const AuthFailure.invalidUsernameAndPasswordCombination()),
        );
      },
    );

    test(
      'GIVEN network access '
      'WHEN password is invalid '
      'THEN return invalid username and password combination failure ',
      () async {
        // Arrange
        final underTest = MockedAuthService();

        // Act
        final failurOrUnit = await underTest.signInWithUsernameAndPassword(
          username: Username('dummyUser'),
          password: Password('a'),
        );

        // Assert
        expect(failurOrUnit,
            left(const AuthFailure.invalidUsernameAndPasswordCombination()));
      },
    );

    test(
      'GIVEN network access '
      'WHEN username and password are valid '
      'THEN return unit, update state to authenticated and emit updated auth state ',
      () async {
        // Arrange
        final underTest = MockedAuthService();

        // Act
        final failurOrUnit = await underTest.signInWithUsernameAndPassword(
          username: Username('dummyUser'),
          password: Password('abcdefg12'),
        );

        // Assert
        expect(failurOrUnit.isRight(), true);
        expect(
          underTest.isAuthenticated(),
          true,
        );
        expect(underTest.watchIsAuthenticated(), emitsInOrder([true]));
      },
    );

    test(
      'GIVEN no network access '
      'THEN return server error failure ',
      () async {
        // Arrange
        final underTest = MockedAuthService();
        underTest.hasNetworkConnection = false;

        // Act
        final failurOrUnit = await underTest.signInWithUsernameAndPassword(
          username: Username('dummyUser'),
          password: Password('abcdefg12'),
        );

        // Assert
        expect(failurOrUnit, left(const AuthFailure.serverError()));
      },
    );
  });

  group('signOut', () {
    test(
      'GIVEN network access '
      'THEN return unit, update state to unauthenticated and emit updated auth state ',
      () async {
        // Arrange
        final underTest = MockedAuthService();

        // Act
        final failurOrUnit = await underTest.signOut();

        // Assert
        expect(failurOrUnit.isRight(), true);
        expect(
          underTest.isAuthenticated(),
          false,
        );
        expect(underTest.watchIsAuthenticated(), emitsInOrder([false]));
      },
    );

    test(
      'GIVEN no network access '
      'THEN return server error failure ',
      () async {
        // Arrange
        final underTest = MockedAuthService();
        underTest.hasNetworkConnection = false;

        // Act
        final failurOrUnit = await underTest.signOut();

        // Assert
        expect(failurOrUnit, left(const AuthFailure.serverError()));
      },
    );
  });

  group('signUpWithEmailAndUsernameAndPassword', () {
    test(
      'GIVEN network access '
      'WHEN email is invalid '
      'THEN return invalid email failure ',
      () async {
        // Arrange
        final underTest = MockedAuthService();

        // Act
        final failurOrUnit =
            await underTest.signUpWithEmailAndUsernameAndPassword(
          emailAddress: EmailAddress('a'),
          username: Username('dummyUser'),
          password: Password('abcdefg12'),
        );

        // Assert
        expect(failurOrUnit, left(const AuthFailure.invalidEmail()));
      },
    );

    test(
      'GIVEN network access '
      'WHEN username is invalid '
      'THEN return invalid username failure ',
      () async {
        // Arrange
        final underTest = MockedAuthService();

        // Act
        final failurOrUnit =
            await underTest.signUpWithEmailAndUsernameAndPassword(
          emailAddress: EmailAddress('a@b.com'),
          username: Username('a'),
          password: Password('abcdefg12'),
        );

        // Assert
        expect(failurOrUnit, left(const AuthFailure.invalidUsername()));
      },
    );

    test(
      'GIVEN network access '
      'WHEN password is invalid '
      'THEN return invalid password failure ',
      () async {
        // Arrange
        final underTest = MockedAuthService();

        // Act
        final failurOrUnit =
            await underTest.signUpWithEmailAndUsernameAndPassword(
          emailAddress: EmailAddress('a@b.com'),
          username: Username('dummyUser'),
          password: Password('a'),
        );

        // Assert
        expect(failurOrUnit, left(const AuthFailure.invalidPassword()));
      },
    );

    test(
      'GIVEN network access and email already in use '
      'THEN return email already in use failure ',
      () async {
        // Arrange
        final underTest = MockedAuthService();
        underTest.emailAlreadyInUse = true;

        // Act
        final failurOrUnit =
            await underTest.signUpWithEmailAndUsernameAndPassword(
          emailAddress: EmailAddress('a@b.com'),
          username: Username('aaaaa'),
          password: Password('abcdefg12'),
        );

        // Assert
        expect(failurOrUnit, left(const AuthFailure.emailAlreadyInUse()));
      },
    );

    test(
      'GIVEN network access and username already in use '
      'THEN return username already in use failure ',
      () async {
        // Arrange
        final underTest = MockedAuthService();
        underTest.usernameAlreadyInUse = true;

        // Act
        final failurOrUnit =
            await underTest.signUpWithEmailAndUsernameAndPassword(
          emailAddress: EmailAddress('a@b.com'),
          username: Username('aaaaa'),
          password: Password('abcdefg12'),
        );

        // Assert
        expect(failurOrUnit, left(const AuthFailure.usernameAlreadyInUse()));
      },
    );

    test(
      'GIVEN network access '
      'WHEN email, username and password are valid '
      'THEN return unit, update state to authenticated and emit updated auth state ',
      () async {
        // Arrange
        final underTest = MockedAuthService();

        // Act
        final failurOrUnit =
            await underTest.signUpWithEmailAndUsernameAndPassword(
          emailAddress: EmailAddress('a@b.com'),
          username: Username('dummyUser'),
          password: Password('abcdefg12'),
        );

        // Assert
        expect(failurOrUnit.isRight(), true);
        expect(
          underTest.isAuthenticated(),
          true,
        );
        expect(underTest.watchIsAuthenticated(), emitsInOrder([true]));
      },
    );

    test(
      'GIVEN no network access '
      'THEN return server error failure ',
      () async {
        // Arrange
        final underTest = MockedAuthService();
        underTest.hasNetworkConnection = false;

        // Act
        final failurOrUnit =
            await underTest.signUpWithEmailAndUsernameAndPassword(
          emailAddress: EmailAddress('a@b.com'),
          username: Username('dummyUser'),
          password: Password('abcdefg12'),
        );

        // Assert
        expect(failurOrUnit, left(const AuthFailure.serverError()));
      },
    );
  });

  group('updatePassword', () {
    test(
      'GIVEN not authenticated user '
      'THEN throw NotAuthenticatedError ',
      () async {
        // Arrange
        final underTest = UnauthenticatedMockAuthService();

        // Act & Assert
        expect(
          underTest.updatePassword(
            oldPassword: Password('abcdefg12'),
            newPassword: Password('abcdefg123'),
          ),
          throwsA(isA<NotAuthenticatedError>()),
        );
      },
    );

    test(
      'GIVEN authenticated user and network access '
      'WHEN oldPassword is invalid '
      'THEN return invalid old password failure ',
      () async {
        // Arrange
        final underTest = AuthenticatedMockAuthService();

        // Act
        final failurOrUnit = await underTest.updatePassword(
          oldPassword: Password('a'),
          newPassword: Password('abcdefg12'),
        );

        // Assert
        expect(failurOrUnit, left(const AuthFailure.invalidOldPassword()));
      },
    );

    test(
      'GIVEN authenticated user and network access '
      'WHEN newPassword is invalid '
      'THEN return invalid new password failure ',
      () async {
        // Arrange
        final underTest = AuthenticatedMockAuthService();

        // Act
        final failurOrUnit = await underTest.updatePassword(
          oldPassword: Password('abcdefg12'),
          newPassword: Password('a'),
        );

        // Assert
        expect(failurOrUnit, left(const AuthFailure.invalidNewPassword()));
      },
    );

    test(
      'GIVEN authenticated user and network access '
      'WHEN old password and new password are valid '
      'THEN return unit ',
      () async {
        // Arrange
        final underTest = AuthenticatedMockAuthService();

        // Act
        final failurOrUnit = await underTest.updatePassword(
          oldPassword: Password('abcdefg'),
          newPassword: Password('abcdefg12'),
        );

        // Assert
        expect(failurOrUnit.isRight(), true);
      },
    );

    test(
      'GIVEN authenticated user and network access '
      'THEN return server error failure ',
      () async {
        // Arrange
        final underTest = AuthenticatedMockAuthService();
        underTest.hasNetworkConnection = false;

        // Act
        final failurOrUnit = await underTest.updatePassword(
          oldPassword: Password('abcdefg'),
          newPassword: Password('abcdefg12'),
        );

        // Assert
        expect(failurOrUnit, left(const AuthFailure.serverError()));
      },
    );
  });

  group('userId', () {
    test(
      'GIVEN authenticated user '
      'THEN return dummyIdToken ',
      () async {
        // Arrange
        final underTest = AuthenticatedMockAuthService();

        // Act
        final userId = underTest.userId();

        // Assert
        expect(userId, UniqueId.fromUniqueString('dummyUid'));
      },
    );

    test(
      'GIVEN not authenticated user '
      'THEN throw NotAuthenticatedError ',
      () async {
        // Arrange
        final underTest = UnauthenticatedMockAuthService();

        // Act
        final userId = underTest.userId();

        // Assert
        expect(userId, null);
      },
    );
  });

  group('watchIsAuthenticated', () {
    test(
      'GIVEN authenticated but has no network access '
      'THEN emit [true] ',
      () async {
        // Arrange
        final underTest = AuthenticatedMockAuthService();
        await underTest.signInWithApple();
        underTest.hasNetworkConnection = false;

        // Act & Assert
        expect(underTest.watchIsAuthenticated(), emitsInOrder([true]));
      },
    );

    test(
      'GIVEN unauthenticated that has no network access '
      'THEN emit [false] ',
      () {
        // Arrange
        final underTest = MockedAuthService();
        underTest.hasNetworkConnection = false;

        // Act & Assert
        expect(underTest.watchIsAuthenticated(), emitsInOrder([false]));
      },
    );

    test(
      'WHEN auth state changes '
      'THEN emit [false, true, false] ',
      () {
        // Arrange
        final underTest = MockedAuthService();
        Timer.run(() async {
          await underTest.signInWithApple();
          await underTest.signOut();
        });

        // Act & Assert
        expect(
          underTest.watchIsAuthenticated(),
          emitsInOrder([false, true, false]),
        );
      },
    );
  });
}
