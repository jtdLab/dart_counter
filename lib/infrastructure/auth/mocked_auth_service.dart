import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/infrastructure/auth/apple_sign_in.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

/// Mock implementation of [IAuthService].
///
/// Specifiy [hasNetworkConnection] to simulate behaivor with existing/missing network access.
///
/// Specify [emailAlreadyInUse] to simulate behaivor when email is already in use.
///
/// Specify [usernameAlreadyInUse] to simulate behaivor when username is already in use.
@Environment(Environment.dev)
@LazySingleton(as: IAuthService)
class MockedAuthService with Disposable implements IAuthService {
  bool hasNetworkConnection = true;
  bool emailAlreadyInUse = false;
  bool usernameAlreadyInUse = false;

  final AppleSignIn _appleSignIn;
  final GoogleSignIn _googleSignIn;
  final FacebookAuth _facebookAuth;

  final BehaviorSubject<bool> _authenticatedController;

  MockedAuthService(
    this._appleSignIn,
    this._googleSignIn,
    this._facebookAuth, {
    bool isAuthenticated = false,
  }) : _authenticatedController = BehaviorSubject.seeded(isAuthenticated);

  // coverage:ignore-start
  @factoryMethod
  factory MockedAuthService.inject(
    AppleSignIn _appleSignIn,
    GoogleSignIn _googleSignIn,
    FacebookAuth _facebookAuth,
  ) =>
      MockedAuthService(
        _appleSignIn,
        _googleSignIn,
        _facebookAuth,
      );
  // coverage:ignore-end

  @override
  Future<String?> idToken() async {
    if (isAuthenticated()) {
      return 'dummyIdToken';
    }

    return null;
  }

  @override
  bool isAuthenticated() => _authenticatedController.value;

  @override
  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail({
    required EmailAddress emailAddress,
  }) async {
    if (hasNetworkConnection) {
      if (emailAddress.isValid()) {
        return right(unit);
      }

      return left(const AuthFailure.invalidEmail());
    }

    return left(const AuthFailure.serverError());
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithApple() async {
    final rawNonce = generateNonce();

    // Trigger the sign-in flow
    final idToken = await _appleSignIn.signIn(rawNonce: rawNonce);

    if (idToken == null) {
      return left(const AuthFailure.cancelledByUser());
    }

    if (hasNetworkConnection) {
      _authenticatedController.add(true);
      return right(unit);
    }

    return left(const AuthFailure.serverError());
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    if (hasNetworkConnection) {
      if (!emailAddress.isValid() || !password.isValid()) {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }

      _authenticatedController.add(true);
      return right(unit);
    }

    return left(const AuthFailure.serverError());
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithFacebook() async {
    // Trigger the sign-in flow
    // TODO CRASH HERE
    final result = await _facebookAuth.login();
    final status = result.status;

    if (status == LoginStatus.cancelled) {
      return left(const AuthFailure.cancelledByUser());
    }

    if (hasNetworkConnection) {
      _authenticatedController.add(true);
      return right(unit);
    }

    return left(const AuthFailure.serverError());
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    // Trigger the sign-in flow
    final googleUser = await _googleSignIn.signIn();

    if (googleUser == null) {
      return left(const AuthFailure.cancelledByUser());
    }

    if (hasNetworkConnection) {
      _authenticatedController.add(true);
      return right(unit);
    }

    return left(const AuthFailure.serverError());
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithUsernameAndPassword({
    required Username username,
    required Password password,
  }) async {
    if (hasNetworkConnection) {
      if (!username.isValid() || !password.isValid()) {
        return left(const AuthFailure.invalidUsernameAndPasswordCombination());
      }

      _authenticatedController.add(true);
      return right(unit);
    }

    return left(const AuthFailure.serverError());
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    if (hasNetworkConnection) {
      _authenticatedController.add(false);
      return right(unit);
    }

    return left(const AuthFailure.serverError());
  }

  @override
  Future<Either<AuthFailure, Unit>> signUpWithEmailAndUsernameAndPassword({
    required EmailAddress emailAddress,
    required Username username,
    required Password password,
  }) async {
    if (hasNetworkConnection) {
      if (!emailAddress.isValid()) {
        return left(const AuthFailure.invalidEmail());
      }

      if (!username.isValid()) {
        return left(const AuthFailure.invalidUsername());
      }

      if (!password.isValid()) {
        return left(const AuthFailure.invalidPassword());
      }

      if (emailAlreadyInUse) {
        return left(const AuthFailure.emailAlreadyInUse());
      }

      if (usernameAlreadyInUse) {
        return left(const AuthFailure.usernameAlreadyInUse());
      }

      _authenticatedController.add(true);
      return right(unit);
    }

    return left(const AuthFailure.serverError());
  }

  @override
  Future<Either<AuthFailure, Unit>> updatePassword({
    required Password oldPassword,
    required Password newPassword,
  }) async {
    if (isAuthenticated()) {
      if (hasNetworkConnection) {
        if (!oldPassword.isValid()) {
          return left(const AuthFailure.invalidOldPassword());
        }

        if (!newPassword.isValid()) {
          return left(const AuthFailure.invalidNewPassword());
        }

        return right(unit);
      }

      return left(const AuthFailure.serverError());
    }

    throw NotAuthenticatedError();
  }

  @override
  UniqueId? userId() =>
      isAuthenticated() ? UniqueId.fromUniqueString('dummyUid') : null;

  @override
  Stream<bool> watchIsAuthenticated() => _authenticatedController.stream;

  // coverage:ignore-start
  @override
  void onDispose() {
    _authenticatedController.close();
  }
  // coverage:ignore-end
}
