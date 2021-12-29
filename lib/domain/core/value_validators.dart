import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'failures.dart';

/// Validates [emailString].
///
/// Returns [emailString] if valid email.
///
/// Returns ValueFailure else.
Either<ValueFailure<String>, String> validateEmailAddress({
  required String emailString,
}) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(emailString)) {
    return right(emailString);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: emailString));
  }
}

/// Validates [usernameString].
///
/// Returns [usernameString] if valid username.
///
/// Returns ValueFailure else.
Either<ValueFailure<String>, String> validateUsername({
  required String usernameString,
}) {
  if (usernameString.length >= 3 && usernameString.length <= 15) {
    const usernameRegex = r"""^[a-zA-Z0-9_.-]*$""";
    if (RegExp(usernameRegex).hasMatch(usernameString)) {
      return right(usernameString);
    } else {
      return left(ValueFailure.invalidCharacters(failedValue: usernameString));
    }
  } else {
    return left(ValueFailure.shortUsername(failedValue: usernameString));
  }
}

/// Validates [passwordString].
///
/// Returns [passwordString] if valid password.
///
/// Returns ValueFailure else.
Either<ValueFailure<String>, String> validatePassword({
  required String passwordString,
}) {
  if (passwordString.length >= 6) {
    if (!passwordString.contains(' ')) {
      return right(passwordString);
    } else {
      return left(ValueFailure.invalidWhitespaces(failedValue: passwordString));
    }
  } else {
    return left(ValueFailure.shortPassword(failedValue: passwordString));
  }
}

/// Validates wheter [list] has [maxLength].
///
/// Returns [list] if valid list.
///
/// Returns ValueFailure else.
Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>({
  required KtList<T> list,
  required int maxLength,
}) {
  if (list.size <= maxLength) {
    return right(list);
  } else {
    return left(
      ValueFailure.listTooLong(
        failedValue: list,
        max: maxLength,
      ),
    );
  }
}
