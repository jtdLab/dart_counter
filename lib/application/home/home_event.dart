part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.createOnlineGamePressed() = CreateOnlineGamePressed;
  const factory HomeEvent.createOfflineGamePressed() = CreateOfflineGamePressed;
  const factory HomeEvent.dataReceived({
    required User user,
    required int unreadInvitations,
    required int unreadFriendRequests,
  }) = DataReceived;
  const factory HomeEvent.gameReceived({
    required GameSnapshot gameSnapshot,
  }) = GameReceived;
}
