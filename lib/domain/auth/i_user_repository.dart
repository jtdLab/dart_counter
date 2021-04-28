import 'package:dart_counter/domain/auth/user.dart';
import 'package:dart_counter/domain/auth/user_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IUserRepository {
  Stream<Either<UserFailure, User>> watch();
  Future<Either<UserFailure, Unit>> create(User user);
  Future<Either<UserFailure, Unit>> update(User user);
  Future<Either<UserFailure, Unit>> delete(User user);
}
