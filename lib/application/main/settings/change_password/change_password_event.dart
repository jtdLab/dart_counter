part of 'change_password_bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.oldPasswordChanged({
    required String newOldPassword,
  }) = _OldPasswordChanged;
  const factory ChangePasswordEvent.newPasswordChanged({
    required String newNewPassword,
  }) = _NewPasswordChanged;
  const factory ChangePasswordEvent.newPasswordAgainChanged({
    required String newNewPasswordAgain,
  }) = _NewPasswordAgainChanged;
  const factory ChangePasswordEvent.confirmPressed() = _ConfirmPressed;
}
