part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.emailChanged(String emailString) = _EmailChanged;
  const factory SignInEvent.passwordChanged(String passwordString) = _PasswordChanged;
  const factory SignInEvent.signInPressed() = _SignInPressed;
  const factory SignInEvent.signInWithFacebookPressed() = _SignInWithFacebookPressed;
  const factory SignInEvent.signInWithGooglePressed() = _SignInWithGooglePressed;
  const factory SignInEvent.signInWithApplePressed() = _SignInWithApplePressed;
}