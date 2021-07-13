import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';

abstract class IAuthFacade {

  Stream<UniqueId?> watchSignedInUid();

  UniqueId? getSignedInUid();

  Future<Either<AuthFailure, Unit>> singUpWithEmailAndUsernameAndPassword(
      {required EmailAddress emailAddress,
      required Username username,
      required Password password});

  Future<Either<AuthFailure, Unit>> singInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});

  Future<Either<AuthFailure, Unit>> signInWithFacebook();

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<Either<AuthFailure, Unit>> signInWithApple();

  Future<void> signOut();

  Future<Either<AuthFailure, Unit>> updateEmailAddress(
      {required EmailAddress oldEmailAddress,
      required EmailAddress newEmailAddress});

  Future<Either<AuthFailure, Unit>> updatePassword(
      {required Password oldPassword, required Password newPassword});

  Future<Either<AuthFailure, Unit>> resetPassword(
      {required EmailAddress emailAddress});
}
