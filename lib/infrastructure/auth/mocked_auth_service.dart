import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Environment(Environment.dev)
@LazySingleton(as: IAuthService)
class MockedAuthService with Disposable implements IAuthService {
  static bool hasNetworkConnection = true;

  final BehaviorSubject<bool> _authenticatedController;

  MockedAuthService()
      : _authenticatedController = BehaviorSubject.seeded(false);

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
    if (hasNetworkConnection) {
      _authenticatedController.add(true);
      return right(unit);
    }

    return left(const AuthFailure.serverError());
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
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

  @override
  void onDispose() {
    _authenticatedController.close();
  }
}
