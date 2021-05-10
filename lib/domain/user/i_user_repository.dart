import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IUserRepository {
  User? get user;
  Future<Either<UserFailure, Unit>> create(User user); // TODO: not needed cause done with Cloud Functions
  Future<Either<UserFailure, User>> read(String uid);
  Future<Either<UserFailure, Unit>> update(User user);
  Future<Either<UserFailure, Unit>> delete(User user);
}
