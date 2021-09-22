part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loadInProgress({
    User? user,
    int? unreadInvitations,
    int? unreadFriendRequests,
  }) = HomeLoadInProgress;

  const factory HomeState.loadSuccess({
    required User user,
    GameSnapshot? game,
    required int unreadInvitations,
    required int unreadFriendRequests,
  }) = HomeLoadSuccess;

  /**
   * const factory HomeState.createGameInProgress() = HomeCreateGameInProgress;

  const factory HomeState.createGameSuccess() = HomeCreateGameSuccess;

  const factory HomeState.createGameFailure() = HomeCreateGameFailure;
   */
}
