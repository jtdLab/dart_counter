part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial({
    required EmailAddress email,
    required Username username,
    required Password password,
    required Password passwordAgain,
    required bool showErrorMessages,
  }) = SignUpInitial;
  const factory SignUpState.loadInProgress() = SignUpLoadInProgress;
  const factory SignUpState.loadFailure({
    required AuthFailure authFailure,
  }) = SignUpLoadFailure;
}
