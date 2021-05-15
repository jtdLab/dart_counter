part of 'edit_profile_bloc.dart';

@freezed
class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.deletePressed() = _DeletePressed;
  const factory EditProfileEvent.takePressed() = _TakePressed;
  const factory EditProfileEvent.choosePressed() = _ChoosePressed;
}