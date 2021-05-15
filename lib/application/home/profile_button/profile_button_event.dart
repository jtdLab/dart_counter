part of 'profile_button_bloc.dart';

@freezed
class ProfileButtonEvent with _$ProfileButtonEvent {
  const factory ProfileButtonEvent.loadDataRequested() = _LoadDataRequested;
}