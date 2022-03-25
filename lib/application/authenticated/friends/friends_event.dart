// coverage:ignore-file

part of 'friends_bloc.dart';

@freezed
class FriendsEvent with _$FriendsEvent {
  const factory FriendsEvent.started() = _Started;
  const factory FriendsEvent.friendSelected({
    required Friend friend,
  }) = _FriendSelected;
  const factory FriendsEvent.friendRequestAccepted({
    required FriendRequest friendRequest,
  }) = _FriendRequestAccepted;
  const factory FriendsEvent.friendRequestDeclined({
    required FriendRequest friendRequest,
  }) = _FriendRequestDeclined;
}
