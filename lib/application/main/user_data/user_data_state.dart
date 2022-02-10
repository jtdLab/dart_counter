part of 'user_data_bloc.dart';

@freezed
class UserDataState with _$UserDataState {
  const factory UserDataState.loadInProgress() = UserDataLoadInProgress;
  const factory UserDataState.loadSuccess({
    required User user,
    required KtList<FriendRequest> receivedFriendRequests,
    required KtList<FriendRequest> sentFriendRequests,
    required KtList<GameInvitation> receivedGameInvitations,
    required KtList<GameInvitation> sentGameInvitations,
  }) = UserDataLoadSuccess;
  const factory UserDataState.loadFailure() = UserDataLoadFailure;
}
