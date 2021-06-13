part of 'edit_profile_bloc.dart';

@freezed
class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.deletePressed() = DeletePressed;
  const factory EditProfileEvent.takePressed() = TakePressed;
  const factory EditProfileEvent.choosePressed() = ChoosePressed;
}