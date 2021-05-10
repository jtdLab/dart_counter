part of 'edit_profile_bloc.dart';

@freezed
class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.delete() = _Delete;
  const factory EditProfileEvent.take() = _Take;
  const factory EditProfileEvent.choose() = _Choose;
}
