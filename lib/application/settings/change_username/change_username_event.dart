part of 'change_username_bloc.dart';

@freezed
class ChangeUsernameEvent with _$ChangeUsernameEvent {
  const factory ChangeUsernameEvent.newUsernameChanged({
    required String newUsername,
  }) = UsernameChanged;
  const factory ChangeUsernameEvent.confirmPressed() = ConfirmPressed;
}
