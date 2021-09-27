import 'dart:async';

import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/main_dev.dart';
import 'package:dartz/dartz.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Environment(Environment.dev)
@LazySingleton(as: IAuthFacade)
class MockedAuthFacade implements IAuthFacade {
  final BehaviorSubject<bool> _authenticatedController;

  MockedAuthFacade() : _authenticatedController = BehaviorSubject.seeded(false);

  @override
  UniqueId? userId() =>
      isAuthenticated() ? UniqueId.fromUniqueString('dummyUid') : null;

  @override
  Future<String>? idToken() async {
    if (isAuthenticated()) {
      return 'dummyIdToken';
    }

    return Future.value(null);
  }

  @override
  bool isAuthenticated() => _authenticatedController.value ?? false;

  @override
  Stream<bool> watchIsAuthenticated() => _authenticatedController.stream;

  @override
  Future<Either<AuthFailure, Unit>> singUpWithEmailAndUsernameAndPassword({
    required EmailAddress emailAddress,
    required Username username,
    required Password password,
  }) async {
    if (hasNetworkConnection) {
      if (emailAddress.isValid() && username.isValid() && password.isValid()) {
        _authenticatedController.add(true);
        return right(unit);
      }
    }

    return left(const AuthFailure.serverError()); // TODO name better
  }

  @override
  Future<Either<AuthFailure, Unit>> singInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    if (hasNetworkConnection) {
      if (emailAddress.isValid() && password.isValid()) {
        _authenticatedController.add(true);
        return right(unit);
      }
    }

    return left(const AuthFailure.serverError()); // TODO name better
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithFacebook() async {
    if (hasNetworkConnection) {
      _authenticatedController.add(true);
      return right(unit);
    }

    return left(const AuthFailure.serverError()); // TODO name better
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    if (hasNetworkConnection) {
      _authenticatedController.add(true);
      return right(unit);
    }

    return left(const AuthFailure.serverError()); // TODO name better
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithApple() async {
    if (hasNetworkConnection) {
      _authenticatedController.add(true);
      return right(unit);
    }

    return left(const AuthFailure.serverError()); // TODO name better
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    _authenticatedController.add(false);
    return right(unit);
  }

  @override
  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail({
    required EmailAddress emailAddress,
  }) async {
    if (hasNetworkConnection) {
      if (emailAddress.isValid()) {
        return right(unit);
      }
    }

    return left(const AuthFailure.serverError()); // TODO name better
  }

  @override
  Future<Either<AuthFailure, Unit>> updatePassword({
    required Password oldPassword,
    required Password newPassword,
  }) async {
    if (isAuthenticated()) {
      if (hasNetworkConnection) {
        if (oldPassword.isValid() && newPassword.isValid()) {
          if (oldPassword.getOrCrash() == newPassword.getOrCrash()) {
            return right(unit);
          }
        }
      }

      return left(const AuthFailure.serverError()); // TODO name better
    }

    throw NotAuthenticatedError();
  }
}
