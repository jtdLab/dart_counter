part of 'change_password_bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.oldPasswordChanged({
    required String oldPasswordString,
  }) = OldPasswordChanged;
  const factory ChangePasswordEvent.newPasswordChanged({
    required String newPasswordString,
  }) = NewPasswordChanged;
  const factory ChangePasswordEvent.newPasswordAgainChanged({
    required String newPasswordAgainString,
  }) = NewPasswordAgainChanged;
  const factory ChangePasswordEvent.confirmPressed() = ConfirmPressed;
}
