import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';
import 'package:dart_counter/infrastructure/core/storage_helpers.dart';
import 'package:dart_counter/infrastructure/user/user_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image/image.dart';
import 'package:injectable/injectable.dart';
import 'package:social_client/social_client.dart';
import 'package:rxdart/rxdart.dart';

// TODO idToken

@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IUserFacade)
class UserFacade implements IUserFacade {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final auth.FirebaseAuth _auth;
  final SocialClient _socialClient;

  UserFacade(
    this._firestore,
    this._storage,
    this._auth,
    this._socialClient,
  );

  @override
  Stream<Either<UserFailure, User>> watchUser() async* {
    final DocumentReference<Object?> userDoc;
    try {
      userDoc = _firestore.userDocument();
    } catch (e) {
      rethrow;
    }

    yield* userDoc.snapshots().asyncMap<Either<UserFailure, User>>((doc) async {
      final idToken = await _auth.currentUser!.getIdToken();
      return right(
        UserDto.fromFirestore(doc).toDomain(idToken: idToken),
      );
    }).onErrorReturnWith(
      (error) => left(const UserFailure.unableToLoadData()),
    );
  }

  @override
  Future<Either<UserFailure, User>> fetchUser() async {
    final DocumentReference<Object?> userDoc;
    try {
      userDoc = _firestore.userDocument();
    } catch (e) {
      rethrow;
    }

    try {
      final doc = await userDoc.get();
      final idToken = await _auth.currentUser!.getIdToken();
      return right(
        UserDto.fromFirestore(doc).toDomain(idToken: idToken),
      );
    } catch (e) {
      print(e);
      return left(const UserFailure.unableToLoadData()); // TODO name better
    }
  }

  @override
  Future<Either<UserFailure, Unit>> updateProfilePhoto({
    required File newPhoto,
  }) async {
    final decodedImage = decodeImage(newPhoto.readAsBytesSync());
    if (decodedImage == null) {
      throw NotDecodableImageError();
    }

    try {
      final photoRef = _storage.profilePhotoReference();
      final thumbnail = copyResize(decodedImage, width: 120);
      await photoRef.putData(
        Uint8List.fromList(encodePng(thumbnail)),
        SettableMetadata(contentType: 'image/png'),
      );
      final photoUrl = await photoRef.getDownloadURL();
      final userDoc = _firestore.userDocument();
      await userDoc.update({'profile.photoUrl': photoUrl});
      return right(unit);
    } catch (e) {
      print(e);
      return left(const UserFailure.failure()); // TODO name better
    }
  }

  @override
  Future<Either<UserFailure, Unit>> deleteProfilePhoto() async {
    try {
      final photosRef = _storage.profilePhotoReference();
      await photosRef.delete();

      final userDoc = _firestore.userDocument();
      userDoc.update({'profile.photoUrl': null});
      return right(unit);
    } catch (e) {
      print(e);
      return left(const UserFailure.failure()); // TODO name better
    }
  }

  @override
  Future<Either<UserFailure, Unit>> updateUsername({
    required Username newUsername,
  }) async {
    if (!newUsername.isValid()) {
      return left(const UserFailure.failure()); // TODO name better
    }

    final success = await _socialClient.updateName(
      newName: newUsername.getOrCrash(),
    );

    if (success) {
      return right(unit);
    }

    return left(const UserFailure.failure()); // TODO name better
  }

  @override
  Future<Either<UserFailure, Unit>> updateEmailAddress({
    required EmailAddress newEmailAddress,
  }) async {
    if (!newEmailAddress.isValid()) {
      return left(const UserFailure.failure()); // TODO name better
    }
    final success = await _socialClient.updateEmail(
      newEmail: newEmailAddress.getOrCrash(),
    );

    if (success) {
      return right(unit);
    }

    return left(const UserFailure.failure()); // TODO name better
  }

  @override
  Future<Either<UserFailure, Unit>> updatePassword({
    required Password oldPassword,
    required Password newPassword,
  }) async {
    if (!oldPassword.isValid()) {
      return left(const UserFailure.failure()); // TODO name better
    }
    if (!newPassword.isValid()) {
      return left(const UserFailure.failure()); // TODO name better
    }

    try {
      final user = _auth.currentUser!;
      final credential = auth.EmailAuthProvider.credential(
        email: user.email!,
        password: oldPassword.getOrCrash(),
      );
      await user.reauthenticateWithCredential(credential);
      await user.updatePassword(newPassword.getOrCrash());
      return right(unit);
    } catch (e) {
      return left(const UserFailure.failure());
    }
  }
}
