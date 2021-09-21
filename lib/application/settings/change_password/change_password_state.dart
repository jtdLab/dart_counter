part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    required Password oldPassword,
    required Password newPassword,
    required Password newPasswordAgain,
    required bool showErrorMessages,
    required bool isSubmitting,
    required bool successful,
    UserFailure? userFailure,
  }) = _ChangePasswordState;

  factory ChangePasswordState.initial() => ChangePasswordState(
        oldPassword: Password.empty(),
        newPassword: Password.empty(),
        newPasswordAgain: Password.empty(),
        showErrorMessages: false,
        isSubmitting: false,
        successful: false,
      );
}
