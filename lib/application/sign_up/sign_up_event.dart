part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.emailChanged(String newEmailString) = EmailChanged;
  const factory SignUpEvent.usernameChanged(String newUsernameString) =
      UsernameChanged;
  const factory SignUpEvent.passwordChanged(String newPasswordString) =
      PasswordChanged;
  const factory SignUpEvent.passwordAgainChanged(String newPasswordAgainString) =
      PasswordAgainChanged;
  const factory SignUpEvent.signUpPressed() = SignUpPressed;
}
