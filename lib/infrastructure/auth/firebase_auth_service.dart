import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/infrastructure/auth/core/apple_sign_in.dart';
import 'package:dart_counter/infrastructure/auth/core/auth_provider_manager.dart';
import 'package:dart_counter/logger.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:social_client/clients/i_social_client.dart';
import 'package:social_client/social_client.dart';

/// Implementation of [IAuthService] using Firebase backend.
@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IAuthService)
class FirebaseAuthService implements IAuthService {
  final FirebaseAuth _firebaseAuth;
  final AppleSignIn _appleSignIn;
  final GoogleSignIn _googleSignIn;
  final FacebookAuth _facebookAuth;
  final AuthProviderManager _authProviderManager;
  final SocialClient _socialClient;

  FirebaseAuthService(
    this._firebaseAuth,
    this._appleSignIn,
    this._googleSignIn,
    this._facebookAuth,
    this._authProviderManager,
    this._socialClient,
  );

  @override
  Future<String> idToken() async {
    // the current user
    final user = _firebaseAuth.currentUser;

    // when user not available
    if (user == null) {
      // throw not authenticated error
      throw NotAuthenticatedError();
    }

    // return id token of user
    return user.getIdToken();
  }

  @override
  bool isAuthenticated() => _firebaseAuth.currentUser != null;

  @override
  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail({
    required EmailAddress emailAddress,
  }) async {
    // when email is not valid
    if (!emailAddress.isValid()) {
      // return invalid email failure
      return left(const AuthFailure.invalidEmail());
    }
    try {
      // try to send password reset email
      await _firebaseAuth.sendPasswordResetEmail(
        email: emailAddress.getOrCrash(),
      );

      // when password reset email sent succesfully return unit
      return right(unit);
      // when error occured while sending passwort reset email
    } catch (e) {
      // log error
      logger.e(e);
      // return server error failure
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithApple() async {
    try {
      // generate a raw nonce used in the sign in process
      final rawNonce = generateNonce();

      // trigger the sign-in flow which returns an id token
      final idToken = await _appleSignIn.signIn(rawNonce: rawNonce);

      // when login flow got cancelled
      if (idToken == null) {
        // return cancelled by user failure
        return left(const AuthFailure.cancelledByUser());
      }

      // generate oauth credential from id token and raw nonce which will be used by firebase
      final oAuthCredential = _authProviderManager.getAppleOAuthCredential(
        idToken: idToken,
        rawNonce: rawNonce,
      );

      // sign in the user with firebase using the oauth credential.
      // if the nonce we generated earlier does not match the nonce in
      // `appleCredential.identityToken`, sign in will fail.
      await _firebaseAuth.signInWithCredential(oAuthCredential);

      // when sign succeeds return unit
      return right(unit);
      // when error happened
    } catch (e) {
      // log error
      logger.e(e);
      // return server error failure
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    // when email or password not valid
    if (!emailAddress.isValid() || !password.isValid()) {
      // return invalid email and password combination failure
      return left(const AuthFailure.invalidEmailAndPasswordCombination());
    }

    try {
      // try to sign in using email and password
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress.getOrCrash(),
        password: password.getOrCrash(),
      );

      // when signed in successfuly return unit
      return right(unit);
    } on FirebaseAuthException catch (e) {
      // when wrong password error or user not found error
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        // return invalid email and password combination failure
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
        // when other error
      }
      // log other error
      logger.e(e);

      // return server error failure
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithFacebook() async {
    try {
      // TODO CRASH HERE
      // trigger the sign-in flow which returns a login result
      final result = await _facebookAuth.login();
      // the status of login result
      final status = result.status;

      // when login flow got cancelled
      if (status == LoginStatus.cancelled) {
        // return cancelled by user failure
        return left(const AuthFailure.cancelledByUser());
      }

      // extract acces token from login result
      final accessToken = result.accessToken!;
      // generate oauth credential from access token which will be used by firebase
      final oAuthCredential = _authProviderManager.getFacebookOAuthCredential(
        accessToken: accessToken,
      );

      // sign in the user with firebase using the oauth credential
      await _firebaseAuth.signInWithCredential(oAuthCredential);

      // when sign succeeds return unit
      return right(unit);
      // when error happened
    } catch (e) {
      // log error
      logger.e(e);
      // return server error failure
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      // trigger the sign-in flow which returns a google user
      final googleUser = await _googleSignIn.signIn();

      // when login flow got cancelled
      if (googleUser == null) {
        // return cancelled by user failure
        return left(const AuthFailure.cancelledByUser());
      }

      // extract google authentication from google user
      final googleAuthentication = await googleUser.authentication;

      // generate oauth credential from google authentication which will be used by firebase
      final oAuthCredential = _authProviderManager.getGoogleOAuthCredential(
        authentication: googleAuthentication,
      );

      // sign in the user with firebase using the oauth credential
      await _firebaseAuth.signInWithCredential(oAuthCredential);

      // when sign succeeds return unit
      return right(unit);
      // when error happened
    } catch (e) {
      // log error
      logger.e(e);
      // return server error failure
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithUsernameAndPassword({
    required Username username,
    required Password password,
  }) async {
    // when username or password not valid
    if (!username.isValid() || !password.isValid()) {
      // return invalid username and password combination failure
      return left(const AuthFailure.invalidUsernameAndPasswordCombination());
    }

    try {
      // try to get email from backend using the provided username
      final emailAddress = await _socialClient.getEmailByUsername(
        username: username.getOrCrash(),
        password: password.getOrCrash(),
      );

      // when no email found
      if (emailAddress == null) {
        // return invalid username and password combination failure
        return left(const AuthFailure.invalidUsernameAndPasswordCombination());
      }

      // when email found try to sign in with email and password
      return signInWithEmailAndPassword(
        emailAddress: EmailAddress(emailAddress),
        password: password,
      );
      // when error
    } catch (e) {
      // log error
      logger.e(e);
      // return server error failure
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      // try to sign out from all auth providers
      await Future.wait(
        [
          _googleSignIn.signOut(),
          _facebookAuth.logOut(),
          _firebaseAuth.signOut(),
        ],
      );

      // when successfuly signed out from all auth providers return unit
      return right(unit);
      // else
    } catch (e) {
      // log error
      logger.e(e);
      // return server error failure
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signUpWithEmailAndUsernameAndPassword({
    required EmailAddress emailAddress,
    required Username username,
    required Password password,
  }) async {
    // when email not valid
    if (!emailAddress.isValid()) {
      // return invalid email failure
      return left(const AuthFailure.invalidEmail());
    }

    // when username not valid
    if (!username.isValid()) {
      // return invalid username failure
      return left(const AuthFailure.invalidUsername());
    }

    // when password not valid
    if (!password.isValid()) {
      // return invalid password failure
      return left(const AuthFailure.invalidPassword());
    }

    // variable holding wheter or not the user got successfuly created via social client
    late final bool success;
    try {
      // try to create the user
      success = await _socialClient.createUser(
        email: emailAddress.getOrCrash(),
        username: username.getOrCrash(),
        password: password.getOrCrash(),
      );
      // when error happend while trying to create user
    } catch (e) {
      // and it is a email already in use error
      if (e is EmailAlreadyInUseError) {
        // return email already in use failure
        return left(const AuthFailure.emailAlreadyInUse());
        // and it is a username already in use error
      } else {
        // return username already in use failure
        return left(const AuthFailure.usernameAlreadyInUse());
      }
    }

    // when user successfuly created
    if (success) {
      // try to sign in via email and password
      return signInWithEmailAndPassword(
        emailAddress: emailAddress,
        password: password,
      );
    }

    // else return server error failure
    return left(const AuthFailure.serverError());
  }

  @override
  Future<Either<AuthFailure, Unit>> updatePassword({
    required Password oldPassword,
    required Password newPassword,
  }) async {
    // the current user
    final user = _firebaseAuth.currentUser;

    // when user is not authenticated
    if (user == null) {
      // throw not authenticated error
      throw NotAuthenticatedError();
    }

    final idTokenResult = await user.getIdTokenResult();
    final authenticatedWithPassword =
        idTokenResult.signInProvider == 'password';

    // when the current user authenticated using a password
    if (authenticatedWithPassword) {
      // request new email credential
      final email = user.email!;
      final credential = _authProviderManager.getEmailAuthCredential(
        email: email,
        password: oldPassword.getOrCrash(),
      );
      // reauthenticate using the new credential
      await user.reauthenticateWithCredential(credential);
      // update the password
      await user.updatePassword(newPassword.getOrCrash());
      // complete with success
      return right(unit);
    }

    // complete with invalid account type failure
    return left(const AuthFailure.invalidAccountType());
  }

  @override
  UniqueId userId() {
    // the current user
    final user = _firebaseAuth.currentUser;

    // when user not available
    if (user == null) {
      // throw not authenticated error
      throw NotAuthenticatedError();
    }

    // return the user id
    return UniqueId.fromUniqueString(user.uid);
  }

  @override
  Stream<bool> watchIsAuthenticated() {
    // map incoming users from firebase
    return _firebaseAuth.authStateChanges().map(
          // to false when user is null else true
          (user) => user != null,
        );
  }
}
