import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_snapshot.freezed.dart';

@freezed
class UserSnapshot with _$UserSnapshot {
  const factory UserSnapshot({
    required UniqueId id,
    String? photoUrl,
    required Username name,
  }) = _UserSnapshot;

  factory UserSnapshot.dummy() => UserSnapshot(
        id: UniqueId.fromUniqueString(faker.randomGenerator.string(10)),
        photoUrl: faker.image.image(width: 200, height: 200),
        name: Username(
          faker.randomGenerator.element([
            'David88',
            'mrjosch',
            'SebiAbi69',
            'HoeHoe',
            'Soldier48',
            'Needs',
            'egesit',
            'AnisAbi',
          ]),
        ),
      );
}
