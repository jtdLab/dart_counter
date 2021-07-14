part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.emailChanged(String emailString) = EmailChanged;
  const factory SignUpEvent.usernameChanged(String usernameString) =
      UsernameChanged;
  const factory SignUpEvent.passwordChanged(String passwordString) =
      PasswordChanged;
  const factory SignUpEvent.passwordAgainChanged(String passwordAgainString) =
      PasswordAgainChanged;
  const factory SignUpEvent.signUpPressed() = SignUpPressed;
}
