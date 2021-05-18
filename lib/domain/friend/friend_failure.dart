import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_failure.freezed.dart';

@freezed
class FriendFailure with _$FriendFailure {
  const factory FriendFailure.unexpected() = _Unexpected;
  const factory FriendFailure.insufficientPermission() = _InsufficientPermission;
  const factory FriendFailure.unableToRead() = _UnableToRead;
}