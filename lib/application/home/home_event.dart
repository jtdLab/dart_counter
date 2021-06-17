part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.watchDataStarted() = WatchDataStarted;
  const factory HomeEvent.dataReceived({
    required KtList<FriendRequest> friendRequests,
    required KtList<GameInvitation> gameInvitations,
    required User user,
  }) = DataReceived;
  const factory HomeEvent.failureReceived() = FailureReceived;
}

