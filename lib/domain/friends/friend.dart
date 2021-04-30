import 'package:dart_counter/domain/auth/value_objects.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend.freezed.dart';

@freezed
class Friend with _$Friend{
  const factory Friend({
    required UniqueId id,
    required Username username,
  }) = _Friend;
}