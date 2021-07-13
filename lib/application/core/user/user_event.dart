part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.watchStarted() = WatchStarted;
  const factory UserEvent.userReceived({
    required User user,
  }) = UserReceived;
  const factory UserEvent.failureReceived({
    required UserFailure failure,
  }) = FailureReceived;
}