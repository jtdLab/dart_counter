part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loadSuccess({
    required KtList<FriendRequest> friendRequests,
    required KtList<GameInvitation> gameInvitations,
    required User user,
  }) = LoadSuccess;
  const factory HomeState.loadFailure() = LoadFailure;
  const factory HomeState.initial() = Initial;
}

