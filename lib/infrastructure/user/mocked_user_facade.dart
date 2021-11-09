import 'dart:async';
import 'dart:io';

import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dart_counter/main_dev.dart';
import 'package:dartz/dartz.dart';
import 'package:faker/faker.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Environment(Environment.dev)
@LazySingleton(as: IUserService)
class MockedUserFacade implements IUserService {
  final IAuthService _authFacade;

  BehaviorSubject<Either<UserFailure, User>> _userController;

  MockedUserFacade(
    this._authFacade,
  ) : _userController = BehaviorSubject() {
    _authFacade.watchIsAuthenticated().listen((isAuthenticated) async {
      if (isAuthenticated) {
        _userController = BehaviorSubject.seeded(
          hasNetworkConnection
              ? right(User.dummy())
              : left(const UserFailure.failure()), // TODO name better
        );
      } else {
        await _userController.close(); // TODO needed
      }
    });
  }

  @override
  Either<UserFailure, User>? getUser() {
    _checkAuth();
    if (hasNetworkConnection) {
      try {
        return _userController.value;
      } catch (e) {
        return null;
      }
    }

    return left(const UserFailure.failure()); // TODO name better
  }

  @override
  Stream<Either<UserFailure, User>> watchUser() {
    _checkAuth();

    return _userController.stream; // TODO does this emit on subscribe
  }

  @override
  Future<Either<UserFailure, Unit>> updateProfilePhoto({
    required File newPhoto,
  }) async {
    _checkAuth();
    if (hasNetworkConnection) {
      final user = _userController.value.toOption().toNullable()!;
      final newProfile = user.profile.copyWith(
        photoUrl: faker.image.image(width: 200, height: 200),
      );
      _userController.add(
        right(
          user.copyWith(profile: newProfile),
        ),
      );
      return right(unit);
    }

    return left(const UserFailure.failure()); // TODO name better
  }

  @override
  Future<Either<UserFailure, Unit>> deleteProfilePhoto() async {
    _checkAuth();
    if (hasNetworkConnection) {
      final user = _userController.value.toOption().toNullable()!;
      final newProfile = user.profile.copyWith(photoUrl: null);
      _userController.add(
        right(
          user.copyWith(profile: newProfile),
        ),
      );
      return right(unit);
    }

    return left(const UserFailure.failure()); // TODO name better
  }

  @override
  Future<Either<UserFailure, Unit>> updateUsername({
    required Username newUsername,
  }) async {
    _checkAuth();
    if (hasNetworkConnection) {
      if (newUsername.isValid()) {
        if (_authFacade.isAuthenticated()) {
          final user = _userController.value.toOption().toNullable()!;
          final newProfile = user.profile.copyWith(username: newUsername);
          _userController.add(
            right(
              user.copyWith(profile: newProfile),
            ),
          );
          return right(unit);
        }
      }
    }

    return left(const UserFailure.failure()); // TODO name better
  }

  @override
  Future<Either<UserFailure, Unit>> updateEmailAddress({
    required EmailAddress newEmailAddress,
  }) async {
    _checkAuth();
    if (hasNetworkConnection) {
      if (newEmailAddress.isValid()) {
        if (_authFacade.isAuthenticated()) {
          final user = _userController.value.toOption().toNullable()!;
          _userController.add(
            right(
              user.copyWith(emailAddress: newEmailAddress),
            ),
          );
          return right(unit);
        }
      }
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
