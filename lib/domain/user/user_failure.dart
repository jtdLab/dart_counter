import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failure.freezed.dart';

@freezed
class UserFailure with _$UserFailure {
  const factory UserFailure.failure() = _Failure;
  const factory UserFailure.insufficientPermission() = _InsufficientPermission;
  const factory UserFailure.invalidUsername() = _InvalidUsername;
}
