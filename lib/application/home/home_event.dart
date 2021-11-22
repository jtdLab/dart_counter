part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.createOnlineGamePressed() = _CreateOnlineGamePressed;
  const factory HomeEvent.createOfflineGamePressed() =
      _CreateOfflineGamePressed;
  const factory HomeEvent.dataReceived({
    required User user,
    required int unreadInvitations,
    required int unreadFriendRequests,
  }) = _DataReceived;
  const factory HomeEvent.gameReceived({
    required AbstractGameSnapshot gameSnapshot,
  }) = _GameReceived;
  const factory HomeEvent.trainingGameReceived({
    required AbstractTrainingGameSnapshot trainingGameSnapshot,
  }) = _TrainingGameReceived;
}
