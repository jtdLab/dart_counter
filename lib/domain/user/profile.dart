import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'career_stats.dart';

part 'profile.freezed.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({
    String? photoUrl,
    required Username username,
    required CareerStats careerStatsOnline,
  }) = _Profile;

  factory Profile.dummy() => Profile(
        photoUrl: faker.image.image(width: 200, height: 200),
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
