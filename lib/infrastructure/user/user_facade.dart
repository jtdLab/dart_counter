import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/core/value_objects.dart';

import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:image/image.dart';

@LazySingleton(as: IUserFacade)
class UserFacade implements IUserFacade {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;
  final IAuthFacade _authFacade;

  UserFacade(this._firestore, this._firebaseStorage, this._authFacade);

  @override
  Future<Either<UserFailure, User>> readCurrentUser() {
    // TODO: implement readCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<Either<UserFailure, Unit>> updatePhoto(File rawData) async {
    final uid = _authFacade.getSignedInUid();
    if (uid == null) {
      throw Error();
    }
    final uidStr = uid.getOrCrash();

    var decodedImage = decodeImage(rawData.readAsBytesSync());
    if (decodedImage == null)
      throw ArgumentError.value(
          rawData, 'Unable to decode image from given file');
    var ref = _firebaseStorage.ref('profilePhotos/$uidStr');
    var thumbnail = copyResize(decodedImage, width: 120);
    await ref.putData(Uint8List.fromList(encodePng(thumbnail)),
        SettableMetadata(contentType: 'image/png'));

    String photoUrl = await ref.getDownloadURL();
    // TODO safe photoUrl in firestore
    return right(unit);
  }

  @override
  Future<Either<UserFailure, Unit>> deletePhoto() async {
    final uid = _authFacade.getSignedInUid();
    if (uid == null) {
      throw Error();
    }

    final ref = _firebaseStorage.ref('profilePhotos/$uid');
    await ref.delete();
    // TODO catch errors
    return right(unit);
  }

  @override
  Future<Either<UserFailure, Unit>> updateUsername(
      {required Username oldUsername, required Username newUsername}) {
    // TODO: implement updateUsername
    throw UnimplementedError();
  }

  /**
  *  @override
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
  Future<Either<UserFailure, User>> read(String id) async {
    // TOCO id rly needed?
    try {
      final userDoc = await _firestore.userDocument();
      final data = (await userDoc.get()).data();

      if (data == null) return left(const UserFailure.unableToRead());

      _user = UserDto.fromJson(data).copyWith(id: id).toDomain();
      return right(_user!);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(const UserFailure.insufficientPermission());
      } else {
        return left(const UserFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> update(User user) async {
    try {
      final userDoc = await _firestore.userDocument();
      final userDto = UserDto.fromDomain(user);

      await userDoc.update(userDto.toJson());

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
  Future<Either<UserFailure, Unit>> delete(User user) {
    // TODO: implement delete
    throw UnimplementedError();
  }

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
  */
}
