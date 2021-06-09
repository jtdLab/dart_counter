part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.emailChanged(String emailString) =_EmailChanged;
  const factory SignUpEvent.usernameChanged(String usernameString) =_UsernameChanged;
  const factory SignUpEvent.passwordChanged(String passwordString) =_PasswordChanged;
  const factory SignUpEvent.passwordAgainChanged(String passwordAgainString) = _PasswordAgainChanged;
  const factory SignUpEvent.signUpPressed() = _SignUpPressed;
}
