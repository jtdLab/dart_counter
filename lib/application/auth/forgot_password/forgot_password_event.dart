part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.emailChanged({
    required String newEmail,
  }) = _EmailChanged;
  const factory ForgotPasswordEvent.confirmPressed() = _ConfirmPressed;
}
