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

  MockedUserFacade(
    this._authFacade,
  ) : _userController = BehaviorSubject() {
    _authFacade.watchIsAuthenticated().listen((isAuthenticated) {
      _userController.add(right(User.dummy()));
    });
  }

  @override
  Either<UserFailure, User> getUser() {
    if (_authFacade.isAuthenticated()) {
      if (hasNetworkConnection) {
        return _userController.value!;
      }

      return left(const UserFailure.failure()); // TODO name better
    }

    throw NotAuthenticatedError();
  }

  @override
  Stream<Either<UserFailure, User>> watchUser() {
    if (_authFacade.isAuthenticated()) {
      return _userController.stream; // TODO does this emit on subscribe
    }

    throw NotAuthenticatedError();
  }

  @override
  Future<Either<UserFailure, Unit>> updateProfilePhoto({
    required File newPhoto,
  }) async {
    if (_authFacade.isAuthenticated()) {
      if (hasNetworkConnection) {
        final user = _userController.value!.toOption().toNullable()!;
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

    throw NotAuthenticatedError();
  }

  @override
  Future<Either<UserFailure, Unit>> deleteProfilePhoto() async {
    if (_authFacade.isAuthenticated()) {
      if (hasNetworkConnection) {
        final user = _userController.value!.toOption().toNullable()!;
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
            final user = _userController.value!.toOption().toNullable()!;
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
            final user = _userController.value!.toOption().toNullable()!;
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

    throw NotAuthenticatedError();
  }
}
