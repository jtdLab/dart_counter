import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/infrastructure/auth/apple_sign_in.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:social_client/clients/i_social_client.dart';
import 'package:social_client/social_client.dart';

typedef GetOAuthCredentialFromApple = OAuthCredential Function(
  String? idToken,
  String? rawNonce,
);
typedef GetOAuthCredentialFromFacebook = OAuthCredential Function(String token);
typedef GetOAuthCredentialFromGoogle = OAuthCredential Function(
  String? idToken,
  String? accessToken,
);
typedef GetAuthCredentialFromEmail = AuthCredential Function(
  String email,
  String password,
);

/// Implementation of [IAuthService] using Firebase backend.
@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IAuthService)
class FirebaseAuthService implements IAuthService {
  final FirebaseAuth _firebaseAuth;
  final AppleSignIn _appleSignIn;
  final GetOAuthCredentialFromApple _getAppleCredential;
  final GoogleSignIn _googleSignIn;
  final GetOAuthCredentialFromGoogle _getGoogleCredential;
  final FacebookAuth _facebookAuth;
  final GetOAuthCredentialFromFacebook _getFacebookCredential;
  final SocialClient _socialClient;
  final GetAuthCredentialFromEmail _getEmailCredential;

  FirebaseAuthService(
    this._firebaseAuth,
    this._appleSignIn,
    this._getAppleCredential,
    this._googleSignIn,
    this._getGoogleCredential,
    this._facebookAuth,
    this._getFacebookCredential,
    this._socialClient,
    this._getEmailCredential,
  );
  

  @factoryMethod
  factory FirebaseAuthService.injectable(
    FirebaseAuth _auth,
    AppleSignIn _appleSignIn,
    GoogleSignIn _googleSignIn,
    FacebookAuth _facebookAuth,
    SocialClient _socialClient,
  ) =>
      FirebaseAuthService(
        _auth,
        _appleSignIn,
        (idToken, rawNonce) => OAuthProvider('apple.com').credential(
          idToken: idToken,
          rawNonce: rawNonce,
        ),
        _googleSignIn,
        (idToken, accessToken) => GoogleAuthProvider.credential(
          idToken: idToken,
          accessToken: accessToken,
        ),
        _facebookAuth,
        (token) => FacebookAuthProvider.credential(token),
        _socialClient,
        (email, password) => EmailAuthProvider.credential(
          email: email,
          password: password,
        ),
      );

  @override
  Future<String> idToken() async {
    final user = _firebaseAuth.currentUser;

    if (user == null) {
      throw NotAuthenticatedError();
    }

    return user.getIdToken();
  }

  @override
  bool isAuthenticated() => _firebaseAuth.currentUser != null;

  @override
  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail({
    required EmailAddress emailAddress,
  }) async {
    if (!emailAddress.isValid()) {
      return left(const AuthFailure.invalidEmail());
    }
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: emailAddress.getOrCrash());
      return right(unit);
    } catch (e) {
      print(e); // TODO log
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithApple() async {
    try {
      final rawNonce = generateNonce();

      // Trigger the sign-in flow
      final idToken = await _appleSignIn.signIn(rawNonce: rawNonce);

      if (idToken == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      // Create an `OAuthCredential` from the credential returned by Apple.
      final oAuthCredential = _getAppleCredential(
        idToken,
        rawNonce,
      );

      // Sign in the user with Firebase. If the nonce we generated earlier does
      // not match the nonce in `appleCredential.identityToken`, sign in will fail.
      await _firebaseAuth.signInWithCredential(oAuthCredential);

      return right(unit);
    } catch (e) {
      print(e); // TODO log
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
      await _firebaseAuth.signInWithEmailAndPassword(
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
      // TODO CRASH HERE
      final result = await _facebookAuth.login();
      final status = result.status;

      if (status == LoginStatus.cancelled) {
        return left(const AuthFailure.cancelledByUser());
      }

      // Create a credential from the access token
      final accessToken = result.accessToken!;
      final oAuthCredential = _getFacebookCredential(accessToken.token);

      // Once signed in, return the UserCredential
      await _firebaseAuth.signInWithCredential(oAuthCredential);

      return right(unit);
    } catch (e) {
      print(e); // TODO log
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      // Trigger the sign-in flow
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      // Create a credential from the id token and access token
      final oAuthCredential = _getGoogleCredential(
        googleAuthentication.idToken,
        googleAuthentication.accessToken,
      );

      // Once signed in, return the UserCredential
      await _firebaseAuth.signInWithCredential(oAuthCredential);

      return right(unit);
    } catch (e) {
      print(e); // TODO log
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
      final emailAddress = await _socialClient.getEmailByUsername(
        username: username.getOrCrash(),
        password: password.getOrCrash(),
      );

      if (emailAddress == null) {
        return left(const AuthFailure.invalidUsernameAndPasswordCombination());
      }

      return signInWithEmailAndPassword(
        emailAddress: EmailAddress(emailAddress),
        password: password,
      );
    } catch (e) {
      print(e); // TODO log
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      await Future.wait(
        [
          _googleSignIn.signOut(),
          _facebookAuth.logOut(),
          _firebaseAuth.signOut(),
        ],
      );
      return right(unit);
    } catch (e) {
      print(e); // TODO log
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

    try {
      final success = await _socialClient.createUser(
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
      print(e); // TODO log
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
    if (!isAuthenticated()) {
      throw NotAuthenticatedError();
    }

    if (!oldPassword.isValid()) {
      return left(const AuthFailure.invalidPassword());
    }
    if (!newPassword.isValid()) {
      return left(const AuthFailure.invalidPassword());
    }

    try {
      final user = _firebaseAuth.currentUser!;
      final credential = _getEmailCredential(
        user.email!,
        oldPassword.getOrCrash(),
      );
      await user.reauthenticateWithCredential(credential);
      await user.updatePassword(newPassword.getOrCrash());

      return right(unit);
    } catch (e) {
      print(e); // TODO log
      return left(const AuthFailure.serverError());
    }
  }

  @override
  UniqueId userId() {
    final user = _firebaseAuth.currentUser;

    if (user == null) {
      throw NotAuthenticatedError();
    }

    return UniqueId.fromUniqueString(user.uid);
  }

  @override
  Stream<bool> watchIsAuthenticated() => _firebaseAuth.authStateChanges().map(
        (user) => user?.uid != null,
      );
}
