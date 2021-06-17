part of 'friend_request_bloc.dart';

@freezed
class FriendRequestState with _$FriendRequestState {
  const factory FriendRequestState.loadInProgress() = LoadInProgress;
  const factory FriendRequestState.loadSuccess({
    required KtList<FriendRequest> friendRequests,
  }) = LoadSuccess;
  const factory FriendRequestState.loadFailure() = LoadFailure;
}
