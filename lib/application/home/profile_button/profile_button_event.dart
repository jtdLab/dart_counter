part of 'profile_button_bloc.dart';

@freezed
class ProfileButtonEvent with _$ProfileButtonEvent {
  const factory ProfileButtonEvent.watchDataStarted() = _WatchDataStarted;
  const factory ProfileButtonEvent.dataReceived(Either<UserFailure, User> failureOrUser) = _DataReceived;
}