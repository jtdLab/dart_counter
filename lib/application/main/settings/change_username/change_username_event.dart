// coverage:ignore-file

part of 'change_username_bloc.dart';

@freezed
class ChangeUsernameEvent with _$ChangeUsernameEvent {
  const factory ChangeUsernameEvent.newUsernameChanged({
    required String newUsername,
  }) = _UsernameChanged;
  const factory ChangeUsernameEvent.confirmPressed() = _ConfirmPressed;
}
