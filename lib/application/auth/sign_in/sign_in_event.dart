part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.emailChanged(String emailString) = EmailChanged;
  const factory SignInEvent.passwordChanged(String passwordString) =
      PasswordChanged;
  const factory SignInEvent.signInPressed() = SignInPressed;
  const factory SignInEvent.signInWithFacebookPressed() =
      SignInWithFacebookPressed;
  const factory SignInEvent.signInWithGooglePressed() = SignInWithGooglePressed;
  const factory SignInEvent.signInWithApplePressed() = SignInWithApplePressed;
}
