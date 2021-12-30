import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

// TODO remove not needed failure types

/// All failures of the auth domain.
@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.emailAlreadyInUse() = _EmailAlreadyInUse;
  const factory AuthFailure.usernameAlreadyInUse() = _UsernameAlreadyInUse;
  const factory AuthFailure.invalidEmail() = _InvalidEmail;
  const factory AuthFailure.invalidUsername() = _InvalidUsername;
  const factory AuthFailure.invalidOldPassword() = _InvalidOldPassword;
  const factory AuthFailure.invalidNewPassword() = _InvalidNewPassword;
  const factory AuthFailure.invalidPassword() = _InvalidPassword;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      _InvalidEmailAndPasswordCombination;
  const factory AuthFailure.invalidUsernameAndPasswordCombination() =
      _InvalidUsernameAndPasswordCombination;
  const factory AuthFailure.passwordsNotMatching() = _PasswordsNotMatching;
  const factory AuthFailure.cancelledByUser() = _CancelledByUser;
  const factory AuthFailure.serverError() = _ServerError;
}
