part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState.initial({
    required EmailAddress email,
    required bool showErrorMessages,
  }) = ForgotPasswordInitial;
  const factory ForgotPasswordState.submitInProgress() =
      ForgotPasswordSubmitInProgress;
  const factory ForgotPasswordState.submitSuccess() =
      ForgotPasswordSubmitSuccess;
  const factory ForgotPasswordState.submitFailure({
    required AuthFailure authFailure,
  }) = ForgotPasswordSubmitFailure;
}
