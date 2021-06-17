part of 'friend_request_bloc.dart';

@freezed
class FriendRequestEvent with _$FriendRequestEvent {
  const factory FriendRequestEvent.watchStarted() = WatchStarted;
  const factory FriendRequestEvent.friendRequestsReceived({
    required KtList<FriendRequest> friendRequests,
  }) = FriendRequestsReceived;
  const factory FriendRequestEvent.failureReceived() = FailureReceived;
}