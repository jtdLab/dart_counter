part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loadInProgess() = LoadInProgess;
  const factory HomeState.loadSuccess({
    required KtList<FriendRequest> friendRequests,
    required KtList<GameInvitation> gameInvitation,
    required User user,
  }) = LoadSuccess;
  const factory HomeState.loadFailure() = LoadFailure;
}
