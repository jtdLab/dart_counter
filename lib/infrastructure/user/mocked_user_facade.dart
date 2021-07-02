import 'dart:async';
import 'dart:io';

import 'package:dart_counter/domain/core/value_objects.dart';

import 'package:dart_counter/domain/user/i_user_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Environment(Environment.dev)
@LazySingleton(as: IUserFacade)
class MockedUserFacade implements IUserFacade {
  final BehaviorSubject<Either<UserFailure, User>> _userController =
      BehaviorSubject();

  bool fail = false; // toggle to simulate working / notworking endpoint

  User? _currentUser = User.dummy();

  MockedUserFacade() {
    _userController.add(
      !fail && _currentUser != null
          ? right(_currentUser!)
          : left(const UserFailure.failure()),
    );
  }

  @override
  Future<Either<UserFailure, Unit>> deletePhoto() {
    if (fail) {
      return Future.value(left(const UserFailure.failure()));
    } else {
      if (_currentUser != null) {
        _currentUser = _currentUser!.copyWith(
          profile: _currentUser!.profile.copyWith(
            photoUrl: null,
          ),
        );

        return Future.value(right(unit));
      }
      return Future.value(left(const UserFailure.failure()));
    }
  }

  @override
  Future<Either<UserFailure, User>> readCurrentUser() {
    if (fail) {
      return Future.value(left(const UserFailure.failure()));
    } else {
      if (_currentUser != null) {
        return Future.value(right(_currentUser!));
      } else {
        return Future.value(left(const UserFailure.failure()));
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> updatePhoto(File rawData) {
    if (fail) {
      return Future.value(left(const UserFailure.failure()));
    } else {
      throw UnimplementedError(); // TODO implement
    }
  }

  @override
  Future<Either<UserFailure, Unit>> updateUsername(
      {required Username newUsername}) {
    if (fail) {
      return Future.value(left(const UserFailure.failure()));
    } else {
      if (_currentUser != null && newUsername.isValid()) {
        _currentUser = _currentUser!.copyWith(
          profile: _currentUser!.profile.copyWith(
            username: newUsername,
          ),
        );
        return Future.value(right(unit));
      }
      return Future.value(left(const UserFailure.failure()));
    }
  }

  @override
  ValueStream<Either<UserFailure, User>> watchCurrentUser() {
    return _userController.stream;
  }
}
