import 'dart:async';

import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';

@Environment(Environment.dev)
@LazySingleton(as: IAuthFacade)
class MockedAuthFacade implements IAuthFacade {
  bool fail = false; // toggle to simulate working / notworking endpoint

  final BehaviorSubject<UniqueId?> _signedInUidController;

  MockedAuthFacade() : _signedInUidController = BehaviorSubject() {
    _signedInUidController.add(UniqueId.fromUniqueString('dummyUid'));
  }

  @override
  Stream<UniqueId?> watchSignedInUid() {
    return _signedInUidController.stream;
  }

  @override
  UniqueId? getSignedInUid() {
    if (fail) {
      return null;
    } else {
      return _signedInUidController.valueWrapper?.value;
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> resetPassword(
      {required EmailAddress emailAddress}) {
    if (fail) {
      return Future.value(left(const AuthFailure.serverError()));
    } else {
      final emailAddressIsValid = emailAddress.isValid();

      if (emailAddressIsValid) {
        return Future.value(right(unit));
      } else {
        return Future.value(
          left(const AuthFailure.invalidEmailAndPasswordCombination()),
        );
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithApple() {
    if (fail) {
      return Future.value(left(const AuthFailure.serverError()));
    } else {
      _signedInUidController.add(
        UniqueId.fromUniqueString('dummyUid'),
      );
      return Future.value(right(unit));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithFacebook() {
    if (fail) {
      return Future.value(left(const AuthFailure.serverError()));
    } else {
      _signedInUidController.add(
        UniqueId.fromUniqueString('dummyUid'),
      );
      return Future.value(right(unit));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    if (fail) {
      return Future.value(left(const AuthFailure.serverError()));
    } else {
      _signedInUidController.add(
        UniqueId.fromUniqueString('dummyUid'),
      );
      return Future.value(right(unit));
    }
  }

  @override
  Future<void> signOut() {
    _signedInUidController.add(null);
    return Future.value();
  }

  @override
  Future<Either<AuthFailure, Unit>> singInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) {
    if (fail) {
      return Future.value(left(const AuthFailure.serverError()));
    } else {
      _signedInUidController.add(
        UniqueId.fromUniqueString('dummyUid'),
      );
      return Future.value(right(unit));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> singUpWithEmailAndUsernameAndPassword(
      {required EmailAddress emailAddress,
      required Username username,
      required Password password}) {
    if (fail) {
      return Future.value(left(const AuthFailure.serverError()));
    } else {
      _signedInUidController.add(
        UniqueId.fromUniqueString('dummyUid'),
      );
      return Future.value(right(unit));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> updateEmailAddress(
      {required EmailAddress oldEmailAddress,
      required EmailAddress newEmailAddress}) {
    if (fail) {
      return Future.value(left(const AuthFailure.serverError()));
    } else {
      return Future.value(right(unit));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> updatePassword(
      {required Password oldPassword, required Password newPassword}) {
    if (fail) {
      return Future.value(left(const AuthFailure.serverError()));
    } else {
      return Future.value(right(unit));
    }
  }
}
