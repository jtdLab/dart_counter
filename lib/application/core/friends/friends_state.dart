part of 'friends_bloc.dart';

@freezed
class FriendsState with _$FriendsState {
  const factory FriendsState.loadInProgress({
    KtList<FriendRequest>? receivedFriendRequests,
    KtList<FriendRequest>? sentFriendRequests,
  }) = FriendsLoadInProgress;
  const factory FriendsState.loadSuccess({
    required KtList<FriendRequest> receivedFriendRequests,
    required KtList<FriendRequest> sentFriendRequests,
    required int unreadFriendRequests,
  }) = FriendsLoadSuccess;
  const factory FriendsState.loadFailure({
    required FriendFailure failure,
  }) = FriendsLoadFailure;
}
