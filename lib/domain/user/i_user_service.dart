import 'dart:typed_data';

import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';

/// Domain service for all actions related to the app-user.
abstract class IUserService {
  /// Deletes the profile photo of the user.
  ///
  /// {@template not_authenticated_error}
  /// Throws [NotAuthenticatedError] if the app-user is not signed in.
  /// {@endtemplate}
  Future<Either<UserFailure, Unit>> deleteProfilePhoto();

  /// Returns the app-user or failure.
  ///
  /// {@macro not_authenticated_error}
  Either<UserFailure, User> getUser();

  /// Updates the email address of the user.
  ///
  /// {@macro not_authenticated_error}
  Future<Either<UserFailure, Unit>> updateEmailAddress({
    required EmailAddress newEmailAddress,
  });

  /// Updates the profile photo of the user.
  ///
  /// {@macro not_authenticated_error}
  Future<Either<UserFailure, Unit>> updateProfilePhoto({
    required Uint8List newPhotoData,
  });

  /// Updates the username of the user.
  ///
  /// {@macro not_authenticated_error}
  Future<Either<UserFailure, Unit>> updateUsername({
    required Username newUsername,
  });

  /// Returns a stream of the app-user or failures.
  ///
  /// {@macro not_authenticated_error}
  Stream<Either<UserFailure, User>> watchUser();
}
