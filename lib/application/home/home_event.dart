part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.watchDataStarted() = _WatchDataStarted;
  const factory HomeEvent.dataReceived(List<Object>? data) = _DataReceived;
}
