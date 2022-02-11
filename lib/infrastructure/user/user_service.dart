import 'dart:async';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';
import 'package:dart_counter/infrastructure/core/storage_helpers.dart';
import 'package:dart_counter/infrastructure/user/user_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image/image.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:social_client/social_client.dart';

@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IUserService)
class UserService implements IUserService {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final SocialClient _socialClient;

  UserService(
    this._firestore,
    this._storage,
    this._socialClient,
  );

  @override
  Future<Either<UserFailure, Unit>> deleteProfilePhoto() async {
    final photosRef = _storage.profilePhotoReference();
    final userDoc = _firestore.userDocument();

    try {
      await photosRef.delete();
      await userDoc.update({'profile.photoUrl': null});
      return right(unit);
    } catch (e) {
      print(e);
      return left(const UserFailure.unexpected());
    }
  }

  @override
  Future<Either<UserFailure, User>> getUser() async {
    final userDoc = _firestore.userDocument();

    try {
      final doc = await userDoc.get();
      final json = (doc.data() ?? {}) as Map<String, dynamic>;

      json.addAll({
        'id': doc.id,
      });

      return right(UserDto.fromJson(json).toDomain());
    } catch (e) {
      print(e);
      return left(const UserFailure.unexpected());
    }
  }

  @override
  Future<Either<UserFailure, Unit>> updateEmailAddress({
    required EmailAddress newEmailAddress,
  }) async {
    if (!newEmailAddress.isValid()) {
      return left(const UserFailure.invalidEmail());
    }
    final emailUpdated = await _socialClient.updateEmail(
      newEmail: newEmailAddress.getOrCrash(),
    );

    if (emailUpdated) {
      return right(unit);
    }

    return left(const UserFailure.unexpected());
  }

  @override
  Future<Either<UserFailure, Unit>> updateProfilePhoto({
    required Uint8List newPhotoData,
  }) async {
    final decodedImage = decodeImage(newPhotoData);
    if (decodedImage == null) {
      print('couldn not decode image.');
      return left(const UserFailure.unexpected());
    }

    final photoRef = _storage.profilePhotoReference();
    final userDoc = _firestore.userDocument();

    try {
      final thumbnail = copyResize(decodedImage, width: 120);
      await photoRef.putData(
        Uint8List.fromList(encodePng(thumbnail)),
        SettableMetadata(contentType: 'image/png'),
      );
      final photoUrl = await photoRef.getDownloadURL();
      await userDoc.update({'profile.photoUrl': photoUrl});
      return right(unit);
    } catch (e) {
      print(e);
      return left(const UserFailure.unexpected());
    }
  }

  @override
  Future<Either<UserFailure, Unit>> updateUsername({
    required Username newUsername,
  }) async {
    if (!newUsername.isValid()) {
      return left(const UserFailure.invalidUsername());
    }

    final nameUpdated = await _socialClient.updateName(
      newName: newUsername.getOrCrash(),
    );

    if (nameUpdated) {
      return right(unit);
    }

    return left(const UserFailure.unexpected());
  }

  @override
  Stream<Either<UserFailure, User>> watchUser() {
    final userDoc = _firestore.userDocument();

    return userDoc.snapshots().map<Either<UserFailure, User>>(
      (doc) {
        final json = (doc.data() ?? {}) as Map<String, dynamic>;

        json.addAll({
          'id': doc.id,
        });

        return right(UserDto.fromJson(json).toDomain());
      },
    ).onErrorReturnWith((error, _) => left(const UserFailure.unexpected()));
  }
}
