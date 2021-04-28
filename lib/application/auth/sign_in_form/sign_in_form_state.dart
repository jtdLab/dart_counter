part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required Username username,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    Either<AuthFailure, Unit>? authFailureOrSuccess,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
    username: Username(''),
    password: Password(''),
    showErrorMessages: false,
    isSubmitting: false,
  );
}
