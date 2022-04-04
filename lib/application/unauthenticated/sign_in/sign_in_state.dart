// coverage:ignore-file

part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial({
    required EmailAddress email,
    required Password password,
  }) = SignInInitial;
  const factory SignInState.loadInProgress() = SignInLoadInProgress;
  const factory SignInState.loadFailure({
    required AuthFailure failure,
  }) = SignInLoadFailure;

  // TODO nameing empty is not good
  factory SignInState.empty() => SignInState.initial(
        email: EmailAddress.empty(),
        password: Password.empty(),
      );
}
