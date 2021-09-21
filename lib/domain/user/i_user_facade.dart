import 'dart:io';

import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';

class NotDecodableImageError extends Error {}

/// Domain interface for all actions related to the user of the app.
abstract class IUserFacade {
  /// Returns a stream of the signed in user.
  ///
  /// Throws [NotAuthenticatedError] if the user is not signed in.
  Stream<Either<UserFailure, User>> watchUser();

  /// Returns the signed in user.
  ///
  /// Throws [NotAuthenticatedError] if the user is not signed in.
  Future<Either<UserFailure, User>> fetchUser();

  /// Updates the profile photo of the user.
  ///
  /// Throws [NotAuthenticatedError] if the user is not signed in.
  /// Throws [NotDecodableImageError] if [newPhoto] doesn`t contain a decodable image.
  Future<Either<UserFailure, Unit>> updateProfilePhoto({
    required File newPhoto,
  });

  /// Deletes the profile photo of the user.
  ///
  /// Throws [NotAuthenticatedError] if the user is not signed in.
  Future<Either<UserFailure, Unit>> deleteProfilePhoto();

  /// Updates the username of the user.
  ///
  /// Throws [NotAuthenticatedError] if the user is not signed in.
  Future<Either<UserFailure, Unit>> updateUsername({
    required Username newUsername,
  });

  /// Updates the email address of the user.
  ///
  /// Throws [NotAuthenticatedError] if the user is not signed in.
  Future<Either<UserFailure, Unit>> updateEmailAddress({
    required EmailAddress newEmailAddress,
  });

  /// Updates the password of the user.
  ///
  /// Throws [NotAuthenticatedError] if the user is not signed in.
  Future<Either<UserFailure, Unit>> updatePassword({
    required Password oldPassword,
    required Password newPassword,
  });
}
