part of 'change_username_bloc.dart';

@freezed
class ChangeUsernameEvent with _$ChangeUsernameEvent {
  const factory ChangeUsernameEvent.newUsernameChanged({
    required String newUsernameString,
  }) = NewUsernameChanged;
  const factory ChangeUsernameEvent.confirmPressed() = ConfirmPressed;
}
