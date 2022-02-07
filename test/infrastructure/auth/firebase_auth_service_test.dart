import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/infrastructure/auth/apple_sign_in.dart';
import 'package:dart_counter/infrastructure/auth/firebase_auth_service.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in_mocks/google_sign_in_mocks.dart';
import 'package:mocktail/mocktail.dart';
import 'package:social_client/social_client.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockFirebaseUser extends Mock implements User {}

class MockAppleSignIn extends Mock implements AppleSignIn {}

class MockGoogleSignIn extends Mock implements GoogleSignIn {}

class MockFacebookAuth extends Mock implements FacebookAuth {}

class MockSocialClient extends Mock implements SocialClient {}

void main() {
  late MockFirebaseAuth auth;
  late MockFirebaseUser firebaseUser;
  late MockAppleSignIn appleSignIn;
  late GetOAuthCredentialFromApple getAppleCredential;
  late MockGoogleSignIn googleSignIn;
  late GetOAuthCredentialFromGoogle getGoogleCredential;
  late MockFacebookAuth facebookAuth;
  late GetOAuthCredentialFromFacebook getFacebookCredential;
  late MockSocialClient socialClient;
  late GetAuthCredentialFromEmail getEmailCredential;

  const idToken = 'idToken';
  const uid = 'uniqueId';

  setUpAll(() {
    auth = MockFirebaseAuth();
    when(() => auth.signOut()).thenAnswer((_) async {});
    firebaseUser = MockFirebaseUser();
    when(() => firebaseUser.getIdToken()).thenAnswer((_) async => idToken);
    when(() => firebaseUser.uid).thenReturn(uid);
    appleSignIn = MockAppleSignIn();
    getAppleCredential = (idToken, rawNonce) =>
        const OAuthCredential(providerId: 'apple', signInMethod: 'method');
    googleSignIn = MockGoogleSignIn();
    when(() => googleSignIn.signOut())
        .thenAnswer((_) async => MockGoogleSignInAccount());
    getGoogleCredential = (idToken, accessToken) =>
        const OAuthCredential(providerId: 'google', signInMethod: 'method');
    facebookAuth = MockFacebookAuth();
    when(() => facebookAuth.logOut()).thenAnswer((_) async {});
    getFacebookCredential = (token) =>
        const OAuthCredential(providerId: 'facebook', signInMethod: 'method');
    socialClient = MockSocialClient();
    getEmailCredential = (email, password) =>
        const AuthCredential(providerId: 'email', signInMethod: 'method');
  });

  group('idToken', () {
    test(
        'GIVEN current user is not null '
        'THEN return the idToken of that user.', () async {
      // Arrange
      when(() => auth.currentUser).thenReturn(firebaseUser);
      final firebaseAuthService = FirebaseAuthService(
        auth,
        appleSignIn,
        getAppleCredential,
        googleSignIn,
        getGoogleCredential,
        facebookAuth,
        getFacebookCredential,
        socialClient,
        getEmailCredential,
      );

      // Act
      final underTest = await firebaseAuthService.idToken();

      // Assert
      expect(underTest, idToken);
    });

    test(
        'GIVEN current user is null '
        'THEN return null.', () async {
      // Arrange
      when(() => auth.currentUser).thenReturn(null);
      final firebaseAuthService = FirebaseAuthService(
        auth,
        appleSignIn,
        getAppleCredential,
        googleSignIn,
        getGoogleCredential,
        facebookAuth,
        getFacebookCredential,
        socialClient,
        getEmailCredential,
      );

      // Act & Assert
      expect(
        () async => firebaseAuthService.idToken(),
        throwsA(isA<NotAuthenticatedError>()),
      );
    });
  });

  group('isAuthenticated', () {
    test(
        'GIVEN current user is not null '
        'THEN return true.', () async {
      // Arrange
      when(() => auth.currentUser).thenReturn(firebaseUser);
      final firebaseAuthService = FirebaseAuthService(
        auth,
        appleSignIn,
        getAppleCredential,
        googleSignIn,
        getGoogleCredential,
        facebookAuth,
        getFacebookCredential,
        socialClient,
        getEmailCredential,
      );

      // Act
      final underTest = firebaseAuthService.isAuthenticated();

      // Assert
      expect(underTest, true);
    });

    test(
        'GIVEN current user is null '
        'THEN return false.', () async {
      // Arrange
      when(() => auth.currentUser).thenReturn(null);
      final firebaseAuthService = FirebaseAuthService(
        auth,
        appleSignIn,
        getAppleCredential,
        googleSignIn,
        getGoogleCredential,
        facebookAuth,
        getFacebookCredential,
        socialClient,
        getEmailCredential,
      );

      // Act
      final underTest = firebaseAuthService.isAuthenticated();

      // Assert
      expect(underTest, false);
    });
  });

  group('sendPasswordResetEmail', () {
    test(
        'GIVEN incoming email is not valid '
        'THEN return failure invalid email.', () async {
      // Arrange
      final invalidEmail = EmailAddress('abc');
      final firebaseAuthService = FirebaseAuthService(
        auth,
        appleSignIn,
        getAppleCredential,
        googleSignIn,
        getGoogleCredential,
        facebookAuth,
        getFacebookCredential,
        socialClient,
        getEmailCredential,
      );

      // Act
      final underTest = await firebaseAuthService.sendPasswordResetEmail(
        emailAddress: invalidEmail,
      );

      // Assert
      expect(underTest, left(const AuthFailure.invalidEmail()));
    });

    test(
        'GIVEN incoming email is valid '
        'GIVEN send password reset mail fails '
        'THEN return failure server error.', () async {
      // Arrange
      final validEmail = EmailAddress('a@b.c');
      when(
        () => auth.sendPasswordResetEmail(email: validEmail.getOrCrash()),
      ).thenThrow(Error());
      final firebaseAuthService = FirebaseAuthService(
        auth,
        appleSignIn,
        getAppleCredential,
        googleSignIn,
        getGoogleCredential,
        facebookAuth,
        getFacebookCredential,
        socialClient,
        getEmailCredential,
      );

      // Act
      final underTest = await firebaseAuthService.sendPasswordResetEmail(
        emailAddress: validEmail,
      );

      // Assert
      expect(underTest, left(const AuthFailure.serverError()));
    });

    test(
        'GIVEN incoming email is valid '
        'GIVEN send password reset mail succeeds '
        'THEN return unit.', () async {
      // Arrange
      final validEmail = EmailAddress('a@b.c');
      when(
        () => auth.sendPasswordResetEmail(email: validEmail.getOrCrash()),
      ).thenAnswer((_) async {});
      final firebaseAuthService = FirebaseAuthService(
        auth,
        appleSignIn,
        getAppleCredential,
        googleSignIn,
        getGoogleCredential,
        facebookAuth,
        getFacebookCredential,
        socialClient,
        getEmailCredential,
      );

      // Act
      final underTest = await firebaseAuthService.sendPasswordResetEmail(
        emailAddress: validEmail,
      );

      // Assert
      expect(underTest, right(unit));
    });
  });

  group('signInWithApple', () {
    // TODO implement tests
  });

  group('signInWithEmailAndPassword', () {
    test(
        'GIVEN incoming email is not valid '
        'GIVEN incoming password is valid '
        'THEN return failure invalid email and password combination.',
        () async {
      // Arrange
      final invalidEmail = EmailAddress('abc');
      final validPassword = Password('abcde1234');

      final firebaseAuthService = FirebaseAuthService(
        auth,
        appleSignIn,
        getAppleCredential,
        googleSignIn,
        getGoogleCredential,
        facebookAuth,
        getFacebookCredential,
        socialClient,
        getEmailCredential,
      );

      // Act
      final underTest = await firebaseAuthService.signInWithEmailAndPassword(
        emailAddress: invalidEmail,
        password: validPassword,
      );

      // Assert
      expect(
        underTest,
        left(const AuthFailure.invalidEmailAndPasswordCombination()),
      );
    });

    test(
        'GIVEN incoming email is valid '
        'GIVEN incoming password is not valid '
        'THEN return failure invalid email and password combination.',
        () async {
      // Arrange
      final validEmail = EmailAddress('a@b.c');
      final invalidPassword = Password('');

      final firebaseAuthService = FirebaseAuthService(
        auth,
        appleSignIn,
        getAppleCredential,
        googleSignIn,
        getGoogleCredential,
        facebookAuth,
        getFacebookCredential,
        socialClient,
        getEmailCredential,
      );

      // Act
      final underTest = await firebaseAuthService.signInWithEmailAndPassword(
        emailAddress: validEmail,
        password: invalidPassword,
      );

      // Assert
      expect(
        underTest,
        left(const AuthFailure.invalidEmailAndPasswordCombination()),
      );
    });

    test(
        'GIVEN incoming email is valid '
        'GIVEN incoming password is valid '
        'GIVEN sign in fails with error wrong password '
        'THEN return failure invalid email and password combination.',
        () async {
      // Arrange
      final validEmail = EmailAddress('a@b.c');
      final validPassword = Password('abcde123');

      when(
        () => auth.signInWithEmailAndPassword(
          email: validEmail.getOrCrash(),
          password: validPassword.getOrCrash(),
        ),
      ).thenThrow(FirebaseAuthException(code: 'wrong-password'));
      final firebaseAuthService = FirebaseAuthService(
        auth,
        appleSignIn,
        getAppleCredential,
        googleSignIn,
        getGoogleCredential,
        facebookAuth,
        getFacebookCredential,
        socialClient,
        getEmailCredential,
      );

      // Act
      final underTest = await firebaseAuthService.signInWithEmailAndPassword(
        emailAddress: validEmail,
        password: validPassword,
      );

      // Assert
      expect(
        underTest,
        left(const AuthFailure.invalidEmailAndPasswordCombination()),
      );
    });

    test(
        'GIVEN incoming email is valid '
        'GIVEN incoming password is valid '
        'GIVEN sign in fails with error user not found '
        'THEN return failure invalid email and password combination.',
        () async {
      // Arrange
      final validEmail = EmailAddress('a@b.c');
      final validPassword = Password('abcde123');

      when(
        () => auth.signInWithEmailAndPassword(
          email: validEmail.getOrCrash(),
          password: validPassword.getOrCrash(),
        ),
      ).thenThrow(FirebaseAuthException(code: 'user-not-found'));
      final firebaseAuthService = FirebaseAuthService(
        auth,
        appleSignIn,
        getAppleCredential,
        googleSignIn,
        getGoogleCredential,
        facebookAuth,
        getFacebookCredential,
        socialClient,
        getEmailCredential,
      );

      // Act
      final underTest = await firebaseAuthService.signInWithEmailAndPassword(
        emailAddress: validEmail,
        password: validPassword,
      );

      // Assert
      expect(
        underTest,
        left(const AuthFailure.invalidEmailAndPasswordCombination()),
      );
    });

    test(
        'GIVEN incoming email is valid '
        'GIVEN incoming password is valid '
        'GIVEN sign in fails with other auth error '
        'THEN return failure server error.', () async {
      // Arrange
      final validEmail = EmailAddress('a@b.c');
      final validPassword = Password('abcde123');

      when(
        () => auth.signInWithEmailAndPassword(
          email: validEmail.getOrCrash(),
          password: validPassword.getOrCrash(),
        ),
      ).thenThrow(FirebaseAuthException(code: 'code'));
      final firebaseAuthService = FirebaseAuthService(
        auth,
        appleSignIn,
        getAppleCredential,
        googleSignIn,
        getGoogleCredential,
        facebookAuth,
        getFacebookCredential,
        socialClient,
        getEmailCredential,
      );

      // Act
      final underTest = await firebaseAuthService.signInWithEmailAndPassword(
        emailAddress: validEmail,
        password: validPassword,
      );

      // Assert
      expect(
        underTest,
        left(const AuthFailure.serverError()),
      );
    });
  });

  group('signInWithFacebook', () {
    // TODO implement tests
  });

  group('signInWithGoogle', () {
    // TODO implement tests
  });

  group('signInWithUsernameAndPassword', () {
    // TODO implement tests
  });

  group('signOut', () {
    test('Call sign out of all providers.', () async {
      // Arrange
      final firebaseAuthService = FirebaseAuthService(
        auth,
        appleSignIn,
        getAppleCredential,
        googleSignIn,
        getGoogleCredential,
        facebookAuth,
        getFacebookCredential,
        socialClient,
        getEmailCredential,
      );

      // Act
      await firebaseAuthService.signOut();

      // Assert
      verify(() => auth.signOut()).called(1);
      verify(() => googleSignIn.signOut()).called(1);
      verify(() => facebookAuth.logOut()).called(1);
    });

    test(
        'GIVEN sign out from all providers succeed '
        'THEN return unit.', () async {
      // Arrange
      final firebaseAuthService = FirebaseAuthService(
        auth,
        appleSignIn,
        getAppleCredential,
        googleSignIn,
        getGoogleCredential,
        facebookAuth,
        getFacebookCredential,
        socialClient,
        getEmailCredential,
      );

      // Act
      final underTest = await firebaseAuthService.signOut();

      // Assert
      expect(underTest, right(unit));
    });

    test(
        'GIVEN one of the sign out methods throw '
        'THEN return failure server error.', () async {
      // Arrange
      when(() => googleSignIn.signOut()).thenThrow(Error());
      final firebaseAuthService = FirebaseAuthService(
        auth,
        appleSignIn,
        getAppleCredential,
        googleSignIn,
        getGoogleCredential,
        facebookAuth,
        getFacebookCredential,
        socialClient,
        getEmailCredential,
      );

      // Act
      final underTest = await firebaseAuthService.signOut();

      // Assert
      expect(underTest, left(const AuthFailure.serverError()));
    });
  });

  group('signUpWithEmailAndUsernameAndPassword', () {
    test(
        'GIVEN incoming email is not valid '
        'GIVEN incoming username is valid '
        'GIVEN incoming password is valid '
        'THEN return failure invalid email.', () async {
      // Arrange
      final invalidEmail = EmailAddress('abc');
      final validUsername = Username('jonas');
      final validPassword = Password('abcde1234');

      final firebaseAuthService = FirebaseAuthService(
        auth,
        appleSignIn,
        getAppleCredential,
        googleSignIn,
        getGoogleCredential,
        facebookAuth,
        getFacebookCredential,
        socialClient,
        getEmailCredential,
      );

      // Act
      final underTest =
          await firebaseAuthService.signUpWithEmailAndUsernameAndPassword(
        emailAddress: invalidEmail,
        username: validUsername,
        password: validPassword,
      );

      // Assert
      expect(
        underTest,
        left(const AuthFailure.invalidEmail()),
      );
    });

    test(
        'GIVEN incoming email is valid '
        'GIVEN incoming username is not valid '
        'GIVEN incoming password is valid '
        'THEN return failure invalid email.', () async {
      // Arrange
      final validEmail = EmailAddress('a@b.c');
      final invalidUsername = Username('');
      final validPassword = Password('abcde1234');

      final firebaseAuthService = FirebaseAuthService(
        auth,
        appleSignIn,
        getAppleCredential,
        googleSignIn,
        getGoogleCredential,
        facebookAuth,
        getFacebookCredential,
        socialClient,
        getEmailCredential,
      );

      // Act
      final underTest =
          await firebaseAuthService.signUpWithEmailAndUsernameAndPassword(
        emailAddress: validEmail,
        username: invalidUsername,
        password: validPassword,
      );

      // Assert
      expect(
        underTest,
        left(const AuthFailure.invalidUsername()),
      );
    });

    test(
        'GIVEN incoming email is valid '
        'GIVEN incoming username is valid '
        'GIVEN incoming password is not valid '
        'THEN return failure invalid email.', () async {
      // Arrange
      final validEmail = EmailAddress('a@b.c');
      final validUsername = Username('jonas');
      final invalidPassword = Password('');

      final firebaseAuthService = FirebaseAuthService(
        auth,
        appleSignIn,
        getAppleCredential,
        googleSignIn,
        getGoogleCredential,
        facebookAuth,
        getFacebookCredential,
        socialClient,
        getEmailCredential,
      );

      // Act
      final underTest =
          await firebaseAuthService.signUpWithEmailAndUsernameAndPassword(
        emailAddress: validEmail,
        username: validUsername,
        password: invalidPassword,
      );

      // Assert
      expect(
        underTest,
        left(const AuthFailure.invalidPassword()),
      );
    });

    test(
        'GIVEN incoming email is valid '
        'GIVEN incoming username is valid '
        'GIVEN incoming password is valid '
        'THEN call create user.', () async {
      // Arrange
      final validEmail = EmailAddress('a@b.c');
      final validUsername = Username('jonas');
      final validPassword = Password('abcdef123');
      when(
        () => socialClient.createUser(
          email: validPassword.getOrCrash(),
          username: validUsername.getOrCrash(),
          password: validPassword.getOrCrash(),
        ),
      ).thenAnswer((_) async => false);

      final firebaseAuthService = FirebaseAuthService(
        auth,
        appleSignIn,
        getAppleCredential,
        googleSignIn,
        getGoogleCredential,
        facebookAuth,
        getFacebookCredential,
        socialClient,
        getEmailCredential,
      );

      // Act
      await firebaseAuthService.signUpWithEmailAndUsernameAndPassword(
        emailAddress: validEmail,
        username: validUsername,
        password: validPassword,
      );

      // Assert
      verify(
        () => socialClient.createUser(
          email: validEmail.getOrCrash(),
          username: validUsername.getOrCrash(),
          password: validPassword.getOrCrash(),
        ),
      ).called(1);
    });

    // TODO tests
  });

  group('updatePassword', () {
    // TODO implement tests
  });

  group('userId', () {
    test(
        'GIVEN current user is not null '
        'THEN return the uid of that user.', () async {
      // Arrange
      when(() => auth.currentUser).thenReturn(firebaseUser);
      final firebaseAuthService = FirebaseAuthService(
        auth,
        appleSignIn,
        getAppleCredential,
        googleSignIn,
        getGoogleCredential,
        facebookAuth,
        getFacebookCredential,
        socialClient,
        getEmailCredential,
      );

      // Act
      final underTest = firebaseAuthService.userId();

      // Assert
      expect(underTest, UniqueId.fromUniqueString(uid));
    });

    test(
        'GIVEN current user is null '
        'THEN return null.', () async {
      // Arrange
      when(() => auth.currentUser).thenReturn(null);
      final firebaseAuthService = FirebaseAuthService(
        auth,
        appleSignIn,
        getAppleCredential,
        googleSignIn,
        getGoogleCredential,
        facebookAuth,
        getFacebookCredential,
        socialClient,
        getEmailCredential,
      );

      // Act & Assert
      expect(
        () async => firebaseAuthService.userId(),
        throwsA(isA<NotAuthenticatedError>()),
      );
    });
  });

  group('watchIsAuthenticated', () {
    test(
        'GIVEN auth state changes emits [User, null, User, null] '
        'THEN emit [true, false, true, false].', () async {
      // Arrange
      when(() => auth.authStateChanges()).thenAnswer(
        (_) => Stream.fromIterable([firebaseUser, null, firebaseUser, null]),
      );
      final firebaseAuthService = FirebaseAuthService(
        auth,
        appleSignIn,
        getAppleCredential,
        googleSignIn,
        getGoogleCredential,
        facebookAuth,
        getFacebookCredential,
        socialClient,
        getEmailCredential,
      );

      // Act
      final underTest = firebaseAuthService.watchIsAuthenticated();

      // Assert
      expect(underTest, emitsInOrder([true, false, true, false]));
    });
  });
}
