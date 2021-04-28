part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    required EmailAddress email,
    required Username username,
    required Password password,
    required Password passwordAgain,
    required bool showErrorMessages,
    required bool isSubmitting,
    Either<AuthFailure, Unit>? authFailureOrSuccess,
  }) = _SignUpFormState;

  factory SignUpFormState.initial() => SignUpFormState(
        email: EmailAddress(''),
        username: Username(''),
        password: Password(''),
        passwordAgain: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
      );
}
