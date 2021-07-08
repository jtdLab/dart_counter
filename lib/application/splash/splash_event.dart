part of 'splash_bloc.dart';

@freezed
class SplashEvent with _$SplashEvent {
  const factory SplashEvent.watchStarted() = WatchStarted;
  const factory SplashEvent.invitationsReceived() = InvitationsReceived;
  const factory SplashEvent.friendRequestsReceived() = FriendRequestsReceived;
  const factory SplashEvent.userReceived() = UserReceived;
  const factory SplashEvent.failureReceived() = FailureReceived;
}
