part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    required EmailAddress email,
    required bool showErrorMessages,
    required bool isSubmitting,
    required bool successful,
    AuthFailure? authFailure,
  }) = _ForgotPasswordState;

  factory ForgotPasswordState.initial() => ForgotPasswordState(
        email: EmailAddress.empty(),
        showErrorMessages: false,
        isSubmitting: false,
        successful: false,
      );
}
