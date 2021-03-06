part of 'value_objects.dart';

/// Validates [emailString].
///
/// Returns [emailString] if valid email.
///
/// Returns ValueFailure else.
Either<ValueFailure<String>, String> _validateEmailAddress({
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
Either<ValueFailure<String>, String> _validateUsername({
  required String usernameString,
}) {
  if (usernameString.length < 3) {
    return left(ValueFailure.shortUsername(failedValue: usernameString));
  } else if (usernameString.length > 15) {
    return left(ValueFailure.longUsername(failedValue: usernameString));
  } else {
    const usernameRegex = r"""^[a-zA-Z0-9_.-]*$""";
    if (RegExp(usernameRegex).hasMatch(usernameString)) {
      return right(usernameString);
    } else {
      return left(ValueFailure.invalidCharacters(failedValue: usernameString));
    }
  }
}

/// Validates [passwordString].
///
/// Returns [passwordString] if valid password.
///
/// Returns ValueFailure else.
Either<ValueFailure<String>, String> _validatePassword({
  required String passwordString,
}) {
  if (passwordString.length < 6) {
    return left(ValueFailure.shortPassword(failedValue: passwordString));
  } else if (passwordString.length > 32) {
    return left(ValueFailure.longPassword(failedValue: passwordString));
  } else {
    if (!passwordString.contains(' ')) {
      return right(passwordString);
    } else {
      return left(ValueFailure.invalidWhitespaces(failedValue: passwordString));
    }
  }
}

/// Validates wheter [list] has [maxLength].
///
/// Returns [list] if valid list.
///
/// Returns ValueFailure else.
Either<ValueFailure<KtList<T>>, KtList<T>> _validateMaxListLength<T>({
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

/// Validates wheter [list] is empty or not empty.
///
/// Returns [list] if not empty.
///
/// Returns ValueFailure else.
Either<ValueFailure<KtList<T>>, KtList<T>> _validateNotEmptyList<T>({
  required KtList<T> list,
}) {
  if (list.isNotEmpty()) {
    return right(list);
  } else {
    return left(
      ValueFailure.emptyList(
        failedValue: list,
      ),
    );
  }
}
