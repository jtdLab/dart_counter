// coverage:ignore-file

part of 'change_email_bloc.dart';

@freezed
class ChangeEmailState with _$ChangeEmailState {
 const factory ChangeEmailState.initial({
    required EmailAddress newEmail,
    required bool showErrorMessages,
  }) = ChangeEmailInitial;
  const factory ChangeEmailState.submitInProgress() =
      ChangeEmailSubmitInProgress;
  const factory ChangeEmailState.submitSuccess() =
      ChangeEmailSubmitSuccess;
  const factory ChangeEmailState.submitFailure({
    required UserFailure userFailure,
  }) = ChangeEmailSubmitFailure;
}
