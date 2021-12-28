part of 'friends_bloc.dart';

@freezed
class FriendsEvent with _$FriendsEvent {
  const factory FriendsEvent.started() = Started;
  const factory FriendsEvent.friendSelected({
    required Friend friend,
  }) = FriendSelected;
  const factory FriendsEvent.friendRequestAccepted({
    required FriendRequest friendRequest,
  }) = FriendRequestAccepted;
  const factory FriendsEvent.friendRequestDeclined({
    required FriendRequest friendRequest,
  }) = FriendRequestDeclined;
}
