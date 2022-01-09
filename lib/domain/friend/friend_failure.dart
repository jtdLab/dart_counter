import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_failure.freezed.dart';

// TODO remove not needed failure types

/// All failures of the friend domain.
@freezed
class FriendFailure with _$FriendFailure {
  const factory FriendFailure.unexpected() = _Unexpected;
  const factory FriendFailure.noNetworkAccess() = _NoNetworkAccess;
  const factory FriendFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory FriendFailure.unableToRead() = _UnableToRead;
}
