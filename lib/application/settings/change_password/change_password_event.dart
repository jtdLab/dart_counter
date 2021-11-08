part of 'change_password_bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.oldPasswordChanged({
    required String newOldPassword,
  }) = OldPasswordChanged;
  const factory ChangePasswordEvent.newPasswordChanged({
    required String newNewPassword,
  }) = NewPasswordChanged;
  const factory ChangePasswordEvent.newPasswordAgainChanged({
    required String newNewPasswordAgain,
  }) = NewPasswordAgainChanged;
  const factory ChangePasswordEvent.confirmPressed() = ConfirmPressed;
}
