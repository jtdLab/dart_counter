import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
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
@LazySingleton(as: IUserFacade)
class UserFacade implements IUserFacade {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final IAuthFacade _authFacade;
  final SocialClient _socialClient;

  BehaviorSubject<Either<UserFailure, User>> _userController;

  UserFacade(
    this._firestore,
    this._storage,
    this._authFacade,
    this._socialClient,
  ) : _userController = BehaviorSubject() {
    _authFacade.watchIsAuthenticated().listen((isAuthenticated) async {
      if (isAuthenticated) {
        _userController = BehaviorSubject();
        _userController.addStream(watchUser());
      } else {
        await _userController.close(); // TODO needed
      }
    });
  }

  @override
  Either<UserFailure, User>? getUser() {
    _checkAuth();
    final failureOrUser = _userController.value;

    return failureOrUser;
  }

  @override
  Stream<Either<UserFailure, User>> watchUser() async* {
    _checkAuth();
    final DocumentReference<Object?> userDoc;
    try {
      userDoc = _firestore.userDocument();
    } catch (e) {
      rethrow;
    }

    yield* userDoc.snapshots().asyncMap<Either<UserFailure, User>>((doc) async {
      final idToken = await _authFacade.idToken()!;
      final user = UserDto.fromFirestore(doc).toDomain(idToken: idToken);
      return right(user);
    }).onErrorReturnWith(
      (error) => left(const UserFailure.unableToLoadData()),
    );
  }

  @override
  Future<Either<UserFailure, Unit>> updateProfilePhoto({
    required File newPhoto,
  }) async {
    _checkAuth();
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
    _checkAuth();
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
    _checkAuth();
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
    _checkAuth();
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

  /// Throws [NotAuthenticatedError] if app-user is not signed in.
  void _checkAuth() {
    if (!_authFacade.isAuthenticated()) {
      throw NotAuthenticatedError();
    }
  }
}
