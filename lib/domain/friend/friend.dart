import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/profile.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend.freezed.dart';

@freezed
class Friend with _$Friend {
  // coverage:ignore-start
  const factory Friend({
    required UniqueId id,
    required Profile profile,
  }) = _Friend;

  factory Friend.dummy() => Friend(
        id: UniqueId.fromUniqueString(faker.randomGenerator.string(10)),
        profile: Profile.dummy(),
      );
  // coverage:ignore-end
}
