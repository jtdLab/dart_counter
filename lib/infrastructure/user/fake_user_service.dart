import 'dart:async';
import 'dart:typed_data';

import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dart_counter/infrastructure/user/cache_keys.dart';
import 'package:dartz/dartz.dart';
import 'package:faker/faker.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Environment(Environment.dev)
@LazySingleton(as: IUserService)
class FakeUserService with Disposable implements IUserService {
  static bool hasNetworkConnection = true;

  final IAuthService _authService;
  final DefaultCacheManager _cache;

  StreamSubscription? _authSubscription;
  StreamSubscription? _userSubscription;

  final BehaviorSubject<User> _userController;

  FakeUserService(
    this._authService,
    this._cache,
  ) : _userController = BehaviorSubject.seeded(User.dummy()) {
    _authSubscription =
        _authService.watchIsAuthenticated().listen((isAuthenticated) {
      if (isAuthenticated && !_userController.hasValue) {
        _userController.add(User.dummy());
      }
    });

    _userSubscription = _userController.listen((user) async {
      final photo = user.profile.photo;

      if (photo == null) {
        await _cache.removeFile(profileImageKey);
      } else {
        final photoUrl = user.profile.photoUrl ??
            faker.image.image(width: 200, height: 200); // TODO remove later;
        await _cache.putFile(
          photoUrl,
          photo,
          key: profileImageKey,
        );
      }
    });
  }

  @override
  Future<Either<UserFailure, Unit>> deleteProfilePhoto() async {
    final userOrFailure = await getUser();

    return userOrFailure.fold(
      (failure) => left(failure),
      (user) {
        final newProfile = user.profile.copyWith(
          photoUrl: null, // TODO remove later
          photo: null,
        );
        _userController.add(user.copyWith(profile: newProfile));
        return right(unit);
      },
    );
  }

  @override
  Future<Either<UserFailure, User>> getUser() async {
    _checkAuth();

    if (hasNetworkConnection) {
      final user = _userController.value;

      return right(user);
    }

    return left(const UserFailure.noNetworkAccess());
  }

  @override
  Future<Either<UserFailure, Unit>> updateEmailAddress({
    required EmailAddress newEmailAddress,
  }) async {
    final userOrFailure = await getUser();

    return userOrFailure.fold(
      (failure) => left(failure),
      (user) {
        if (newEmailAddress.isValid()) {
          _userController.add(user.copyWith(email: newEmailAddress));
          return right(unit);
        }

        return left(const UserFailure.invalidEmail());
      },
    );
  }

  @override
  Future<Either<UserFailure, Unit>> updateProfilePhoto({
    required Uint8List newPhotoData,
  }) async {
    final userOrFailure = await getUser();

    return userOrFailure.fold(
      (failure) => left(failure),
      (user) async {
        final newPhotoUrl =
            faker.image.image(width: 200, height: 200); // TODO remove later
        final newProfile = user.profile.copyWith(
          photoUrl: newPhotoUrl, // TODO remove later
          photo: newPhotoData,
        );
        _userController.add(user.copyWith(profile: newProfile));
        return right(unit);
      },
    );
  }

  @override
  Future<Either<UserFailure, Unit>> updateUsername({
    required Username newUsername,
  }) async {
    final userOrFailure = await getUser();

    return userOrFailure.fold(
      (failure) => left(failure),
      (user) {
        if (newUsername.isValid()) {
          final newProfile = user.profile.copyWith(name: newUsername);
          _userController.add(user.copyWith(profile: newProfile));
          return right(unit);
        }

        return left(const UserFailure.invalidUsername());
      },
    );
  }

  @override
  Stream<Either<UserFailure, User>> watchUser() {
    _checkAuth();

    if (hasNetworkConnection) {
      return _userController.stream.map((user) => right(user));
    } else {
      return Stream.value(left(const UserFailure.noNetworkAccess()));
    }
  }

  /// Throws [NotAuthenticatedError] if app-user is not signed in.
  void _checkAuth() {
    if (!_authService.isAuthenticated()) {
      throw NotAuthenticatedError();
    }
  }

  @override
  void onDispose() {
    _authSubscription?.cancel();
    _userSubscription?.cancel();
  }
}
