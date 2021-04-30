import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/auth/user/i_user_repository.dart';
import 'package:dart_counter/domain/auth/user/user_failure.dart';
import 'package:dart_counter/infrastructure/auth/user_dtos.dart';
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:dart_counter/domain/auth/user/user.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  UserRepository(this._firebaseAuth, this._firestore);

  @override
  Future<Either<UserFailure, Unit>> create(User user) async {
    try {
      final userDoc = await _firestore.userDocument();
      final userDto = UserDto.fromDomain(user);

      await userDoc.set(userDto.toJson());

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
  Future<Either<UserFailure, User>> read() async {
    try {
      final userDoc = await _firestore.userDocument();
      final data = (await userDoc.get()).data();

      if (data == null) return left(const UserFailure.unableToRead());

      final id = _firebaseAuth.currentUser!.uid;
      return right(UserDto.fromJson(data).copyWith(id: id).toDomain());
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

  @override
  Future<Either<UserFailure, String>> findEmailAddressByUsername(
      String username) async {
    try {
      final usersCollection = await _firestore.usersCollection();
      final querySnapshot = await usersCollection
          .where('profile.username', isEqualTo: username)
          .limit(1)
          .get();

      if (querySnapshot.docs.isEmpty) {
        return left(const UserFailure.unableToRead());
      }

      return right(querySnapshot.docs[0].data()['emailAddress'] as String);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(const UserFailure.insufficientPermission());
      } else {
        return left(const UserFailure.unexpected());
      }
    }
  }
}
