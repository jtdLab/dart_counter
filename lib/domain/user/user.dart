import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/domain/user/profile.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'user.freezed.dart';

/// Domain model of an app-user.
@freezed
class User with _$User {
  const factory User({
    required UniqueId id,
    required String idToken,
    required EmailAddress emailAddress,
    required Profile profile,
    required KtList<UniqueId> friendIds,
    required CareerStats careerStatsOffline,
  }) = _User;

  factory User.dummy() {
    return User(
      id: UniqueId.fromUniqueString(
        faker.randomGenerator.string(28, min: 28),
      ),
      idToken: faker.randomGenerator.string(28, min: 28),
      emailAddress: EmailAddress(faker.internet.email()),
      profile: Profile.dummy(),
      friendIds: KtList.from([
        UniqueId.fromUniqueString('dummyFriendId1'),
        UniqueId.fromUniqueString('dummyFriendId2'),
        UniqueId.fromUniqueString('dummyFriendId3'),
      ]),
      careerStatsOffline: CareerStats.dummy(),
    );
  }
}
