import 'dart:async';
import 'dart:io';

import 'package:dart_counter/domain/auth/i_auth_facade.dart';
import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dart_counter/main_dev.dart';
import 'package:dartz/dartz.dart';
import 'package:faker/faker.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Environment(Environment.dev)
@LazySingleton(as: IUserFacade)
class MockedUserFacade implements IUserFacade {
  final IAuthFacade _authFacade;

  final BehaviorSubject<Either<UserFailure, User>> _userController;

  User _user = User.dummy();

  MockedUserFacade(
    this._authFacade,
  ) : _userController = BehaviorSubject() {
    _authFacade.watchIsAuthenticated().listen((isAuthenticated) {
      _userController.add(right(_user));
    });
  }

  @override
  Stream<Either<UserFailure, User>> watchUser() {
    if (_authFacade.isAuthenticated()) {
      return _userController.stream;
    }

    throw NotAuthenticatedError();
  }

  @override
  Future<Either<UserFailure, User>> fetchUser() async {
    if (_authFacade.isAuthenticated()) {
      if (hasNetworkConnection) {
        if (_authFacade.isAuthenticated()) {
          return right(_user);
        } else {
          throw NotAuthenticatedError();
        }
      }

      return left(const UserFailure.failure()); // TODO name better
    }

    throw NotAuthenticatedError();
  }

  @override
  Future<Either<UserFailure, Unit>> updateProfilePhoto({
    required File newPhoto,
  }) async {
    if (_authFacade.isAuthenticated()) {
      if (hasNetworkConnection) {
        final newProfile = _user.profile.copyWith(
          photoUrl: faker.image.image(width: 200, height: 200),
        );
        _user = _user.copyWith(profile: newProfile);
        _userController.add(right(_user));
        return right(unit);
      }

      return left(const UserFailure.failure()); // TODO name better
    }

    throw NotAuthenticatedError();
  }

  @override
  Future<Either<UserFailure, Unit>> deleteProfilePhoto() async {
    if (_authFacade.isAuthenticated()) {
      if (hasNetworkConnection) {
        final newProfile = _user.profile.copyWith(photoUrl: null);
        _user = _user.copyWith(profile: newProfile);
        _userController.add(right(_user));
        return right(unit);
      }

      return left(const UserFailure.failure()); // TODO name better
    }

    throw NotAuthenticatedError();
  }

  @override
  Future<Either<UserFailure, Unit>> updateUsername({
    required Username newUsername,
  }) async {
    if (_authFacade.isAuthenticated()) {
      if (hasNetworkConnection) {
        if (newUsername.isValid()) {
          if (_authFacade.isAuthenticated()) {
            final newProfile = _user.profile.copyWith(username: newUsername);
            _user = _user.copyWith(profile: newProfile);
            _userController.add(right(_user));
            return right(unit);
          }
        }
      }

      return left(const UserFailure.failure()); // TODO name better
    }

    throw NotAuthenticatedError();
  }

  @override
  Future<Either<UserFailure, Unit>> updateEmailAddress({
    required EmailAddress newEmailAddress,
  }) async {
    if (_authFacade.isAuthenticated()) {
      if (hasNetworkConnection) {
        if (newEmailAddress.isValid()) {
          if (_authFacade.isAuthenticated()) {
            _user = _user.copyWith(emailAddress: newEmailAddress);
            _userController.add(right(_user));
            return right(unit);
          }
        }
      }

      return left(const UserFailure.failure()); // TODO name better
    }

    throw NotAuthenticatedError();
  }

  @override
  Future<Either<UserFailure, Unit>> updatePassword({
    required Password oldPassword,
    required Password newPassword,
  }) async {
    if (_authFacade.isAuthenticated()) {
      if (hasNetworkConnection) {
        if (oldPassword.isValid() && newPassword.isValid()) {
          if (oldPassword.getOrCrash() == newPassword.getOrCrash()) {
            return right(unit);
          }
        }
      }

      return left(const UserFailure.failure()); // TODO name better
    }

    throw NotAuthenticatedError();
  }
}
