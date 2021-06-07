part of 'loading_bloc.dart';

@freezed
class LoadingEvent with _$LoadingEvent {
  const factory LoadingEvent.startLoading() = _StartLoading;
  const factory LoadingEvent.stopLoading() = _StopLoading;
}