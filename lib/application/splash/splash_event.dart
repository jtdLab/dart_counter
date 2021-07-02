part of 'splash_bloc.dart';

@freezed
class SplashEvent with _$SplashEvent {
  const factory SplashEvent.watchStarted() = WatchStarted;
  const factory SplashEvent.invitationsReceived(
      {required KtList<GameInvitation> gameInvitations}) = InvitationsReceived;
  const factory SplashEvent.friendRequestsReceived(
      {required KtList<FriendRequest> friendRequests}) = FriendRequestsReceived;
  const factory SplashEvent.userReceived({required User user}) = UserReceived;
   const factory SplashEvent.failureReceived() = FailureReceived;
}
