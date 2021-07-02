part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.watchStarted() = WatchStarted;
  const factory ProfileEvent.userReceived({
    required User user,
  }) = UserReceived;
}
