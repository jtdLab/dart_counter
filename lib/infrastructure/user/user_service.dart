import 'dart:async';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';
import 'package:dart_counter/infrastructure/core/storage_helpers.dart';
import 'package:dart_counter/infrastructure/user/user_dto.dart';
import 'package:dart_counter/logger.dart';
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
  final IAuthService _authService;
  final SocialClient _socialClient;

  UserService(
    this._firestore,
    this._storage,
    this._authService,
    this._socialClient,
  );

  @override
  Future<Either<UserFailure, Unit>> deleteProfilePhoto() async {
    // the ref to profile photo storage location
    final photosRef = _storage.profilePhotoReference();
    // the ref to the user document in firestore
    final userDoc = _firestore.userDocument();

    // delete the photo from storage
    await photosRef.delete();
    // set the photoUrl to null in firestore
    await userDoc.update({'profile.photoUrl': null});
    // return unit
    return right(unit);
  }

  @override
  Future<Either<UserFailure, User>> getUser() async {
    // the ref to the user document in firestore
    final userDoc = _firestore.userDocument();

    try {
      // fetch the user json
      final doc = await userDoc.get();
      final json = (doc.data() ?? {}) as Map<String, dynamic>;

      json.addAll({
        'id': doc.id,
      });

      // try to parse the user json to User object
      return right(UserDto.fromJson(json).toDomain());
      // when error
    } catch (e) {
      // log error
      logger.e(e);
      // return unexpected failure
      return left(const UserFailure.unexpected());
    }
  }

  @override
  Future<Either<UserFailure, Unit>> updateEmailAddress({
    required EmailAddress newEmailAddress,
  }) async {
    _checkAuth();

    // when new email is not valid
    if (!newEmailAddress.isValid()) {
      // return invalid email failure
      return left(const UserFailure.invalidEmail());
    }
    // try to update the email via social client
    final emailUpdated = await _socialClient.updateEmail(
      newEmail: newEmailAddress.getOrCrash(),
    );

    // when update email succeeds
    if (emailUpdated) {
      // return unit
      return right(unit);
    }

    // else return unexpected failure
    return left(const UserFailure.unexpected());
  }

  @override
  Future<Either<UserFailure, Unit>> updateProfilePhoto({
    required Uint8List newPhotoData,
  }) async {
    final photoRef = _storage.profilePhotoReference();
    final userDoc = _firestore.userDocument();

    final decodedImage = decodeImage(newPhotoData);
    if (decodedImage == null) {
      // log error
      logger.e('couldn not decode image.');
      // return unexpected failure
      return left(const UserFailure.unexpected());
    }

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
      // log error
      logger.e(e);
      // return unexpected failure
      return left(const UserFailure.unexpected());
    }
  }

  @override
  Future<Either<UserFailure, Unit>> updateUsername({
    required Username newUsername,
  }) async {
    _checkAuth();

    // when username is not valid
    if (!newUsername.isValid()) {
      // return invalid username failure
      return left(const UserFailure.invalidUsername());
    }

    // try to update the username via social client
    final nameUpdated = await _socialClient.updateName(
      newName: newUsername.getOrCrash(),
    );

    // when update username succeeds
    if (nameUpdated) {
      // return unit
      return right(unit);
    }

    // else return unexpected failure
    return left(const UserFailure.unexpected());
  }

  @override
  Stream<Either<UserFailure, User>> watchUser() {
    // the ref to the user document in firestore
    final userDoc = _firestore.userDocument();

    // for each user json
    return userDoc.snapshots().map<Either<UserFailure, User>>(
      (doc) {
        final json = (doc.data() ?? {}) as Map<String, dynamic>;

        json.addAll({
          'id': doc.id,
        });

        // try to parse the user json to User object
        return right(UserDto.fromJson(json).toDomain());
      },
    ).onErrorReturnWith((e, _) {
      // log error
      logger.e(e);
      // return unexpected failure
      return left(const UserFailure.unexpected());
    });
  }

  /// Throws [NotAuthenticatedError] if app-user is not signed in.
  void _checkAuth() {
    // when not authenticated
    if (!_authService.isAuthenticated()) {
      // throw not authenticated error
      throw NotAuthenticatedError();
    }
  }
}
