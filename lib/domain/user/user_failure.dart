// coverage:ignore-file

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failure.freezed.dart';

// TODO remove not needed failure types

/// All failures of the user domain.
@freezed
class UserFailure with _$UserFailure {
  const factory UserFailure.unexpected() = _Unexpected;
  const factory UserFailure.unableToLoadData() = _UnableToLoadData;
  const factory UserFailure.noNetworkAccess() = _NoNetworkAccess;
  const factory UserFailure.insufficientPermission() = _InsufficientPermission;
  const factory UserFailure.invalidUsername() = _InvalidUsername;
  const factory UserFailure.invalidEmail() = _InvalidEmail;
  const factory UserFailure.serverError() = _ServerError;
}
