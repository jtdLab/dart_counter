import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/domain/user/profile.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'friend.freezed.dart';

@freezed
class Friend with _$Friend {
  const factory Friend({
    required UniqueId id,
    required Profile profile,
    required CareerStats careerStatsOnline,
    required List10<Game> gameHistoryOnline,
  }) = _Friend;

  factory Friend.dummy() => Friend(
        id: UniqueId.fromUniqueString(faker.randomGenerator.string(10)),
        profile: Profile.dummy(),
        careerStatsOnline: CareerStats.dummy(),
        gameHistoryOnline: List10(
          KtList.from([
            Game.dummy(),
            Game.dummy(),
            Game.dummy(),
            Game.dummy(),
            Game.dummy(),
          ]),
        ),
      );
}
