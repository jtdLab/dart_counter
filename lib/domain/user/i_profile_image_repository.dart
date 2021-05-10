import 'dart:io';

import 'package:dart_counter/domain/user/profile_image_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IProfileImageRepository {

  Future<Either<ProfileImageFailure, String>> save(File rawdata);
  Future<void> delete();
}