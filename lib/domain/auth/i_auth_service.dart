import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';

/// Domain service for all actions related to authentication.
abstract class IAuthService {
  /// Returns the idToken of the app-user if authenticated or `null` if not authenticated.
  Future<String?> idToken();

  /// Returns `true` if the app-user is authenticated.
  bool isAuthenticated();

  /// Sends a password-reset-email the users email address.
  ///
  /// Possible failures:
  /// 1. Invalid email
  /// 2. Server error
  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail({
    required EmailAddress emailAddress,
  });

  /// Signs a user in with apple.
  ///
  /// Possible failures:
  /// 1. Canceled by user
  /// 2. Server error
  Future<Either<AuthFailure, Unit>> signInWithApple();

  /// Signs a user in with [emailAddress] and [password].
  ///
  /// Possible failures:
  /// 1. Invalid email and password combination
  /// 2. Server error
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  /// Signs a user in with facebook.
  ///
  /// Possible failures:
  /// 1. Canceled by user
  /// 2. Server error
  Future<Either<AuthFailure, Unit>> signInWithFacebook();

  /// Signs a user in with google.
  ///
  /// Possible failures:
  /// 1. Canceled by user
  /// 2. Server error
  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  /// Signs a user in with [username] and [password].
  ///
  /// Possible failures:
  /// 1. Invalid username and password combination
  /// 2. Server error
  Future<Either<AuthFailure, Unit>> signInWithUsernameAndPassword({
    required Username username,
    required Password password,
  });

  /// Signs the user of the app out.
  ///
  /// Possible failures:
  /// 1. Server error
  Future<Either<AuthFailure, Unit>> signOut();

  /// Signs a user up with [emailAddress], [username] and [password].
  ///
  /// Possible failures:
  //  1. Email already in use
  //  2. Username already in use
  /// 3. Invalid email
  /// 4. Invalid username
  /// 5. Invalid password
  /// 6. Server error
  Future<Either<AuthFailure, Unit>> signUpWithEmailAndUsernameAndPassword({
    required EmailAddress emailAddress,
    required Username username,
    required Password password,
  });

  /// Updates the password of the user.
  ///
  /// Throws [NotAuthenticatedError] if the user is not signed in.
  ///
  /// Possible failures:
  /// 1. Invalid password
  /// 2. Server error
  Future<Either<AuthFailure, Unit>> updatePassword({
    required Password oldPassword,
    required Password newPassword,
  });

  /// Returns the id of the app-user if authenticated or `null` if not authenticated.
  UniqueId? userId();

  /// Returns a stream that indicates whether or not the app-user is authenticated.
  Stream<bool> watchIsAuthenticated();
}
