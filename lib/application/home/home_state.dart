part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required int unreadReceivedInvitations,
    required int unreadFriendRequests,
    required User user,
    Game? game,
  }) = _HomeState;
}
