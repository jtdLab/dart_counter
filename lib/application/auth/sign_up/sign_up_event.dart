part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.watchStarted() = WatchStarted;
  const factory SignUpEvent.emailChanged(String emailString) = EmailChanged;
  const factory SignUpEvent.usernameChanged(String usernameString) =
      UsernameChanged;
  const factory SignUpEvent.passwordChanged(String passwordString) =
      _asswordChanged;
  const factory SignUpEvent.passwordAgainChanged(String passwordAgainString) =
      PasswordAgainChanged;
  const factory SignUpEvent.signUpPressed() = SignUpPressed;
  const factory SignUpEvent.invitationsReceived() = InvitationsReceived;
  const factory SignUpEvent.friendRequestsReceived() = FriendRequestsReceived;
  const factory SignUpEvent.userReceived() = UserReceived;
  const factory SignUpEvent.failureReceived() = FailureReceived;
}
