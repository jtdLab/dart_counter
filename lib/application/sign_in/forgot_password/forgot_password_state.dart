part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState.initial({
    required EmailAddress email,
    required bool isSubmitting,
  }) = InitialState;
  const factory ForgotPasswordState.success() = SuccessState;
  const factory ForgotPasswordState.failure() = FailureState;
}
