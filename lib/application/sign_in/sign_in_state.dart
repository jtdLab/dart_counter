part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial({
    required EmailAddress email,
    required Password password,
    required bool showErrorMessages,
  }) = SignInInitial;

  const factory SignInState.signInLoadInProgress() = SignInLoadInProgress;

  const factory SignInState.signInLoadFailure({
    required AuthFailure authFailure,
  }) = SignInLoadFailure;
}
