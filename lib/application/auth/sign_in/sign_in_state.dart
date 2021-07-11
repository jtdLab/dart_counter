part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required EmailAddress email,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    Either<AuthFailure, Unit>? authFailureOrSuccess,
    required bool invitationsReceived,
    required bool friendRequestsReceived,
    required bool userReceived,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        email: EmailAddress(''),
        password: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        invitationsReceived: false,
        friendRequestsReceived: false,
        userReceived: false,
      );
}
