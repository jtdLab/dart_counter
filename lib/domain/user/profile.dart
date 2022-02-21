import 'dart:typed_data';

import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

/// Domain model of an app-users profile.
@freezed
class Profile with _$Profile {
  // coverage:ignore-start
  const factory Profile({
    Uint8List? photo,
    String? photoUrl,
    required Username name,
    required CareerStats careerStatsOnline,
  }) = _Profile;

  factory Profile.dummy() => Profile(
        photo: null,
        photoUrl: faker.image.image(width: 200, height: 200, random: true),
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
        careerStatsOnline: CareerStats.dummy(),
      );
  // coverage:ignore-end
}
