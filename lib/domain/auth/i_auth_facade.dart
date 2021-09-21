import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';

/// Domain interface for all actions related to authentication.
abstract class IAuthFacade {
  /// Returns `true` if the app-user is authenticated.
  bool isAuthenticated();

  /// Returns a stream that indicates whether or not the app-user is authenticated.
  Stream<bool> watchIsAuthenticated();

  /// Signs a user up with [emailAddress], [username] and [password].
  Future<Either<AuthFailure, Unit>> singUpWithEmailAndUsernameAndPassword({
    required EmailAddress emailAddress,
    required Username username,
    required Password password,
  });

  /// Signs a user in with [emailAddress] and [password].
  Future<Either<AuthFailure, Unit>> singInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  /// Signs a user in with facebook.
  Future<Either<AuthFailure, Unit>> signInWithFacebook();

  /// Signs a user in with google.
  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  /// Signs a user in with apple.
  Future<Either<AuthFailure, Unit>> signInWithApple();

  /// Signs the user of the app out.
  Future<Either<AuthFailure, Unit>> signOut();

  /// Sends a password-reset-email the users email address.
  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail({
    required EmailAddress emailAddress,
  });
}
