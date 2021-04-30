import 'package:dart_counter/domain/auth/user/user.dart';
import 'package:dart_counter/domain/auth/user/user_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IUserRepository {
  Future<Either<UserFailure, Unit>> create(User user);
  Future<Either<UserFailure, User>> read();
  Future<Either<UserFailure, Unit>> update(User user);
  Future<Either<UserFailure, Unit>> delete(User user);
  Future<Either<UserFailure, String>> findEmailAddressByUsername(String username);
}
