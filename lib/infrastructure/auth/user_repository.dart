import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/auth/i_user_repository.dart';
import 'package:dart_counter/domain/auth/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dart_counter/domain/auth/user.dart';
import 'package:injectable/injectable.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';

import 'user_dtos.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final FirebaseFirestore _firestore;

  UserRepository(this._firestore);

  @override
  Stream<Either<UserFailure, User>> watch() {
    // TODO: implement watch
    throw UnimplementedError();
  }

  @override
  Future<Either<UserFailure, Unit>> create(User user) async {
    try {
      final userDoc = await _firestore.userDocument();
      final userDto = UserDto.fromDomain(user);

      await userDoc.userCollection.doc(userDto.id).set(userDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(const UserFailure.insufficientPermission());
      } else {
        return left(const UserFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> update(User user) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<Either<UserFailure, Unit>> delete(User user) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
