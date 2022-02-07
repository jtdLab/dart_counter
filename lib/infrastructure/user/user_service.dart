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
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:image/image.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:social_client/social_client.dart';

@Environment(Environment.test)
@Environment(Environment.prod)
@LazySingleton(as: IUserService)
class UserService with Disposable implements IUserService {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final IAuthService _authService;
  final SocialClient _socialClient;

  StreamSubscription? _authSubscription;

  BehaviorSubject<Either<UserFailure, User>>? _userController;

  UserService(
    this._firestore,
    this._storage,
    this._authService,
    this._socialClient,
  ) : _userController = BehaviorSubject() {
    _authSubscription =
        _authService.watchIsAuthenticated().listen((isAuthenticated) async {
      if (isAuthenticated) {
        if (!_authService.isAuthenticated()) {
          _userController = BehaviorSubject();
          _userController!.addStream(watchUser());
        }
      } else {
        await _userController!.close();
        _userController = null;
      }
    });
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
  Either<UserFailure, User> getUser() {
    _checkAuth();
    final failureOrUser = _userController!.value;

    return failureOrUser;
  }

  @override
  Future<Either<UserFailure, Unit>> updateEmailAddress({
    required EmailAddress newEmailAddress,
  }) async {
    _checkAuth();
    if (!newEmailAddress.isValid()) {
      return left(const UserFailure.invalidEmail());
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
  Future<Either<UserFailure, Unit>> updateProfilePhoto({
    required Uint8List newPhotoData,
  }) async {
    _checkAuth();
    final decodedImage = decodeImage(newPhotoData);
    if (decodedImage == null) {
      print('couldn not decode image.');
      return left(const UserFailure.failure()); // TODO name better
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
  Future<Either<UserFailure, Unit>> updateUsername({
    required Username newUsername,
  }) async {
    _checkAuth();
    if (!newUsername.isValid()) {
      return left(const UserFailure.invalidUsername());
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
  Stream<Either<UserFailure, User>> watchUser() async* {
    _checkAuth();
    final DocumentReference<Object?> userDoc;
    try {
      userDoc = _firestore.userDocument();
    } catch (e) {
      rethrow;
    }

    final idToken = (await _authService.idToken())!;

    yield* userDoc.snapshots().map<Either<UserFailure, User>>(
      (doc) {
        final json = (doc.data() ?? {}) as Map<String, dynamic>;

        json.addAll({
          'id': doc.id,
        });

        return right(UserDto.fromJson(json).toDomain());
      },
    ).onErrorReturnWith(
      (error, stack) => left(
        const UserFailure.failure(), // TODO more specific
      ),
    );
  }

  // TODO this should not be impl here
  /// Throws [NotAuthenticatedError] if app-user is not signed in.
  void _checkAuth() {
    if (!_authService.isAuthenticated()) {
      throw NotAuthenticatedError();
    }
  }

  @override
  void onDispose() {
    _authSubscription?.cancel();
    _userController?.close();
  }
}
