part of 'edit_profile_image_bloc.dart';

@freezed
class EditProfileImageEvent with _$EditProfileImageEvent {
  const factory EditProfileImageEvent.deletePressed() = _DeletePressed;
  const factory EditProfileImageEvent.takePressed() = _TakePressed;
  const factory EditProfileImageEvent.choosePressed() = _ChoosePressed;
}