part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.watchDataStarted() = _WatchDataStarted;
  const factory ProfileEvent.dataReceived(Either<UserFailure, User> failureOrUser) = _DataReceived;
}