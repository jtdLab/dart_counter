part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required EmailAddress email,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    AuthFailure? authFailure,
    required bool isSignedIn,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        email: EmailAddress.empty(),
        password: Password.empty(),
        showErrorMessages: false,
        isSubmitting: false,
        isSignedIn: false,
      );
}
