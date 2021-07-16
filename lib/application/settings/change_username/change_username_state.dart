part of 'change_username_bloc.dart';

@freezed
class ChangeUsernameState with _$ChangeUsernameState {
  const factory ChangeUsernameState({
    required Username newUsername,
    required bool showErrorMessages,
    required bool isSubmitting,
    required bool successful,
    UserFailure? userFailure,
  }) = _ChangeUsernameState;

  factory ChangeUsernameState.initial() => ChangeUsernameState(
        newUsername: Username.empty(),
        showErrorMessages: false,
        isSubmitting: false,
        successful: false,
      );
}
