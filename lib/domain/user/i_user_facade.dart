import 'dart:io';

import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IUserFacade {
  Future<Either<UserFailure, User>> readCurrentUser();
  Future<Either<UserFailure, Unit>> updatePhoto(File rawData);
  Future<Either<UserFailure, Unit>> deletePhoto();
  Future<Either<UserFailure, Unit>> updateUsername(
      {required Username oldUsername, required Username newUsername});
}
