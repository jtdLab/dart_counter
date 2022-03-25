// coverage:ignore-file

part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.emailChanged({
    required String newEmail,
  }) = _EmailChanged;
  const factory SignInEvent.passwordChanged({
    required String newPassword,
  }) = _PasswordChanged;
  const factory SignInEvent.signInPressed() = _SignInPressed;
  const factory SignInEvent.signInWithFacebookPressed() =
      _SignInWithFacebookPressed;
  const factory SignInEvent.signInWithGooglePressed() =
      _SignInWithGooglePressed;
  const factory SignInEvent.signInWithApplePressed() = _SignInWithApplePressed;
}
