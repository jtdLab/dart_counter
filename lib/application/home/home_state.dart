part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({
    required User user,
    GameSnapshot? game,
    required int unreadInvitations,
    required int unreadFriendRequests,
  }) = HomeInitial;

  /**
   * const factory HomeState.createGameInProgress() = HomeCreateGameInProgress;

  const factory HomeState.createGameSuccess() = HomeCreateGameSuccess;

  const factory HomeState.createGameFailure() = HomeCreateGameFailure;
   */
}
