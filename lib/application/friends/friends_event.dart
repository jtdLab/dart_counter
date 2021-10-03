part of 'friends_bloc.dart';

@freezed
class FriendsEvent with _$FriendsEvent {
  const factory FriendsEvent.friendSelected({
    required Friend friend,
  }) = FriendsFriendSelected;
  const factory FriendsEvent.friendRequestAccepted({
    required FriendRequest friendRequest,
  }) = FriendsFriendRequestAccepted;
  const factory FriendsEvent.friendRequestDeclined({
    required FriendRequest friendRequest,
  }) = FriendsFriendRequestDeclined;
  const factory FriendsEvent.dataReceived({
    required KtList<Friend> friends,
    required KtList<FriendRequest> receivedFriendRequests,
    required KtList<FriendRequest> sentFriendRequests,
  }) = FriendsDataReceived;
}
