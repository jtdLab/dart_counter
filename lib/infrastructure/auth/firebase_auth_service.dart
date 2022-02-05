import 'dart:math';

import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/infrastructure/core/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:social_client/clients/i_social_client.dart';
import 'package:social_client/social_client.dart';

/// Implementation of [IAuthService] using Firebase backend.
@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IAuthService)
class FirebaseAuthService with Disposable implements IAuthService {
  final FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;
  final FacebookAuth _facebookAuth;
  final SocialClient _socialClient;

  FirebaseAuthService(
    this._auth,
    this._googleSignIn,
    this._facebookAuth,
    this._socialClient,
  );

  @override
  Future<String?> idToken() async {
    final user = _auth.currentUser;

    if (user == null) {
      return null;
    }

    return user.getIdToken();
  }

  @override
  bool isAuthenticated() => _auth.currentUser?.uid != null;

  @override
  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail({
    required EmailAddress emailAddress,
  }) async {
    if (!emailAddress.isValid()) {
      return left(const AuthFailure.invalidEmail());
    }
    try {
      await _auth.sendPasswordResetEmail(email: emailAddress.getOrCrash());
      return right(unit);
    } catch (e) {
      print(e);
      return left(const AuthFailure.serverError());
    }
  }

  // TODO detect cancelled by user
  @override
  Future<Either<AuthFailure, Unit>> signInWithApple() async {
    try {
      // To prevent replay attacks with the credential returned from Apple, we
      // include a nonce in the credential request. When signing in in with
      // Firebase, the nonce in the id token returned by Apple, is expected to
      // match the sha256 hash of `rawNonce`.
      final rawNonce = generateNonce();
      final nonce = rawNonce.toSha256();

      // Request credential for the currently signed in Apple account.
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        nonce: nonce,
      );

      // Create an `OAuthCredential` from the credential returned by Apple.
      final appleAuthCredential = OAuthProvider("apple.com").credential(
        idToken: appleCredential.identityToken,
        rawNonce: rawNonce,
      );

      // Sign in the user with Firebase. If the nonce we generated earlier does
      // not match the nonce in `appleCredential.identityToken`, sign in will fail.
      await _auth.signInWithCredential(appleAuthCredential);

      return right(unit);
    } catch (e) {
      print(e);
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    if (!emailAddress.isValid() || !password.isValid()) {
      return left(const AuthFailure.invalidEmailAndPasswordCombination());
    }

    try {
      await _auth.signInWithEmailAndPassword(
        email: emailAddress.getOrCrash(),
        password: password.getOrCrash(),
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      print(e);
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }

      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithFacebook() async {
    try {
      // Trigger the sign-in flow
      final result = await _facebookAuth.login(); // TODO CRASH HERE
      final accessToken = result.accessToken;

      if (accessToken == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      // Create a credential from the access token
      final facebookAuthCredential =
          FacebookAuthProvider.credential(accessToken.token);

      // Once signed in, return the UserCredential
      await _auth.signInWithCredential(facebookAuthCredential);

      return right(unit);
    } catch (e) {
      print(e);
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await _auth.signInWithCredential(authCredential);

      return right(unit);
    } catch (e) {
      print(e);
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithUsernameAndPassword({
    required Username username,
    required Password password,
  }) async {
    if (!username.isValid() || !password.isValid()) {
      return left(const AuthFailure.invalidUsernameAndPasswordCombination());
    }

    try {
      // TODO call server endpoint and return invalid username password combination failure
      // this return email
      // and sign in with email and password
      final emailAddress = EmailAddress.empty(); // TODO real email

      return signInWithEmailAndPassword(
        emailAddress: emailAddress,
        password: password,
      );
    } catch (e) {
      print(e);
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      await Future.wait(
        [
          _googleSignIn.signOut(),
          _auth.signOut(),
        ],
      );
      return right(unit);
    } catch (e) {
      print(e);
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signUpWithEmailAndUsernameAndPassword({
    required EmailAddress emailAddress,
    required Username username,
    required Password password,
  }) async {
    if (!emailAddress.isValid()) {
      return left(const AuthFailure.invalidEmail());
    }

    if (!username.isValid()) {
      return left(const AuthFailure.invalidUsername());
    }

    if (!password.isValid()) {
      return left(const AuthFailure.invalidPassword());
    }

    final bool success;
    try {
      success = await _socialClient.createUser(
        email: emailAddress.getOrCrash(),
        username: username.getOrCrash(),
        password: password.getOrCrash(),
      );

      if (success) {
        return signInWithEmailAndPassword(
          emailAddress: emailAddress,
          password: password,
        );
      }
    } catch (e) {
      if (e is EmailAlreadyInUseError) {
        return left(const AuthFailure.emailAlreadyInUse());
      } else if (e is UsernameAlreadyInUseError) {
        return left(const AuthFailure.usernameAlreadyInUse());
      }
    }

    return left(const AuthFailure.serverError());
  }

  @override
  Future<Either<AuthFailure, Unit>> updatePassword({
    required Password oldPassword,
    required Password newPassword,
  }) async {
    if (!oldPassword.isValid()) {
      return left(const AuthFailure.invalidPassword());
    }
    if (!newPassword.isValid()) {
      return left(const AuthFailure.invalidPassword());
    }

    try {
      final user = _auth.currentUser!;
      final credential = EmailAuthProvider.credential(
        email: user.email!,
        password: oldPassword.getOrCrash(),
      );
      await user.reauthenticateWithCredential(credential);
      await user.updatePassword(newPassword.getOrCrash());
      return right(unit);
    } catch (e) {
      print(e);
      return left(const AuthFailure.serverError());
    }
  }

  @override
  UniqueId? userId() {
    final uid = _auth.currentUser?.uid;

    if (uid == null) {
      return null;
    }

    return UniqueId.fromUniqueString(uid);
  }

  @override
  Stream<bool> watchIsAuthenticated() => _auth.authStateChanges().map(
        (user) => user?.uid != null,
      );

  @override
  void onDispose() {
    // TODO implement
  }
}
