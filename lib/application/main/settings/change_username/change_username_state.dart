// coverage:ignore-file

part of 'change_username_bloc.dart';

@freezed
class ChangeUsernameState with _$ChangeUsernameState {
  const factory ChangeUsernameState.initial({
    required Username newUsername,
    required bool showErrorMessages,
  }) = ChangeUsernameInitial;
  const factory ChangeUsernameState.submitInProgress() =
      ChangeUsernameSubmitInProgress;
  const factory ChangeUsernameState.submitSuccess() =
      ChangeUsernameSubmitSuccess;
  const factory ChangeUsernameState.submitFailure({
    required UserFailure userFailure,
  }) = ChangeUsernameSubmitFailure;
}
