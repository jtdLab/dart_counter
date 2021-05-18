import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/core/value_objects.dart';

import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dart_counter/infrastructure/user/user_dto.dart';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:image/image.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: IUserFacade)
class UserFacade implements IUserFacade {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final IAuthFacade _authFacade;
  final FirebaseFunctions _functions;

  UserFacade(this._firestore, this._storage, this._authFacade, this._functions);

  @override
  Stream<Either<UserFailure, User>> watchCurrentUser() async* {
    try {
      final uid = _authFacade.getSignedInUid();

      if (uid == null) {
        yield left(const UserFailure.failure()); // TODO not authenticated
      }

      final userDoc = await _firestore.userDocument();
      yield* userDoc.snapshots().map((docSnapshot) {
        final data = docSnapshot.data();

        if (data == null) {
          return left(const UserFailure.failure());
        }

        final user =
            UserDto.fromJson(data).copyWith(id: uid!.getOrCrash()).toDomain();
        return right(user);
      });
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        yield left(const UserFailure.insufficientPermission());
      } else {
        yield left(const UserFailure.failure());
      }
    }
  }

  @override
  Future<Either<UserFailure, User>> readCurrentUser() async {
    try {
      final uid = _authFacade.getSignedInUid();
      if (uid == null) {
        return left(const UserFailure.failure()); // TODO not authenticated
      }

      final userDoc = await _firestore.userDocument();
      final data = (await userDoc.get()).data();

      if (data == null) {
        return left(const UserFailure.failure());
      }

      final user =
          UserDto.fromJson(data).copyWith(id: uid.getOrCrash()).toDomain();
      return right(user);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(const UserFailure.insufficientPermission());
      } else {
        return left(const UserFailure.failure());
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> updatePhoto(File rawData) async {
    try {
      final uid = _authFacade.getSignedInUid();
      if (uid == null) {
        return left(const UserFailure.failure()); // TODO not authenticated
      }

      final decodedImage = decodeImage(rawData.readAsBytesSync());
      if (decodedImage == null) {
        // TODO unable to read image from file
        return left(const UserFailure.failure());
      }

      final ref = _storage.ref('profilePhotos/${uid.getOrCrash()}');
      final thumbnail = copyResize(decodedImage, width: 120);
      await ref.putData(Uint8List.fromList(encodePng(thumbnail)),
          SettableMetadata(contentType: 'image/png'));

      final photoUrl = await ref.getDownloadURL();
      final userDoc = await _firestore.userDocument();
      userDoc.update({'photoUrl': photoUrl});

      return right(unit);
    } on FirebaseException {
      return left(const UserFailure.failure());
    }
  }

  @override
  Future<Either<UserFailure, Unit>> deletePhoto() async {
    final uid = _authFacade.getSignedInUid();
    if (uid == null) {
      return left(const UserFailure.failure()); // TODO not authenticated
    }

    final ref = _storage.ref('profilePhotos/$uid');
    await ref.delete();

    final userDoc = await _firestore.userDocument();
    userDoc.update({'photoUrl': null});

    return right(unit);
  }

  @override
  Future<Either<UserFailure, Unit>> updateUsername(
      {required Username newUsername}) async {
    // check if valid username
    if (newUsername.isValid()) {
      try {
        // check if username is available via cloud function
        final callable = _functions.httpsCallable('isUsernameAvailable');
        final results = await callable({'username': newUsername.getOrCrash()});
        final isAvailable = results.data as bool;
        if (isAvailable) {
          // update username in database
          final userDoc = await _firestore.userDocument();
          await userDoc.update({'username': newUsername.getOrCrash()});
          return right(unit);
        } else {
          // TODO name not available
          return left(const UserFailure.failure());
        }
      } on Exception {
        // TODO check for specific erorrs
        return left(const UserFailure.failure());
      }
    } else {
      // TODO
      return left(const UserFailure.failure());
    }
  }

  /**
  * 
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
