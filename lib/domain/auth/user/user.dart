import 'package:dart_counter/domain/auth/value_objects.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/profile/profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User{
  const factory User({
    required UniqueId id,
    required EmailAddress emailAddress,
    required Profile profile,
  }) = _User;
}