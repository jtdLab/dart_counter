part of 'loading_bloc.dart';

@freezed
class LoadingEvent with _$LoadingEvent {
  const factory LoadingEvent.startLoading() = StartLoading;
  const factory LoadingEvent.stopLoading() = StopLoading;
}