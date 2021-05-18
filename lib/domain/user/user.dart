import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/domain/user/profile.dart';
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

  factory User.dummy() => User(
        id: UniqueId.fromUniqueString('dummyUserUID'),
        emailAddress: EmailAddress('dummy@user.com'),
        profile: Profile.dummy(),
        careerStatsOffline: CareerStats.initial(),
        careerStatsOnline: CareerStats.initial(),
        gameHistoryOnline: List10(const KtList.empty()), // TODO game
        gameHistoryOffline: List10(const KtList.empty()), // TODO add game
      );
}
