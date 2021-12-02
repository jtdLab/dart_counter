part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.watchDataStarted() = _WatchDataStarted;
  const factory HomeEvent.createOnlineGamePressed() = _CreateOnlineGamePressed;
  const factory HomeEvent.createOfflineGamePressed() =
      _CreateOfflineGamePressed;
      const factory HomeEvent.createTrainingPressed() =
      _CreateTrainingPressed;
}
