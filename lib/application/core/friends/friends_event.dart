part of 'friends_bloc.dart';

@freezed
class FriendsEvent with _$FriendsEvent {
  const factory FriendsEvent.watchStarted() = WatchStarted;
  const factory FriendsEvent.receivedFriendRequestsReceived({
    required KtList<FriendRequest> friendRequests,
  }) = ReceivedFriendRequestsReceived;
  const factory FriendsEvent.sentFriendRequestsReceived({
    required KtList<FriendRequest> friendRequests,
  }) = SentFriendRequestsReceived;
  const factory FriendsEvent.failureReceived({
    required FriendFailure failure,
  }) = FailureReceived;
}
