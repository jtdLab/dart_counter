// coverage:ignore-file

import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

/// All failures of a [ValueObject].
@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = _InvalidEmail<T>;
  const factory ValueFailure.shortUsername({
    required T failedValue,
  }) = _ShortUsername<T>;
  const factory ValueFailure.longUsername({
    required T failedValue,
  }) = _LongUsername<T>;
  const factory ValueFailure.invalidCharacters({
    required T failedValue,
  }) = _InValidCharacters<T>;
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = _ShortPassword<T>;
  const factory ValueFailure.longPassword({
    required T failedValue,
  }) = _LongPassword<T>;
  const factory ValueFailure.invalidWhitespaces({
    required T failedValue,
  }) = _InvalidWhitespaces<T>;
  const factory ValueFailure.listTooLong({
    required T failedValue,
    required int max,
  }) = _ListTooLong<T>;
  const factory ValueFailure.emptyList({
    required T failedValue,
  }) = _EmptyList<T>;
}
