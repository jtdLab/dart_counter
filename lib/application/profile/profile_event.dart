part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.userReceived({
    required User user,
  }) = UserReceived;
}
