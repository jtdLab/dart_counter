part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required User user,
    GameSnapshot? game,
    required int unreadInvitations,
    required int unreadFriendRequests,
  }) = _HomeState;
}
