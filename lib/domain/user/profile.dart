import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'career_stats.dart';

part 'profile.freezed.dart';

/// Domain model of an app-users profile.
@freezed
class Profile with _$Profile {
  const factory Profile({
    String? photoUrl,
    required Username username,
    required CareerStats careerStatsOnline,
  }) = _Profile;

  factory Profile.dummy() => Profile(
        photoUrl: faker.image.image(width: 200, height: 200, random: true),
        username: Username(
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
        careerStatsOnline: CareerStats.dummy(),
      );
}
