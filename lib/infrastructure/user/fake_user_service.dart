import 'dart:async';
import 'dart:typed_data';

import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:faker/faker.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Environment(Environment.dev)
@LazySingleton(as: IUserService)
class FakeUserService with Disposable implements IUserService {
  static bool hasNetworkConnection = true;

  final IAuthService _authService;

  StreamSubscription? _authSubscription;

  final BehaviorSubject<User?> _userController;

  FakeUserService(
    this._authService,
  ) : _userController = BehaviorSubject.seeded(
          _authService.isAuthenticated() ? User.dummy() : null,
        ) {
    _authSubscription =
        _authService.watchIsAuthenticated().listen((isAuthenticated) {
      if (isAuthenticated) {
        _userController.add(User.dummy());
      } else {
        _userController.add(null);
      }
    });
  }

  @override
  Future<Either<UserFailure, Unit>> deleteProfilePhoto() async {
    final userOrFailure = await getUser();

    return userOrFailure.fold(
      (failure) => left(failure),
      (user) {
        final newProfile = user.profile.copyWith(photoUrl: null);
        _userController.add(user.copyWith(profile: newProfile));
        return right(unit);
      },
    );
  }

  @override
  Future<Either<UserFailure, User>> getUser() async {
    _checkAuth();

    if (hasNetworkConnection) {
      final user = _userController.valueOrNull;

      if (user != null) {
        return right(user);
      }
    }

    return left(const UserFailure.unexpected());
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
      (user) {
        final newProfile = user.profile.copyWith(
          photoUrl: faker.image.image(width: 200, height: 200),
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

    return _userController
        .map<Either<UserFailure, User>>(
          (userOption) =>
              userOption != null ? right(userOption) : throw Error(),
        )
        .onErrorReturnWith((error, _) => left(const UserFailure.unexpected()));
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
  }
}
