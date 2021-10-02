part of 'data_watcher_bloc.dart';

@freezed
class DataWatcherState with _$DataWatcherState {
  const factory DataWatcherState.loadInProgress({
    User? user,
    KtList<GameInvitation>? receivedGameInvitations,
    KtList<GameInvitation>? sentGameInvitations,
    KtList<Friend>? friends,
    KtList<FriendRequest>? receivedFriendRequests,
    KtList<FriendRequest>? sentFriendRequests,
  }) = DataWatcherLoadInProgress;
  const factory DataWatcherState.loadSuccess({
    required User user,
    required KtList<GameInvitation> receivedGameInvitations,
    required KtList<GameInvitation> sentGameInvitations,
    required KtList<Friend> friends,
    required KtList<FriendRequest> receivedFriendRequests,
    required KtList<FriendRequest> sentFriendRequests,
  }) = DataWatcherLoadSuccess;
  const factory DataWatcherState.loadFailure() = DataWatcherLoadFailure;
}
