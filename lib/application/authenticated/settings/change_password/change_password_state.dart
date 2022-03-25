// coverage:ignore-file

part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState.initial({
    required Password oldPassword,
    required Password newPassword,
    required Password newPasswordAgain,
    required bool showErrorMessages,
  }) = ChangePasswordInitial;
  const factory ChangePasswordState.submitInProgress() =
      ChangePasswordSubmitInProgress;
  const factory ChangePasswordState.submitSuccess() =
      ChangePasswordSubmitSuccess;
  const factory ChangePasswordState.submitFailure({
    required AuthFailure authFailure,
  }) = ChangePasswordSubmitFailure;
}
