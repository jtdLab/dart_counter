part of 'change_email_bloc.dart';

@freezed
class ChangeEmailState with _$ChangeEmailState {
  const factory ChangeEmailState({
    required EmailAddress newEmail,
    required bool showErrorMessages,
    required bool isSubmitting,
    required bool successful,
    AuthFailure? authFailure,
  }) = _ChangeEmailState;

  factory ChangeEmailState.initial() => ChangeEmailState(
        newEmail: EmailAddress.empty(),
        showErrorMessages: false,
        isSubmitting: false,
        successful: false,
      );
}
