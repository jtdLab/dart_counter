import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/failures.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

// TODO is blackbox testing all inherited fields a good strat here?
// or just test super class value obj and overritten methods in subclasses

void main() {
  group('EmailAddress', () {
    group('constructor', () {
      test(
          'WHEN empty() constructor called '
          'THEN return EmailAddress holding an empty string.', () {
        // Act
        final underTest = EmailAddress.empty();

        // Assert
        expect(underTest, EmailAddress(''));
      });
    });

    group('value', () {
      test(
        'GIVEN emailString is valid email '
        'THEN return right containing emailString.',
        () {
          // Arrange
          const emailString = 'a@b.c';
          final email = EmailAddress(emailString);

          // Act
          final underTest = email.value;

          // Assert
          expect(underTest, right(emailString));
        },
      );

      test(
        'GIVEN emailString is not valid email '
        'THEN return left containing failure invalid email.',
        () {
          // Arrange
          const emailString = 'invalidEmail';
          final email = EmailAddress(emailString);

          // Act
          final underTest = email.value;

          // Assert
          expect(
            underTest,
            left(const ValueFailure.invalidEmail(failedValue: emailString)),
          );
        },
      );

      test(
        'GIVEN emailString contains special character '
        'THEN return left containing failure invalid email.',
        () {
          // Arrange
          const emailString = 'a@/.de';
          final email = EmailAddress(emailString);

          // Act
          final underTest = email.value;

          // Assert
          expect(
            underTest,
            left(const ValueFailure.invalidEmail(failedValue: emailString)),
          );
        },
      );
    });

    group('getOrCrash', () {
      test(
        'GIVEN emailString is valid email '
        'THEN return emailString.',
        () {
          // Arrange
          const emailString = 'a@b.c';
          final email = EmailAddress(emailString);

          // Act
          final underTest = email.getOrCrash();

          // Assert
          expect(underTest, emailString);
        },
      );

      test(
        'GIVEN emailString is not valid email '
        'THEN throw UnexpectedValueError.',
        () {
          // Arrange
          const emailString = 'invalidEmail';
          final email = EmailAddress(emailString);

          // Act & Assert
          expect(
            () => email.getOrCrash(),
            throwsA(isA<UnexpectedValueError>()),
          );
        },
      );
    });

    group('isValid', () {
      test(
        'GIVEN emailString is valid email '
        'THEN return true.',
        () {
          // Arrange
          const emailString = 'a@b.c';
          final email = EmailAddress(emailString);

          // Act
          final underTest = email.isValid();

          // Assert
          expect(underTest, true);
        },
      );

      test(
        'GIVEN emailString is not valid email '
        'THEN return false.',
        () {
          // Arrange
          const emailString = 'invalidEmail';
          final email = EmailAddress(emailString);

          // Act
          final underTest = email.isValid();

          // Assert
          expect(underTest, false);
        },
      );
    });

    group('==', () {
      test(
        'GIVEN email1 is same instance as email2 '
        'THEN return true.',
        () {
          // Arrange

          final email1 = EmailAddress('sdfosoj');
          final email2 = email1;

          // Act & Assert
          expect(email1 == email2, true);
        },
      );

      test(
        'GIVEN emailString1 equals emailString2 and is valid email '
        'THEN return true.',
        () {
          // Arrange
          const emailString1 = 'a@b.c';
          const emailString2 = 'a@b.c';
          final email1 = EmailAddress(emailString1);
          final email2 = EmailAddress(emailString2);

          // Act & Assert
          expect(email1 == email2, true);
        },
      );

      test(
        'GIVEN emailString1 equals emailString2 and is not valid email '
        'THEN return true.',
        () {
          // Arrange
          const emailString1 = 'invalidEmail';
          const emailString2 = 'invalidEmail';
          final email1 = EmailAddress(emailString1);
          final email2 = EmailAddress(emailString2);

          // Act & Assert
          expect(email1 == email2, true);
        },
      );

      test(
        'GIVEN emailString1 not equal to emailString2 '
        'THEN return false.',
        () {
          // Arrange
          const emailString1 = 'invalidEmail1';
          const emailString2 = 'a@b.c';
          final email1 = EmailAddress(emailString1);
          final email2 = EmailAddress(emailString2);

          // Act & Assert
          expect(email1 == email2, false);
        },
      );
    });

    group('hashCode', () {
      test('Return the hashCode of the emails value.', () {
        // Arrange
        final email = EmailAddress('ahah');

        // Act
        final underTest = email.hashCode;

        // Assert
        expect(underTest, email.value.hashCode);
      });
    });

    group('toString', () {
      test('Return Value(X) where X is the emails value string representation.',
          () {
        // Arrange
        final email = EmailAddress('ahah');

        // Act
        final underTest = email.toString();

        // Assert
        expect(underTest, 'Value(${email.value})');
      });
    });
  });

  group('Username', () {
    group('constructor', () {
      test(
          'WHEN empty() constructor called '
          'THEN return Username holding an empty string.', () {
        // Act
        final underTest = Username.empty();

        // Assert
        expect(underTest, Username(''));
      });
    });

    group('value', () {
      test(
        'GIVEN usernameString is valid username '
        'THEN return right containing usernameString.',
        () {
          // Arrange
          const usernameString = 'jonas';
          final username = Username(usernameString);

          // Act
          final underTest = username.value;

          // Assert
          expect(underTest, right(usernameString));
        },
      );

      test(
        'GIVEN usernameString has exact 3 valid characters '
        'THEN return right containing usernameString.',
        () {
          // Arrange
          const usernameString = '123';
          final username = Username(usernameString);

          // Act
          final underTest = username.value;

          // Assert
          expect(underTest, right(usernameString));
        },
      );

      test(
        'GIVEN usernameString has exact 15 valid characters '
        'THEN return right containing usernameString.',
        () {
          // Arrange
          const usernameString = 'ABCDE12345ABCDE';
          final username = Username(usernameString);

          // Act
          final underTest = username.value;

          // Assert
          expect(underTest, right(usernameString));
        },
      );

      test(
        'GIVEN usernameString has less than 3 characters '
        'THEN return left containing failure short username.',
        () {
          // Arrange
          const usernameString = 'aa';
          final username = Username(usernameString);

          // Act
          final underTest = username.value;

          // Assert
          expect(
            underTest,
            left(const ValueFailure.shortUsername(failedValue: usernameString)),
          );
        },
      );

      test(
        'GIVEN usernameString has more than 15 characters '
        'THEN return left containing failure long username.',
        () {
          // Arrange
          const usernameString = 'ABCDE12345ABCDE1';
          final username = Username(usernameString);

          // Act
          final underTest = username.value;

          // Assert
          expect(
            underTest,
            left(const ValueFailure.longUsername(failedValue: usernameString)),
          );
        },
      );

      test(
        'GIVEN usernameString contains special characters '
        'THEN return left containing failure long username.',
        () {
          // Arrange
          const usernameString = 'aa*aa';
          final username = Username(usernameString);

          // Act
          final underTest = username.value;

          // Assert
          expect(
            underTest,
            left(
              const ValueFailure.invalidCharacters(failedValue: usernameString),
            ),
          );
        },
      );
    });

    group('getOrCrash', () {
      test(
        'GIVEN usernameString is valid username '
        'THEN return usernameString.',
        () {
          // Arrange
          const usernameString = 'jonas';
          final username = Username(usernameString);

          // Act
          final underTest = username.getOrCrash();

          // Assert
          expect(underTest, usernameString);
        },
      );

      test(
        'GIVEN usernameString is not valid username '
        'THEN throw UnexpectedValueError.',
        () {
          // Arrange
          const usernameString = '##';
          final username = Username(usernameString);

          // Act & Assert
          expect(
            () => username.getOrCrash(),
            throwsA(isA<UnexpectedValueError>()),
          );
        },
      );
    });

    group('isValid', () {
      test(
        'GIVEN usernameString is valid username '
        'THEN return usernameString.',
        () {
          // Arrange
          const usernameString = 'jonas';
          final username = Username(usernameString);

          // Act
          final underTest = username.isValid();

          // Assert
          expect(underTest, true);
        },
      );

      test(
        'GIVEN usernameString is not valid username '
        'THEN throw UnexpectedValueError.',
        () {
          // Arrange
          const usernameString = '##';
          final username = Username(usernameString);

          // Act
          final underTest = username.isValid();

          // Assert
          expect(underTest, false);
        },
      );
    });

    group('==', () {
      test(
        'GIVEN username1 is same instance as username2 '
        'THEN return true.',
        () {
          // Arrange

          final username1 = Username('sdfosoj');
          final username2 = username1;

          // Act & Assert
          expect(username1 == username2, true);
        },
      );

      test(
        'GIVEN username1 equals username2 and is valid username '
        'THEN return true.',
        () {
          // Arrange
          const usernameString1 = 'a@b.c';
          const usernameString2 = 'a@b.c';
          final username1 = Username(usernameString1);
          final username2 = Username(usernameString2);

          // Act & Assert
          expect(username1 == username2, true);
        },
      );

      test(
        'GIVEN usernameString1 equals usernameString2 and is not valid username '
        'THEN return true.',
        () {
          // Arrange
          const usernameString1 = 'invalidEmail';
          const usernameString2 = 'invalidEmail';
          final username1 = Username(usernameString1);
          final username2 = Username(usernameString2);

          // Act & Assert
          expect(username1 == username2, true);
        },
      );

      test(
        'GIVEN usernameString1 not equal to usernameString2 '
        'THEN return false.',
        () {
          // Arrange
          const usernameString1 = 'invalidEmail1';
          const usernameString2 = 'a@b.c';
          final username1 = Username(usernameString1);
          final username2 = Username(usernameString2);

          // Act & Assert
          expect(username1 == username2, false);
        },
      );
    });

    group('hashCode', () {
      test('Return the hashCode of the usernames value.', () {
        // Arrange
        final username = Username('ahah');

        // Act
        final underTest = username.hashCode;

        // Assert
        expect(underTest, username.value.hashCode);
      });
    });

    group('toString', () {
      test(
          'Return Value(X) where X is the usernames value string representation.',
          () {
        // Arrange
        final username = Username('ahah');

        // Act
        final underTest = username.toString();

        // Assert
        expect(underTest, 'Value(${username.value})');
      });
    });
  });

  group('Password', () {
    group('constructor', () {
      test(
          'WHEN empty() constructor called '
          'THEN return Password holding an empty string.', () {
        // Act
        final underTest = Password.empty();

        // Assert
        expect(underTest, Password(''));
      });
    });

    group('value', () {
      test(
        'GIVEN passwordString is valid password '
        'THEN return right containing passwordString.',
        () {
          // Arrange
          const passwordString = 'password';
          final password = Password(passwordString);

          // Act
          final underTest = password.value;

          // Assert
          expect(underTest, right(passwordString));
        },
      );

      test(
        'GIVEN passwordString has exact 6 valid characters '
        'THEN return right containing passwordString.',
        () {
          // Arrange
          const passwordString = 'ABC123';
          final password = Password(passwordString);

          // Act
          final underTest = password.value;

          // Assert
          expect(underTest, right(passwordString));
        },
      );

      test(
        'GIVEN passwordString has less than 6 characters '
        'THEN return left containing failure short password.',
        () {
          // Arrange
          const passwordString = 'aaaaa';
          final password = Password(passwordString);

          // Act
          final underTest = password.value;

          // Assert
          expect(
            underTest,
            left(const ValueFailure.shortPassword(failedValue: passwordString)),
          );
        },
      );

      test(
        'GIVEN passwordString has exact 32 valid characters '
        'THEN return right containing passwordString.',
        () {
          // Arrange
          const passwordString = 'ABCD1234ABCD1234ABCD1234ABCD1234';
          final password = Password(passwordString);

          // Act
          final underTest = password.value;

          // Assert
          expect(underTest, right(passwordString));
        },
      );

      test(
        'GIVEN passwordString has more than 32 characters '
        'THEN return left containing failure long password.',
        () {
          // Arrange
          const passwordString = 'ABCD1234ABCD1234ABCD1234ABCD1234moremore';
          final password = Password(passwordString);

          // Act
          final underTest = password.value;

          // Assert
          expect(
            underTest,
            left(const ValueFailure.longPassword(failedValue: passwordString)),
          );
        },
      );

      test(
        'GIVEN passwordString contains whitespaces '
        'THEN return left containing failure invalid whitespaces.',
        () {
          // Arrange
          const passwordString = 'aaa aaa';
          final password = Password(passwordString);

          // Act
          final underTest = password.value;

          // Assert
          expect(
            underTest,
            left(
              const ValueFailure.invalidWhitespaces(
                failedValue: passwordString,
              ),
            ),
          );
        },
      );
    });

    group('getOrCrash', () {
      test(
        'GIVEN passwordString is valid password '
        'THEN return passwordString.',
        () {
          // Arrange
          const passwordString = 'password';
          final password = Password(passwordString);

          // Act
          final underTest = password.getOrCrash();

          // Assert
          expect(underTest, passwordString);
        },
      );

      test(
        'GIVEN passwordString is not valid password '
        'THEN throw UnexpectedValueError.',
        () {
          // Arrange
          const passwordString = ' ';
          final password = Password(passwordString);

          // Act & Assert
          expect(
            () => password.getOrCrash(),
            throwsA(isA<UnexpectedValueError>()),
          );
        },
      );
    });

    group('isValid', () {
      test(
        'GIVEN passwordString is valid password '
        'THEN return passwordString.',
        () {
          // Arrange
          const passwordString = 'password';
          final password = Password(passwordString);

          // Act
          final underTest = password.isValid();

          // Assert
          expect(underTest, true);
        },
      );

      test(
        'GIVEN passwordString is not valid password '
        'THEN throw UnexpectedValueError.',
        () {
          // Arrange
          const passwordString = ' ';
          final password = Password(passwordString);

          // Act
          final underTest = password.isValid();

          // Assert
          expect(underTest, false);
        },
      );
    });

    group('==', () {
      test(
        'GIVEN password1 is same instance as password2 '
        'THEN return true.',
        () {
          // Arrange

          final password1 = Password('sdfosoj');
          final password2 = password1;

          // Act & Assert
          expect(password1 == password2, true);
        },
      );

      test(
        'GIVEN password1 equals password2 and is valid password '
        'THEN return true.',
        () {
          // Arrange
          const passwordString1 = 'a@b.c';
          const passwordString2 = 'a@b.c';
          final password1 = Password(passwordString1);
          final password2 = Password(passwordString2);

          // Act & Assert
          expect(password1 == password2, true);
        },
      );

      test(
        'GIVEN passwordString1 equals passwordString2 and is not valid password '
        'THEN return true.',
        () {
          // Arrange
          const passwordString1 = 'invalidEmail';
          const passwordString2 = 'invalidEmail';
          final password1 = Password(passwordString1);
          final password2 = Password(passwordString2);

          // Act & Assert
          expect(password1 == password2, true);
        },
      );

      test(
        'GIVEN passwordString1 not equal to passwordString2 '
        'THEN return false.',
        () {
          // Arrange
          const passwordString1 = 'invalidEmail1';
          const passwordString2 = 'a@b.c';
          final password1 = Password(passwordString1);
          final password2 = Password(passwordString2);

          // Act & Assert
          expect(password1 == password2, false);
        },
      );
    });

    group('hashCode', () {
      test('Return the hashCode of the passwords value.', () {
        // Arrange
        final password = Password('ahah');

        // Act
        final underTest = password.hashCode;

        // Assert
        expect(underTest, password.value.hashCode);
      });
    });

    group('toString', () {
      test(
          'Return Value(X) where X is the passwords value string representation.',
          () {
        // Arrange
        final password = Password('ahah');

        // Act
        final underTest = password.toString();

        // Assert
        expect(underTest, 'Value(${password.value})');
      });
    });
  });

  group('UniqueId', () {
    group('value', () {
      test(
        'Return right containing emailString.',
        () {
          // Arrange
          const uidString = 'uniqueId';
          final uid = UniqueId.fromUniqueString(uidString);

          // Act
          final underTest = uid.value;

          // Assert
          expect(underTest, right(uidString));
        },
      );
    });

    group('getOrCrash', () {
      test(
        'Return uidString.',
        () {
          // Arrange
          const uidString = 'uniqueId';
          final uid = UniqueId.fromUniqueString(uidString);

          // Act
          final underTest = uid.getOrCrash();

          // Assert
          expect(underTest, uidString);
        },
      );
    });

    group('isValid', () {
      test(
        'Return true.',
        () {
          // Arrange
          const uidString = 'a@b.c';
          final uid = UniqueId.fromUniqueString(uidString);

          // Act
          final underTest = uid.isValid();

          // Assert
          expect(underTest, true);
        },
      );
    });

    group('==', () {
      test(
        'GIVEN uid1 is same instance as uid2 '
        'THEN return true.',
        () {
          // Arrange

          final uid1 = UniqueId();
          final uid2 = uid1;

          // Act & Assert
          expect(uid1 == uid2, true);
        },
      );

      test(
        'GIVEN uidString1 equals uidString2 and is valid uid '
        'THEN return true.',
        () {
          // Arrange
          const uidString1 = 'a@b.c';
          const uidString2 = 'a@b.c';
          final uid1 = UniqueId.fromUniqueString(uidString1);
          final uid2 = UniqueId.fromUniqueString(uidString2);

          // Act & Assert
          expect(uid1 == uid2, true);
        },
      );

      test(
        'GIVEN uidString1 not equal to uidString2 '
        'THEN return false.',
        () {
          // Arrange
          const uidString1 = 'uniqueId1';
          const uidString2 = 'uniqueId2';
          final uid1 = UniqueId.fromUniqueString(uidString1);
          final uid2 = UniqueId.fromUniqueString(uidString2);

          // Act & Assert
          expect(uid1 == uid2, false);
        },
      );
    });

    group('hashCode', () {
      test('Return the hashCode of the emails value.', () {
        // Arrange
        final uid = UniqueId();

        // Act
        final underTest = uid.hashCode;

        // Assert
        expect(underTest, uid.value.hashCode);
      });
    });

    group('toString', () {
      test('Return Value(X) where X is the emails value string representation.',
          () {
        // Arrange
        final uid = UniqueId();

        // Act
        final underTest = uid.toString();

        // Assert
        expect(underTest, 'Value(${uid.value})');
      });
    });
  });

  group('List10', () {
    group('constructor', () {
      test(
          'WHEN empty() constructor called '
          'THEN return List10 holding an empty list.', () {
        // Act
        final underTest = List10.empty();

        // Assert
        expect(underTest, List10(const KtList.empty()));
      });
    });

    group('value', () {
      test(
        'GIVEN list has 10 elements '
        'THEN return right containing list.',
        () {
          // Arrange
          final list = KtList.from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
          final list10 = List10(list);

          // Act
          final underTest = list10.value;

          // Assert
          expect(underTest, right(list));
        },
      );

      test(
        'GIVEN list has less than 10 elements '
        'THEN return right containing list.',
        () {
          // Arrange
          final list = KtList.from([1, 2, 3, 4]);
          final list10 = List10(list);

          // Act
          final underTest = list10.value;

          // Assert
          expect(underTest, right(list));
        },
      );

      test(
        'GIVEN list has more than 10 elements '
        'THEN return left containing failure list too long.',
        () {
          // Arrange
          final list = KtList.from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]);
          final list10 = List10(list);

          // Act
          final underTest = list10.value;

          // Assert
          expect(
            underTest,
            left(ValueFailure.listTooLong(failedValue: list, max: 10)),
          );
        },
      );
    });

    group('getOrCrash', () {
      test(
        'GIVEN list has less than 11 elements '
        'THEN return right containing list.',
        () {
          // Arrange
          final list = KtList.from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
          final list10 = List10(list);

          // Act
          final underTest = list10.getOrCrash();

          // Assert
          expect(underTest, list);
        },
      );

      test(
        'GIVEN list has more than 10 elements '
        'THEN throw UnexpectedValueError.',
        () {
          // Arrange
          final list = KtList.from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]);
          final list10 = List10(list);

          // Act & Assert
          expect(
            () => list10.getOrCrash(),
            throwsA(isA<UnexpectedValueError>()),
          );
        },
      );
    });

    group('isValid', () {
      test(
        'GIVEN list has less than 11 elements '
        'THEN return true.',
        () {
          // Arrange
          final list = KtList.from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
          final list10 = List10(list);

          // Act
          final underTest = list10.isValid();

          // Assert
          expect(underTest, true);
        },
      );

      test(
        'GIVEN list has more than 10 elements '
        'THEN return false.',
        () {
          // Arrange
          final list = KtList.from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]);
          final list10 = List10(list);

          // Act
          final underTest = list10.isValid();

          // Assert
          expect(underTest, false);
        },
      );
    });

    group('==', () {
      test(
        'GIVEN list1 is same instance as list2 '
        'THEN return true.',
        () {
          // Arrange

          final list1 = List10(KtList.from([1, 2, 3, 4, 5]));
          final list2 = list1;

          // Act & Assert
          expect(list1 == list2, true);
        },
      );

      test(
        'GIVEN list1 equals list1 and is valid list10 '
        'THEN return true.',
        () {
          // Arrange
          final list1 = List10(KtList.from([1, 2, 3, 4, 5]));
          final list2 = List10(KtList.from([1, 2, 3, 4, 5]));

          // Act & Assert
          expect(list1 == list2, true);
        },
      );

      test(
        'GIVEN list1 equals list1 and is not valid list10 '
        'THEN return true.',
        () {
          // Arrange
          final list1 =
              List10(KtList.from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]));
          final list2 =
              List10(KtList.from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]));

          // Act & Assert
          expect(list1 == list2, true);
        },
      );

      test(
        'GIVEN list1 is not equal to list2 '
        'THEN return false.',
        () {
          // Arrange
          final list1 =
              List10(KtList.from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]));
          final list2 = List10(KtList.from([1, 2, 3, 4, 5, 6]));

          // Act & Assert
          expect(list1 == list2, false);
        },
      );
    });

    group('hashCode', () {
      test('Return the hashCode of the list10s value.', () {
        // Arrange
        final list10 = List10(KtList.from([1, 2, 3, 4, 5]));

        // Act
        final underTest = list10.hashCode;

        // Assert
        expect(underTest, list10.value.hashCode);
      });
    });

    group('toString', () {
      test(
          'Return Value(X) where X is the list10s value string representation.',
          () {
        // Arrange
        final list10 = List10(KtList.from([1, 2, 3, 4, 5]));

        // Act
        final underTest = list10.toString();

        // Assert
        expect(underTest, 'Value(${list10.value})');
      });
    });

    group('length', () {
      test(
        'GIVEN list has less than 11 elements '
        'THEN return size of the list.',
        () {
          // Arrange
          final list = KtList.from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
          final list10 = List10(list);

          // Act
          final underTest = list10.length;

          // Assert
          expect(underTest, list.size);
        },
      );

      test(
        'GIVEN list has more than 10 elements '
        'THEN throw UnexpectedValueError.',
        () {
          // Arrange
          final list = KtList.from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]);
          final list10 = List10(list);

          // Act & Assert
          expect(
            () => list10.length,
            throwsA(isA<UnexpectedValueError>()),
          );
        },
      );
    });

    group('isFull', () {
      test(
        'GIVEN list has less than 10 elements '
        'THEN return false.',
        () {
          // Arrange
          final list = KtList.from([1, 2, 3, 4, 5, 6, 7, 8, 9]);
          final list10 = List10(list);

          // Act
          final underTest = list10.isFull;

          // Assert
          expect(underTest, false);
        },
      );

      test(
        'GIVEN list has 10 elements '
        'THEN return true.',
        () {
          // Arrange
          final list = KtList.from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
          final list10 = List10(list);

          // Act
          final underTest = list10.isFull;

          // Assert
          expect(underTest, true);
        },
      );

      test(
        'GIVEN list has more than 10 elements '
        'THEN throw UnexpectedValueError.',
        () {
          // Arrange
          final list = KtList.from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]);
          final list10 = List10(list);

          // Act & Assert
          expect(
            () => list10.isFull,
            throwsA(isA<UnexpectedValueError>()),
          );
        },
      );
    });
  });

  group('NotEmptyList', () {
    group('value', () {
      test(
        'GIVEN list has more than 0 elements '
        'THEN return right containing list.',
        () {
          // Arrange
          final list = KtList.from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
          final notEmptyList = NotEmptyList(list);

          // Act
          final underTest = notEmptyList.value;

          // Assert
          expect(underTest, right(list));
        },
      );

      test(
        'GIVEN list has 0 elements '
        'THEN return left containing failure list too long.',
        () {
          // Arrange
          const list = KtList.empty();
          final notEmptyList = NotEmptyList(list);

          // Act
          final underTest = notEmptyList.value;

          // Assert
          expect(
            underTest,
            left(const ValueFailure.emptyList(failedValue: list)),
          );
        },
      );
    });

    group('getOrCrash', () {
      test(
        'GIVEN list has more than 0 elements '
        'THEN return right containing list.',
        () {
          // Arrange
          final list = KtList.from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
          final notEmptyList = NotEmptyList(list);

          // Act
          final underTest = notEmptyList.getOrCrash();

          // Assert
          expect(underTest, list);
        },
      );

      test(
        'GIVEN list has 0 elements '
        'THEN throw UnexpectedValueError .',
        () {
          // Arrange
          const list = KtList.empty();
          final notEmptyList = NotEmptyList(list);

          // Act & Assert
          expect(
            () => notEmptyList.getOrCrash(),
            throwsA(isA<UnexpectedValueError>()),
          );
        },
      );
    });

    group('isValid', () {
      test(
        'GIVEN list has more than 0 elements '
        'THEN return true.',
        () {
          // Arrange
          final list = KtList.from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
          final notEmptyList = NotEmptyList(list);

          // Act
          final underTest = notEmptyList.isValid();

          // Assert
          expect(underTest, true);
        },
      );

      test(
        'GIVEN list has 0 elements '
        'THEN return false .',
        () {
          // Arrange
          const list = KtList.empty();
          final notEmptyList = NotEmptyList(list);

          // Act
          final underTest = notEmptyList.isValid();

          // Assert
          expect(underTest, false);
        },
      );
    });

    group('==', () {
      test(
        'GIVEN list1 is same instance as list2 '
        'THEN return true.',
        () {
          // Arrange

          final list1 = NotEmptyList(KtList.from([1, 2, 3, 4, 5]));
          final list2 = list1;

          // Act & Assert
          expect(list1 == list2, true);
        },
      );

      test(
        'GIVEN list1 equals list1 and is valid notEmptyList '
        'THEN return true.',
        () {
          // Arrange
          final list1 = NotEmptyList(KtList.from([1, 2, 3, 4, 5]));
          final list2 = NotEmptyList(KtList.from([1, 2, 3, 4, 5]));

          // Act & Assert
          expect(list1 == list2, true);
        },
      );

      test(
        'GIVEN list1 equals list1 and is not valid notEmptyList '
        'THEN return true.',
        () {
          // Arrange
          final list1 = NotEmptyList(const KtList.empty());
          final list2 = NotEmptyList(const KtList.empty());

          // Act & Assert
          expect(list1 == list2, true);
        },
      );

      test(
        'GIVEN list1 is not equal to list2 '
        'THEN return false.',
        () {
          // Arrange
          final list1 =
              NotEmptyList(KtList.from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]));
          final list2 = NotEmptyList(KtList.from([1, 2, 3, 4, 5, 6]));

          // Act & Assert
          expect(list1 == list2, false);
        },
      );
    });

    group('hashCode', () {
      test('Return the hashCode of the notEmptyLists value.', () {
        // Arrange
        final notEmptyList = NotEmptyList(KtList.from([1, 2, 3, 4, 5]));

        // Act
        final underTest = notEmptyList.hashCode;

        // Assert
        expect(underTest, notEmptyList.value.hashCode);
      });
    });

    group('toString', () {
      test(
          'Return Value(X) where X is the notEmptyLists value string representation.',
          () {
        // Arrange
        final notEmptyList = NotEmptyList(KtList.from([1, 2, 3, 4, 5]));

        // Act
        final underTest = notEmptyList.toString();

        // Assert
        expect(underTest, 'Value(${notEmptyList.value})');
      });
    });

    group('length', () {
      test(
        'GIVEN list has more than 0 elements '
        'THEN return the size of list.',
        () {
          // Arrange
          final list = KtList.from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
          final notEmptyList = NotEmptyList(list);

          // Act
          final underTest = notEmptyList.length;

          // Assert
          expect(underTest, list.size);
        },
      );

      test(
        'GIVEN list has 0 elements '
        'THEN throw UnexpectedValueError .',
        () {
          // Arrange
          const list = KtList.empty();
          final notEmptyList = NotEmptyList(list);

          // Act & Assert
          expect(
            () => notEmptyList.length,
            throwsA(isA<UnexpectedValueError>()),
          );
        },
      );
    });
  });
}
