import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'failures.dart';

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

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
  KtList<T> input,
  int maxLength,
) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.listTooLong(
        failedValue: input,
        max: maxLength,
      ),
    );
  }
}
