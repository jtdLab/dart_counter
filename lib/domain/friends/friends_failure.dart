import 'package:freezed_annotation/freezed_annotation.dart';

part 'friends_failure.freezed.dart';

@freezed
class FriendFailure with _$FriendFailure {
  const factory FriendFailure.unexpected() = _Unexpected;
  const factory FriendFailure.insufficientPermission() = _InsufficientPermission;
  const factory FriendFailure.unableToUpdate() = _UnableToUpdate;
}