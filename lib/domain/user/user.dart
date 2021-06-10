import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/domain/user/profile.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required UniqueId id,
    required EmailAddress emailAddress,
    required Profile profile,
    required CareerStats careerStatsOnline,
    required CareerStats careerStatsOffline,
    required List10<Game> gameHistoryOnline,
    required List10<Game> gameHistoryOffline,
  }) = _User;

  factory User.dummy() {
    final faker = Faker();

    return User(
      id: UniqueId.fromUniqueString(faker.randomGenerator.string(28, min: 28)),
      emailAddress: EmailAddress(faker.internet.email()),
      profile: Profile.dummy(),
      careerStatsOffline: CareerStats.dummy(),
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
      gameHistoryOffline: List10(
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
}
