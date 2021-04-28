part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormEvent with _$SignUpFormEvent {
  const factory SignUpFormEvent.emailChanged(String emailString) =_EmailChanged;
  const factory SignUpFormEvent.usernameChanged(String usernameString) =_UsernameChanged;
  const factory SignUpFormEvent.passwordChanged(String passwordString) =_PasswordChanged;
  const factory SignUpFormEvent.passwordAgainChanged(String passwordAgainString) = _PasswordAgainChanged;
  const factory SignUpFormEvent.signUpPressed() = _SignUpPressed;
}
