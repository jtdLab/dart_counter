import 'package:dart_counter/domain/core/failures.dart';
import 'package:dart_counter/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

void main() {
  group('validateEmailAddress', () {
    test(
      'when email is valid return right containing the email',
      () {
        // Arrange
        const email = 'a@b.de';

        // Act
        final result = validateEmailAddress(emailString: email);

        // Assert
        expect(result, right(email));
      },
    );

    test(
      'when invalid email return left containing failure invalid email',
      () {
        // Arrange
        const email = 'aaaaa';

        // Act
        final result = validateEmailAddress(emailString: email);

        // Assert
        expect(
          result,
          left(const ValueFailure.invalidEmail(failedValue: email)),
        );
      },
    );

    test(
      'when email contains special character return left containing failure invalid email',
      () {
        // Arrange
        const email = 'a@/.de';

        // Act
        final result = validateEmailAddress(emailString: email);

        // Assert
        expect(
          result,
          left(const ValueFailure.invalidEmail(failedValue: email)),
        );
      },
    );
  });

  group('validateUsername', () {
    test(
      'when valid username return right containing the username',
      () {
        // Arrange
        const username = 'jonas';

        // Act
        final result = validateUsername(usernameString: username);

        // Assert
        expect(result, right(username));
      },
    );

    test(
      'when username with less than 3 characters return left containing failure short username',
      () {
        // Arrange
        const username = 'aa';

        // Act
        final result = validateUsername(usernameString: username);

        // Assert
        expect(
          result,
          left(const ValueFailure.shortUsername(failedValue: username)),
        );
      },
    );

    test(
      'when username with more than 15 characters return left containing failure long username',
      () {
        // Arrange
        final username = List.generate(16, (index) => 's').toString();

        // Act
        final result = validateUsername(usernameString: username);

        // Assert
        expect(
          result,
          left(ValueFailure.longUsername(failedValue: username)),
        );
      },
    );

    test(
      'when username contains special characters return left containing failure invalid characters',
      () {
        // Arrange
        const username = 'aa*aa';

        // Act
        final result = validateUsername(usernameString: username);

        // Assert
        expect(
          result,
          left(const ValueFailure.invalidCharacters(failedValue: username)),
        );
      },
    );
  });

  group('validatePassword', () {
    test(
      'when valid password return right containing the password',
      () {
        // Arrange
        const password = 'password';

        // Act
        final result = validatePassword(passwordString: password);

        // Assert
        expect(result, right(password));
      },
    );

    test(
      'when password with less than 6 characters return left containing failure short password',
      () {
        // Arrange
        const password = 'aaaaa';

        // Act
        final result = validatePassword(passwordString: password);

        // Assert
        expect(
          result,
          left(const ValueFailure.shortPassword(failedValue: password)),
        );
      },
    );

    test(
      'when password with whitespaces return left containing failure invalid whitespaces',
      () {
        // Arrange
        const password = 'aaa aaa';

        // Act
        final result = validatePassword(passwordString: password);

        // Assert
        expect(
          result,
          left(ValueFailure.invalidWhitespaces(failedValue: password)),
        );
      },
    );
  });

  group('validateMaxListLength', () {
    test(
      'when list with fewer elements than maxLength return right containing the list',
      () {
        // Arrange
        const list = KtList.empty();
        const maxLength = 1;

        // Act
        final result = validateMaxListLength(list: list, maxLength: maxLength);

        // Assert
        expect(result, right(list));
      },
    );

    test(
      'when list with more elements than maxLength return left containing failure list too long',
      () {
        // Arrange
        final list = KtList.from([1]);
        const maxLength = 0;

        // Act
        final result = validateMaxListLength(list: list, maxLength: maxLength);

        // Assert
        expect(
          result,
          left(ValueFailure.listTooLong(failedValue: list, max: maxLength)),
        );
      },
    );
  });
}
