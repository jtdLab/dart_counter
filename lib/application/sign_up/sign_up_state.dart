part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required EmailAddress email,
    required Username username,
    required Password password,
    required Password passwordAgain,
    required bool showErrorMessages,
    required bool isSubmitting,
    AuthFailure? authFailure,
    required bool isSignedUp,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
        email: EmailAddress(''),
        username: Username(''),
        password: Password(''),
        passwordAgain: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        isSignedUp: false,
      );
}
