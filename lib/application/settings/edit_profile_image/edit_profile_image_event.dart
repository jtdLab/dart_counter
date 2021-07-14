part of 'edit_profile_image_bloc.dart';

@freezed
class EditProfileImageEvent with _$EditProfileImageEvent {
  const factory EditProfileImageEvent.deletePressed() = DeletePressed;
  const factory EditProfileImageEvent.takePressed() = TakePressed;
  const factory EditProfileImageEvent.choosePressed() = ChoosePressed;
}