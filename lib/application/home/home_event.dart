part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.watchStarted() = WatchStarted;
  const factory HomeEvent.unreadInvitationsReceived(
      {required int unreadInvitations}) = UnreadInvitationsReceived;
  const factory HomeEvent.unreadFriendRequestsReceived(
      {required int unreadFriendRequests}) = UnreadFriendRequestsReceived;
  const factory HomeEvent.userReceived({required User user}) = UserReceived;
  const factory HomeEvent.gameCreated() = GameCreated;
  const factory HomeEvent.goToInvitationsPressed() = GoToInvitationsPressed;
   const factory HomeEvent.goToFriendsPressed() = GoToFriendsPressed;
  const factory HomeEvent.createOnlineGamePressed() = CreateOnlineGamePressed;
  const factory HomeEvent.createOfflineGamePressed() = CreateOfflineGamePressed;
}