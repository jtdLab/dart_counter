import 'package:dart_counter/domain/core/errors.dart';
import 'package:dart_counter/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/kt.dart';
import 'package:uuid/uuid.dart';

part 'value_validators.dart';

/// Base class for domain specific object holding either [T] or a [ValueFailure].
@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Returns the value of this value object.
  ///
  /// Throws [UnexpectedValueError] if this contains a [ValueFailure].
  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

/// A value object containing valid email or failure.
class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(
    String emailString,
  ) {
    return EmailAddress._(_validateEmailAddress(emailString: emailString));
  }

  factory EmailAddress.empty() {
    return EmailAddress('');
  }

  const EmailAddress._(this.value);
}

/// A value object containing valid username or failure.
class Username extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Username(
    String usernameString,
  ) {
    return Username._(_validateUsername(usernameString: usernameString));
  }

  factory Username.empty() {
    return Username('');
  }

  const Username._(this.value);
}

/// A value object containing valid password or failure.
class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(
    String passwordString,
  ) {
    return Password._(_validatePassword(passwordString: passwordString));
  }

  factory Password.empty() {
    return Password('');
  }

  const Password._(this.value);
}

/// A value object containing unique uid or failure.
class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(
      right(const Uuid().v1()),
    );
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(
      right(uniqueId),
    );
  }

  const UniqueId._(this.value);
}

/// A value object containing a list with max. length of 10 or failure.
class List10<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 10;

  factory List10(
    KtList<T> list,
  ) {
    return List10._(_validateMaxListLength(list: list, maxLength: maxLength));
  }

  factory List10.empty() => List10(const KtList.empty());

  const List10._(this.value);

  int get length {
    return getOrCrash().size;
  }

  bool get isFull {
    return length == maxLength;
  }
}

/// A value object containing a not empty list or failure.
class NotEmptyList<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  factory NotEmptyList(
    KtList<T> list,
  ) {
    return NotEmptyList._(_validateNotEmptyList(list: list));
  }

  const NotEmptyList._(this.value);

  int get length {
    return getOrCrash().size;
  }
}
