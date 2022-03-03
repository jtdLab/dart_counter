import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/infrastructure/auth/core/apple_sign_in.dart';
import 'package:dart_counter/infrastructure/auth/core/auth_provider_manager.dart';
import 'package:dart_counter/infrastructure/auth/firebase_auth_service.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in_mocks/google_sign_in_mocks.dart';
import 'package:mocktail/mocktail.dart';
import 'package:social_client/clients/i_social_client.dart';
import 'package:social_client/social_client.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockAppleSignIn extends Mock implements AppleSignIn {}

class MockGoogleSignIn extends Mock implements GoogleSignIn {}

class MockFacebookAuth extends Mock implements FacebookAuth {}

class MockAuthProviderManager extends Mock implements AuthProviderManager {}

class MockSocialClient extends Mock implements SocialClient {}

class MockFirebaseUser extends Mock implements User {}

class MockAccessToken extends Mock implements AccessToken {}

class MockUserCrendential extends Mock implements UserCredential {}

class MockIdTokenResult extends Mock implements IdTokenResult {}

void main() {
  late MockFirebaseAuth firebaseAuth;
  late MockAppleSignIn appleSignIn;
  late MockGoogleSignIn googleSignIn;
  late MockFacebookAuth facebookAuth;
  late AuthProviderManager authProviderManager;
  late MockSocialClient socialClient;

  late FirebaseAuthService underTest;

  late MockFirebaseUser firebaseUser;
  const idToken = 'idToken';
  const uid = 'uniqueId';

  setUpAll(() {
    // Mocktail related setup
    registerFallbackValue(MockGoogleSignInAuthentication());
    registerFallbackValue(
      const AuthCredential(providerId: 'email', signInMethod: 'method'),
    );
  });

  setUp(() {
    firebaseUser = MockFirebaseUser();
    when(() => firebaseUser.getIdToken()).thenAnswer((_) async => idToken);
    when(() => firebaseUser.uid).thenReturn(uid);

    firebaseAuth = MockFirebaseAuth();
    when(() => firebaseAuth.signOut()).thenAnswer((_) async {});

    appleSignIn = MockAppleSignIn();

    googleSignIn = MockGoogleSignIn();
    when(() => googleSignIn.signOut())
        .thenAnswer((_) async => MockGoogleSignInAccount());

    facebookAuth = MockFacebookAuth();
    when(() => facebookAuth.logOut()).thenAnswer((_) async {});

    authProviderManager = MockAuthProviderManager();

    socialClient = MockSocialClient();
    when(
      () => socialClient.createUser(
        email: any(named: 'email'),
        username: any(named: 'username'),
        password: any(named: 'password'),
      ),
    ).thenAnswer((_) async => false);

    underTest = FirebaseAuthService(
      firebaseAuth,
      appleSignIn,
      googleSignIn,
      facebookAuth,
      authProviderManager,
      socialClient,
    );
  });

  group('#Methods#', () {
    group('#idToken#', () {
      test(
          'GIVEN authenticated '
          'THEN return the idToken of that user.', () async {
        // Arrange
        when(() => firebaseAuth.currentUser).thenReturn(firebaseUser);

        // Act
        final result = await underTest.idToken();

        // Assert
        expect(result, idToken);
      });

      test(
          'GIVEN not authenticated '
          'THEN return null.', () {
        // Arrange
        when(() => firebaseAuth.currentUser).thenReturn(null);

        // Act & Assert
        expect(
          () async => underTest.idToken(),
          throwsA(isA<NotAuthenticatedError>()),
        );
      });
    });

    group('#isAuthenticated#', () {
      test(
          'GIVEN authenticated '
          'THEN return true.', () {
        // Arrange
        when(() => firebaseAuth.currentUser).thenReturn(firebaseUser);

        // Act
        final result = underTest.isAuthenticated();

        // Assert
        expect(result, true);
      });

      test(
          'GIVEN not authenticated '
          'THEN return false.', () {
        // Arrange
        when(() => firebaseAuth.currentUser).thenReturn(null);

        // Act
        final result = underTest.isAuthenticated();

        // Assert
        expect(result, false);
      });
    });

    group('#sendPasswordResetEmail#', () {
      test(
          'GIVEN incoming email is not valid '
          'THEN return failure invalid email.', () async {
        // Arrange
        final invalidEmail = EmailAddress('abc');

        // Act
        final result = await underTest.sendPasswordResetEmail(
          emailAddress: invalidEmail,
        );

        // Assert
        expect(result, left(const AuthFailure.invalidEmail()));
      });

      test(
          'GIVEN incoming email is valid '
          'GIVEN send password reset mail fails '
          'THEN return failure server error.', () async {
        // Arrange
        final validEmail = EmailAddress('a@b.c');
        when(
          () => firebaseAuth.sendPasswordResetEmail(
              email: validEmail.getOrCrash()),
        ).thenThrow(Error());

        // Act
        final result = await underTest.sendPasswordResetEmail(
          emailAddress: validEmail,
        );

        // Assert
        expect(result, left(const AuthFailure.serverError()));
      });

      test(
          'GIVEN incoming email is valid '
          'GIVEN send password reset mail succeeds '
          'THEN return unit.', () async {
        // Arrange
        final validEmail = EmailAddress('a@b.c');
        when(
          () => firebaseAuth.sendPasswordResetEmail(
              email: validEmail.getOrCrash()),
        ).thenAnswer((_) async {});

        // Act
        final result = await underTest.sendPasswordResetEmail(
          emailAddress: validEmail,
        );

        // Assert
        expect(result, right(unit));
      });
    });

    group('#signInWithApple#', () {
      const idToken = 'idToken';
      const oAuthCredential =
          OAuthCredential(providerId: 'apple', signInMethod: 'method');

      test(
          'GIVEN sign in flow throws '
          'THEN return server error failure.', () async {
        // Arrange
        when(() => appleSignIn.signIn(rawNonce: any(named: 'rawNonce')))
            .thenThrow(Error());

        // Act
        final result = await underTest.signInWithApple();

        // Assert
        expect(result, left(const AuthFailure.serverError()));
      });

      test(
          'GIVEN sign in returns null '
          'THEN return cancelled by user failure.', () async {
        // Arrange
        when(() => appleSignIn.signIn(rawNonce: any(named: 'rawNonce')))
            .thenAnswer((_) async => null);

        // Act
        final result = await underTest.signInWithApple();

        // Assert
        expect(result, left(const AuthFailure.cancelledByUser()));
      });

      test(
          'GIVEN sign in returns idToken '
          'GIVEN generate oauth credential succeeds '
          'GIVEN sign in with oauth credential throws '
          'THEN return server error failure.', () async {
        // Arrange
        // sign in
        when(() => appleSignIn.signIn(rawNonce: any(named: 'rawNonce')))
            .thenAnswer((_) async => idToken);
        // generate oauth credential
        when(
          () => authProviderManager.getAppleOAuthCredential(
            idToken: any(named: 'idToken'),
            rawNonce: any(named: 'rawNonce'),
          ),
        ).thenReturn(oAuthCredential);
        // sign in with oauth credential
        when(() => firebaseAuth.signInWithCredential(any())).thenThrow(Error());

        // Act
        final result = await underTest.signInWithApple();

        // Assert
        expect(result, left(const AuthFailure.serverError()));
      });

      test(
          'GIVEN sign in returns idToken '
          'GIVEN generate oauth credential succeeds '
          'GIVEN sign in with oauth credential succeeds '
          'THEN generate oauth credential from the idToken, sign into firebase with '
          'the credential and return unit.', () async {
        // Arrange
        // sign in
        when(() => appleSignIn.signIn(rawNonce: any(named: 'rawNonce')))
            .thenAnswer((_) async => idToken);
        // generate oauth credential
        when(
          () => authProviderManager.getAppleOAuthCredential(
            idToken: any(named: 'idToken'),
            rawNonce: any(named: 'rawNonce'),
          ),
        ).thenReturn(oAuthCredential);
        // sign in with oauth credential
        when(() => firebaseAuth.signInWithCredential(any()))
            .thenAnswer((_) async => MockUserCrendential());

        // Act
        final result = await underTest.signInWithApple();

        // Assert
        verify(
          () => authProviderManager.getAppleOAuthCredential(
            idToken: idToken,
            rawNonce: any(named: 'rawNonce'),
          ),
        ).called(1);
        verify(
          () => firebaseAuth.signInWithCredential(oAuthCredential),
        ).called(1);
        expect(result, right(unit));
      });
    });

    group('#signInWithEmailAndPassword#', () {
      test(
          'GIVEN incoming email is not valid '
          'GIVEN incoming password is valid '
          'THEN return failure invalid email and password combination.',
          () async {
        // Arrange
        final invalidEmail = EmailAddress('abc');
        final validPassword = Password('abcde1234');

        // Act
        final result = await underTest.signInWithEmailAndPassword(
          emailAddress: invalidEmail,
          password: validPassword,
        );

        // Assert
        expect(
          result,
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
        final invalidPassword = Password.empty();

        // Act
        final result = await underTest.signInWithEmailAndPassword(
          emailAddress: validEmail,
          password: invalidPassword,
        );

        // Assert
        expect(
          result,
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
          () => firebaseAuth.signInWithEmailAndPassword(
            email: validEmail.getOrCrash(),
            password: validPassword.getOrCrash(),
          ),
        ).thenThrow(FirebaseAuthException(code: 'wrong-password'));

        // Act
        final result = await underTest.signInWithEmailAndPassword(
          emailAddress: validEmail,
          password: validPassword,
        );

        // Assert
        expect(
          result,
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
          () => firebaseAuth.signInWithEmailAndPassword(
            email: validEmail.getOrCrash(),
            password: validPassword.getOrCrash(),
          ),
        ).thenThrow(FirebaseAuthException(code: 'user-not-found'));

        // Act
        final result = await underTest.signInWithEmailAndPassword(
          emailAddress: validEmail,
          password: validPassword,
        );

        // Assert
        expect(
          result,
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
          () => firebaseAuth.signInWithEmailAndPassword(
            email: validEmail.getOrCrash(),
            password: validPassword.getOrCrash(),
          ),
        ).thenThrow(FirebaseAuthException(code: 'code'));

        // Act
        final result = await underTest.signInWithEmailAndPassword(
          emailAddress: validEmail,
          password: validPassword,
        );

        // Assert
        expect(
          result,
          left(const AuthFailure.serverError()),
        );
      });

      test(
          'GIVEN incoming email is valid '
          'GIVEN incoming password is valid '
          'GIVEN sign in succeeds '
          'THEN return unit.', () async {
        // Arrange
        final validEmail = EmailAddress('a@b.c');
        final validPassword = Password('abcde123');

        when(
          () => firebaseAuth.signInWithEmailAndPassword(
            email: validEmail.getOrCrash(),
            password: validPassword.getOrCrash(),
          ),
        ).thenAnswer((_) async => MockUserCrendential());

        // Act
        final result = await underTest.signInWithEmailAndPassword(
          emailAddress: validEmail,
          password: validPassword,
        );

        // Assert
        expect(
          result,
          right(unit),
        );
      });
    });

    group('#signInWithFacebook#', () {
      const oAuthCredential =
          OAuthCredential(providerId: 'facebook', signInMethod: 'method');
      final accessToken = MockAccessToken();

      setUpAll(() {
        when(() => accessToken.token).thenReturn('token');
      });

      test(
          'GIVEN log in flow throws '
          'THEN return server error failure.', () async {
        // Arrange
        when(() => facebookAuth.login()).thenThrow(Error());

        // Act
        final result = await underTest.signInWithFacebook();

        // Assert
        expect(result, left(const AuthFailure.serverError()));
      });

      test(
          'GIVEN log in gets cancelled '
          'THEN return cancelled by user failure.', () async {
        // Arrange
        when(() => facebookAuth.login()).thenAnswer(
          (_) async => LoginResult(status: LoginStatus.cancelled),
        );

        // Act
        final result = await underTest.signInWithFacebook();

        // Assert
        expect(result, left(const AuthFailure.cancelledByUser()));
      });

      test(
          'GIVEN log in returns login result with access token '
          'GIVEN generate oauth credential succeeds '
          'GIVEN sign in with oauth credential throws '
          'THEN return server error failure.', () async {
        // Arrange
        // log in
        when(() => facebookAuth.login()).thenAnswer(
          (_) async => LoginResult(
            status: LoginStatus.success,
            accessToken: accessToken,
          ),
        );
        // generate oauth credential
        when(
          () => authProviderManager.getFacebookOAuthCredential(
            accessToken: accessToken,
          ),
        ).thenReturn(oAuthCredential);
        // sign in with oauth credential
        when(() => firebaseAuth.signInWithCredential(any())).thenThrow(Error());

        // Act
        final result = await underTest.signInWithFacebook();

        // Assert
        expect(result, left(const AuthFailure.serverError()));
      });

      test(
          'GIVEN log in returns login result with access token '
          'GIVEN generate oauth credential succeeds '
          'GIVEN sign in with oauth credential succeeds '
          'THEN generate oauth credential from the accessToken, sign into firebase with '
          'the credential and return unit.', () async {
        // Arrange
        // log in
        when(() => facebookAuth.login()).thenAnswer(
          (_) async => LoginResult(
            status: LoginStatus.success,
            accessToken: accessToken,
          ),
        );
        // generate oauth credential
        when(
          () => authProviderManager.getFacebookOAuthCredential(
            accessToken: accessToken,
          ),
        ).thenReturn(oAuthCredential);
        // sign in with oauth credential
        when(() => firebaseAuth.signInWithCredential(any()))
            .thenAnswer((_) async => MockUserCrendential());

        // Act
        final result = await underTest.signInWithFacebook();

        // Assert
        verify(
          () => authProviderManager.getFacebookOAuthCredential(
            accessToken: accessToken,
          ),
        ).called(1);
        verify(
          () => firebaseAuth.signInWithCredential(oAuthCredential),
        ).called(1);
        expect(result, right(unit));
      });
    });

    group('#signInWithGoogle#', () {
      const oAuthCredential =
          OAuthCredential(providerId: 'google', signInMethod: 'method');
      final googleUser = MockGoogleSignInAccount();

      test(
          'GIVEN sign in flow throws '
          'THEN return server error failure.', () async {
        // Arrange
        when(() => googleSignIn.signIn()).thenThrow(Error());

        // Act
        final result = await underTest.signInWithGoogle();

        // Assert
        expect(result, left(const AuthFailure.serverError()));
      });

      test(
          'GIVEN sign in gets cancelled '
          'THEN return cancelled by user failure.', () async {
        // Arrange
        when(() => googleSignIn.signIn()).thenAnswer((_) async => null);

        // Act
        final result = await underTest.signInWithGoogle();

        // Assert
        expect(result, left(const AuthFailure.cancelledByUser()));
      });

      test(
          'GIVEN sign in returns google account with google auth '
          'GIVEN generate oauth credential succeeds '
          'GIVEN sign in with oauth credential throws '
          'THEN return server error failure.', () async {
        // Arrange
        // sign in
        when(() => googleSignIn.signIn()).thenAnswer((_) async => googleUser);
        // generate oauth credential
        when(
          () => authProviderManager.getGoogleOAuthCredential(
            authentication: any(named: 'authentication'),
          ),
        ).thenReturn(oAuthCredential);
        // sign in with oauth credential
        when(() => firebaseAuth.signInWithCredential(any())).thenThrow(Error());

        // Act
        final result = await underTest.signInWithGoogle();

        // Assert
        expect(result, left(const AuthFailure.serverError()));
      });

      test(
          'GIVEN sign in returns google account with google auth '
          'GIVEN generate oauth credential succeeds '
          'GIVEN sign in with oauth credential succeeds '
          'THEN generate oauth credential from the authentication, sign into firebase with '
          'the credential and return unit.', () async {
        // Arrange
        // sign in
        when(() => googleSignIn.signIn()).thenAnswer((_) async => googleUser);
        // generate oauth credential
        when(
          () => authProviderManager.getGoogleOAuthCredential(
            authentication: any(named: 'authentication'),
          ),
        ).thenReturn(oAuthCredential);
        // sign in with oauth credential
        when(() => firebaseAuth.signInWithCredential(any()))
            .thenAnswer((_) async => MockUserCrendential());

        // Act
        final result = await underTest.signInWithGoogle();

        // Assert
        verify(
          () => authProviderManager.getGoogleOAuthCredential(
            authentication: any(named: 'authentication'),
          ),
        ).called(1);
        verify(
          () => firebaseAuth.signInWithCredential(oAuthCredential),
        ).called(1);
        expect(result, right(unit));
      });
    });

    group('#signInWithUsernameAndPassword#', () {
      setUp(() {
        when(
          () => firebaseAuth.signInWithEmailAndPassword(
            email: any(named: 'email'),
            password: any(named: 'password'),
          ),
        ).thenAnswer((_) async => MockUserCrendential());
      });

      test(
          'GIVEN incoming username is invalid '
          'GIVEN incoming password is valid '
          'THEN return invalid username and password combination failure.',
          () async {
        // Arrange
        final invalidUsername = Username.empty();
        final validPassword = Password('abcde1234');

        // Act
        final result = await underTest.signInWithUsernameAndPassword(
          username: invalidUsername,
          password: validPassword,
        );

        // Assert
        expect(
          result,
          left(const AuthFailure.invalidUsernameAndPasswordCombination()),
        );
      });

      test(
          'GIVEN incoming username is valid '
          'GIVEN incoming password is invalid '
          'THEN return invalid username and password combination failure.',
          () async {
        // Arrange
        final validUsername = Username('jonas');
        final invalidPassword = Password.empty();

        // Act
        final result = await underTest.signInWithUsernameAndPassword(
          username: validUsername,
          password: invalidPassword,
        );

        // Assert
        expect(
          result,
          left(const AuthFailure.invalidUsernameAndPasswordCombination()),
        );
      });

      test(
          'GIVEN incoming username is valid '
          'GIVEN incoming password is valid '
          'GIVEN social client throws while getting email '
          'THEN return server error failure.', () async {
        // Arrange
        final validUsername = Username('jonas');
        final validPassword = Password('aaasf342');
        when(
          () => socialClient.getEmailByUsername(
            username: validUsername.getOrCrash(),
            password: validPassword.getOrCrash(),
          ),
        ).thenThrow(Error());

        // Act
        final result = await underTest.signInWithUsernameAndPassword(
          username: validUsername,
          password: validPassword,
        );

        // Assert
        expect(
          result,
          left(const AuthFailure.serverError()),
        );
      });

      test(
          'GIVEN incoming username is valid '
          'GIVEN incoming password is valid '
          'GIVEN social client does not find an email '
          'THEN return invalid username and password combination failure.',
          () async {
        // Arrange
        final validUsername = Username('jonas');
        final validPassword = Password('aaasf342');
        when(
          () => socialClient.getEmailByUsername(
            username: validUsername.getOrCrash(),
            password: validPassword.getOrCrash(),
          ),
        ).thenAnswer((_) async => null);

        // Act
        final result = await underTest.signInWithUsernameAndPassword(
          username: validUsername,
          password: validPassword,
        );

        // Assert
        expect(
          result,
          left(const AuthFailure.invalidUsernameAndPasswordCombination()),
        );
      });

      test(
          'GIVEN incoming username is valid '
          'GIVEN incoming password is valid '
          'GIVEN social client does find an email '
          'THEN sign in with email and password.', () async {
        // Arrange
        final validUsername = Username('jonas');
        final validPassword = Password('aaasf342');
        const email = 'a@b.c';
        when(
          () => socialClient.getEmailByUsername(
            username: validUsername.getOrCrash(),
            password: validPassword.getOrCrash(),
          ),
        ).thenAnswer((_) async => email);

        // Act
        await underTest.signInWithUsernameAndPassword(
          username: validUsername,
          password: validPassword,
        );

        // Assert
        verify(
          () => firebaseAuth.signInWithEmailAndPassword(
            email: email,
            password: validPassword.getOrCrash(),
          ),
        ).called(1);
      });
    });

    group('#signOut#', () {
      test('Sign out of all providers.', () async {
        // Act
        await underTest.signOut();

        // Assert
        verify(() => firebaseAuth.signOut()).called(1);
        verify(() => googleSignIn.signOut()).called(1);
        verify(() => facebookAuth.logOut()).called(1);
      });

      test(
          'GIVEN sign out from all providers succeed '
          'THEN return unit.', () async {
        // Act
        final result = await underTest.signOut();

        // Assert
        expect(result, right(unit));
      });

      test(
          'GIVEN one of the sign out methods throw '
          'THEN return failure server error.', () async {
        // Arrange
        when(() => googleSignIn.signOut()).thenThrow(Error());

        // Act
        final result = await underTest.signOut();

        // Assert
        expect(result, left(const AuthFailure.serverError()));
      });
    });

    group('#signUpWithEmailAndUsernameAndPassword#', () {
      setUp(() {
        when(
          () => firebaseAuth.signInWithEmailAndPassword(
            email: any(named: 'email'),
            password: any(named: 'password'),
          ),
        ).thenAnswer((_) async => MockUserCrendential());
      });

      test(
          'GIVEN incoming email is not valid '
          'GIVEN incoming username is valid '
          'GIVEN incoming password is valid '
          'THEN return failure invalid email.', () async {
        // Arrange
        final invalidEmail = EmailAddress('abc');
        final validUsername = Username('jonas');
        final validPassword = Password('abcde1234');

        // Act
        final result = await underTest.signUpWithEmailAndUsernameAndPassword(
          emailAddress: invalidEmail,
          username: validUsername,
          password: validPassword,
        );

        // Assert
        expect(
          result,
          left(const AuthFailure.invalidEmail()),
        );
      });

      test(
          'GIVEN incoming email is valid '
          'GIVEN incoming username is not valid '
          'GIVEN incoming password is valid '
          'THEN return failure invalid username.', () async {
        // Arrange
        final validEmail = EmailAddress('a@b.c');
        final invalidUsername = Username('');
        final validPassword = Password('abcde1234');

        // Act
        final result = await underTest.signUpWithEmailAndUsernameAndPassword(
          emailAddress: validEmail,
          username: invalidUsername,
          password: validPassword,
        );

        // Assert
        expect(
          result,
          left(const AuthFailure.invalidUsername()),
        );
      });

      test(
          'GIVEN incoming email is valid '
          'GIVEN incoming username is valid '
          'GIVEN incoming password is not valid '
          'THEN return failure invalid password.', () async {
        // Arrange
        final validEmail = EmailAddress('a@b.c');
        final validUsername = Username('jonas');
        final invalidPassword = Password('');

        // Act
        final result = await underTest.signUpWithEmailAndUsernameAndPassword(
          emailAddress: validEmail,
          username: validUsername,
          password: invalidPassword,
        );

        // Assert
        expect(
          result,
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

        // Act
        await underTest.signUpWithEmailAndUsernameAndPassword(
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

      test(
          'GIVEN incoming email is valid '
          'GIVEN incoming username is valid '
          'GIVEN incoming password is valid '
          'GIVEN create user throws EmailAlreadyInUseError '
          'THEN return email already in use failure.', () async {
        // Arrange
        final validEmail = EmailAddress('a@b.c');
        final validUsername = Username('jonas');
        final validPassword = Password('abcdef123');

        when(
          () => socialClient.createUser(
            email: any(named: 'email'),
            username: any(named: 'username'),
            password: any(named: 'password'),
          ),
        ).thenThrow(EmailAlreadyInUseError());

        // Act
        final result = await underTest.signUpWithEmailAndUsernameAndPassword(
          emailAddress: validEmail,
          username: validUsername,
          password: validPassword,
        );

        // Assert
        expect(result, left(const AuthFailure.emailAlreadyInUse()));
      });

      test(
          'GIVEN incoming email is valid '
          'GIVEN incoming username is valid '
          'GIVEN incoming password is valid '
          'GIVEN create user throws UsernameAlreadyInUseError '
          'THEN return username already in use failure.', () async {
        // Arrange
        final validEmail = EmailAddress('a@b.c');
        final validUsername = Username('jonas');
        final validPassword = Password('abcdef123');

        when(
          () => socialClient.createUser(
            email: any(named: 'email'),
            username: any(named: 'username'),
            password: any(named: 'password'),
          ),
        ).thenThrow(UsernameAlreadyInUseError());

        // Act
        final result = await underTest.signUpWithEmailAndUsernameAndPassword(
          emailAddress: validEmail,
          username: validUsername,
          password: validPassword,
        );

        // Assert
        expect(result, left(const AuthFailure.usernameAlreadyInUse()));
      });

      test(
          'GIVEN incoming email is valid '
          'GIVEN incoming username is valid '
          'GIVEN incoming password is valid '
          'GIVEN create user fails '
          'THEN return server error failure.', () async {
        // Arrange
        final validEmail = EmailAddress('a@b.c');
        final validUsername = Username('jonas');
        final validPassword = Password('abcdef123');

        when(
          () => socialClient.createUser(
            email: any(named: 'email'),
            username: any(named: 'username'),
            password: any(named: 'password'),
          ),
        ).thenAnswer((_) async => false);

        // Act
        final result = await underTest.signUpWithEmailAndUsernameAndPassword(
          emailAddress: validEmail,
          username: validUsername,
          password: validPassword,
        );

        // Assert
        expect(result, left(const AuthFailure.serverError()));
      });

      test(
          'GIVEN incoming email is valid '
          'GIVEN incoming username is valid '
          'GIVEN incoming password is valid '
          'GIVEN create user succeeds '
          'THEN then sign in with email and password.', () async {
        // Arrange
        final validEmail = EmailAddress('a@b.c');
        final validUsername = Username('jonas');
        final validPassword = Password('abcdef123');

        when(
          () => socialClient.createUser(
            email: any(named: 'email'),
            username: any(named: 'username'),
            password: any(named: 'password'),
          ),
        ).thenAnswer((_) async => true);

        // Act
        await underTest.signUpWithEmailAndUsernameAndPassword(
          emailAddress: validEmail,
          username: validUsername,
          password: validPassword,
        );

        verify(
          () => firebaseAuth.signInWithEmailAndPassword(
            email: validEmail.getOrCrash(),
            password: validPassword.getOrCrash(),
          ),
        ).called(1);
      });
    });

    group('#updatePassword#', () {
      final oldPassword = Password('abc123');
      final newPassword = Password('abcdefg');
      const email = 'a@b.c';
      const newCredential = AuthCredential(
        providerId: 'email',
        signInMethod: 'method',
      );

      setUp(() {
        when(() => firebaseUser.email).thenReturn(email);
        when(
          () => authProviderManager.getEmailAuthCredential(
            email: any(named: 'email'),
            password: any(named: 'password'),
          ),
        ).thenReturn(newCredential);
        when(() => firebaseUser.reauthenticateWithCredential(any()))
            .thenAnswer((_) async => MockUserCrendential());
        when(() => firebaseUser.updatePassword(any())).thenAnswer((_) async {});
      });

      test(
          'GIVEN not authenticated '
          'THEN throw NotAuthenticatedError.', () {
        // Arrange
        when(() => firebaseAuth.currentUser).thenReturn(null);

        // Act & Assert
        expect(
          () async => underTest.updatePassword(
            oldPassword: oldPassword,
            newPassword: newPassword,
          ),
          throwsA(isA<NotAuthenticatedError>()),
        );
      });

      test(
          'GIVEN authenticated via a social account '
          'THEN return invalid account type.', () async {
        // Arrange
        // authenticated
        when(() => firebaseAuth.currentUser).thenReturn(firebaseUser);
        // via social media
        final idTokenResult = MockIdTokenResult();
        when(() => idTokenResult.signInProvider).thenReturn(
          'some_social_provider',
        );
        when(() => firebaseUser.getIdTokenResult())
            .thenAnswer((_) async => idTokenResult);

        // Act
        final result = await underTest.updatePassword(
          oldPassword: oldPassword,
          newPassword: newPassword,
        );

        // Assert
        expect(
          result,
          left(const AuthFailure.invalidAccountType()),
        );
      });

      test(
          'GIVEN authenticated via password '
          'THEN request new credential, reauthenticated with the new credential '
          'update the password and return unit.', () async {
        // Arrange
        // authenticated
        when(() => firebaseAuth.currentUser).thenReturn(firebaseUser);
        // via password
        final idTokenResult = MockIdTokenResult();
        when(() => idTokenResult.signInProvider).thenReturn('password');
        when(() => firebaseUser.getIdTokenResult()).thenAnswer(
          (_) async => idTokenResult,
        );

        // Act
        final result = await underTest.updatePassword(
          oldPassword: oldPassword,
          newPassword: newPassword,
        );

        // Assert
        verify(
          () => authProviderManager.getEmailAuthCredential(
            email: email,
            password: oldPassword.getOrCrash(),
          ),
        ).called(1);
        verify(
          () => firebaseUser.reauthenticateWithCredential(newCredential),
        ).called(1);
        verify(
          () => firebaseUser.updatePassword(newPassword.getOrCrash()),
        ).called(1);
        expect(result, right(unit));
      });
    });

    group('#userId#', () {
      test(
          'GIVEN authenticated '
          'THEN return the uid of that user.', () {
        // Arrange
        when(() => firebaseAuth.currentUser).thenReturn(firebaseUser);

        // Act
        final result = underTest.userId();

        // Assert
        expect(result, UniqueId.fromUniqueString(uid));
      });

      test(
          'GIVEN not authenticated '
          'THEN return null.', () {
        // Arrange
        when(() => firebaseAuth.currentUser).thenReturn(null);

        // Act & Assert
        expect(
          () async => underTest.userId(),
          throwsA(isA<NotAuthenticatedError>()),
        );
      });
    });

    group('#watchIsAuthenticated#', () {
      test(
          'GIVEN auth state changes emits [User, null, User, null] '
          'THEN emit [true, false, true, false].', () {
        // Arrange
        when(() => firebaseAuth.authStateChanges()).thenAnswer(
          (_) => Stream.fromIterable([firebaseUser, null, firebaseUser, null]),
        );

        // Act
        final stream = underTest.watchIsAuthenticated();

        // Assert
        expect(stream, emitsInOrder([true, false, true, false]));
      });
    });
  });
}
