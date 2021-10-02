part of 'data_watcher_bloc.dart';

@freezed
class DataWatcherEvent with _$DataWatcherEvent {
  const factory DataWatcherEvent.watchDataStarted({
    required UniqueId appUserId,
  }) = WatchDataStarted;

  const factory DataWatcherEvent.userReceived({
    required User user,
  }) = UserReceived;

  const factory DataWatcherEvent.receivedGameInvationsReceived({
    required KtList<GameInvitation> receivedGameInvitations,
  }) = ReceivedGameInvationsReceived;

  const factory DataWatcherEvent.sentGameInvationsReceived({
    required KtList<GameInvitation> sentGameInvitations,
  }) = SentGameInvationsReceived;

  const factory DataWatcherEvent.friendsReceived({
    required KtList<Friend> friends,
  }) = FriendsReceived;

  const factory DataWatcherEvent.receivedFriendRequestsReceived({
    required KtList<FriendRequest> receivedFriendRequests,
  }) = ReceivedFriendRequestsReceived;

  const factory DataWatcherEvent.sentFriendRequestsReceived({
    required KtList<FriendRequest> sentFriendRequests,
  }) = SentFriendRequestsReceived;

  const factory DataWatcherEvent.failureReceived() = FailureReceived;
}
