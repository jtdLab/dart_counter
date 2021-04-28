part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.usernameChanged(String usernameString) = _UsernameChanged;
  const factory SignInFormEvent.passwordChanged(String passwordString) = _PasswordChanged;
  const factory SignInFormEvent.signInPressed() = _SignInPressed;
  const factory SignInFormEvent.signInWithFacebookPressed() = _SignInWithFacebookPressed;
  const factory SignInFormEvent.signInWithGooglePressed() = _SignInWithGooglePressed;
  const factory SignInFormEvent.signInWithInstagramPressed() = _SignInWithInstagramPressed;
}