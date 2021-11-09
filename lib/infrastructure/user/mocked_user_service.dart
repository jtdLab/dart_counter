import 'dart:async';
import 'dart:typed_data';

import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:faker/faker.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Environment(Environment.dev)
@LazySingleton(as: IUserService)
class MockedUserService implements IUserService {
  static bool hasNetworkConnection = true;

  final IAuthService _authService;

  StreamSubscription? _authSubscription;

  BehaviorSubject<Either<UserFailure, User>>? _userController;

  MockedUserService(
    this._authService,
  ) : _userController = _createUserController() {
    _authSubscription =
        _authService.watchIsAuthenticated().listen((isAuthenticated) async {
      if (isAuthenticated) {
        if (!_authService.isAuthenticated()) {
          _userController = _createUserController();
        }
      } else {
        await _userController?.close();
        _userController = null;
      }
    });
  }

  @override
  Future<Either<UserFailure, Unit>> deleteProfilePhoto() async {
    _checkAuth();
    if (hasNetworkConnection) {
      final user = _userController!.value.toOption().toNullable()!;
      final newProfile = user.profile.copyWith(photoUrl: null);
      _userController!.add(right(user.copyWith(profile: newProfile)));
      return right(unit);
    }
    return left(const UserFailure.noNetworkAccess());
  }

  @override
  Either<UserFailure, User> getUser() {
    _checkAuth();
    if (hasNetworkConnection) {
      return _userController!.value;
    }

    return left(const UserFailure.noNetworkAccess());
  }

  @override
  Future<Either<UserFailure, Unit>> updateEmailAddress({
    required EmailAddress newEmailAddress,
  }) async {
    _checkAuth();
    if (hasNetworkConnection) {
      if (newEmailAddress.isValid()) {
        final user = getUser().toOption().toNullable()!;
        _userController!.add(
          right(user.copyWith(email: newEmailAddress)),
        );
        return right(unit);
      }
    }

    return left(const UserFailure.noNetworkAccess());
  }

  @override
  Future<Either<UserFailure, Unit>> updateProfilePhoto({
    required Uint8List newPhotoData,
  }) async {
    _checkAuth();
    if (hasNetworkConnection) {
      final user = getUser().toOption().toNullable()!;
      final newProfile = user.profile.copyWith(
        photoUrl: faker.image.image(width: 200, height: 200),
      );
      _userController!.add(right(user.copyWith(profile: newProfile)));
      return right(unit);
    }

    return left(const UserFailure.noNetworkAccess());
  }

  @override
  Future<Either<UserFailure, Unit>> updateUsername({
    required Username newUsername,
  }) async {
    _checkAuth();
    if (hasNetworkConnection) {
      if (newUsername.isValid()) {
        final user = getUser().toOption().toNullable()!;
        final newProfile = user.profile.copyWith(name: newUsername);
        _userController!.add(right(user.copyWith(profile: newProfile)));
        return right(unit);
      }
    }

    return left(const UserFailure.noNetworkAccess());
  }

  @override
  Stream<Either<UserFailure, User>> watchUser() {
    _checkAuth();

    return _userController!.stream;
  }

  /// Throws [NotAuthenticatedError] if app-user is not signed in.
  void _checkAuth() {
    if (!_authService.isAuthenticated()) {
      throw NotAuthenticatedError();
    }
  }

  /// Creates a new user controller seeded with either a [User] or [UserFailure] depending
  /// on available network connection.
  static BehaviorSubject<Either<UserFailure, User>> _createUserController() {
    return BehaviorSubject.seeded(
      hasNetworkConnection
          ? right(User.dummy())
          : left(const UserFailure.noNetworkAccess()),
    );
  }

  @disposeMethod
  @override
  void dispose() {
    _authSubscription?.cancel();
  }
}
