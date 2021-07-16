part of 'change_email_bloc.dart';

@freezed
class ChangeEmailEvent with _$ChangeEmailEvent {
  const factory ChangeEmailEvent.newEmailChanged({
    required String newEmailString,
  }) = NewEmailChanged;
  const factory ChangeEmailEvent.confirmPressed() = ConfirmPressed;
}
