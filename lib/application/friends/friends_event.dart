part of 'friends_bloc.dart';

@freezed
class FriendsEvent with _$FriendsEvent {
    const factory FriendsEvent.watchStarted() = WatchStarted;
  const factory FriendsEvent.friendRequestsReceived({
    required KtList<FriendRequest> friendRequests,
  }) = FriendRequestsReceived;
}