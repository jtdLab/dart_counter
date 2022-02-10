import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/profile.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  // coverage:ignore-start
  const factory User({
    required UniqueId id,
    required Profile profile,
  }) = _User;

  factory User.dummy() => User(
        id: UniqueId.fromUniqueString(faker.randomGenerator.string(10)),
        profile: Profile.dummy(),
      );
  // coverage:ignore-end
}
