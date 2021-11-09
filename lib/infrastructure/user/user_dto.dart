import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';
import 'package:dart_counter/infrastructure/user/career_stats_dto.dart';
import 'package:dart_counter/infrastructure/user/profile_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

/// Data transfer object corresponing to [User].
@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required String id,
    required String idToken,
    required String email,
    required ProfileDto profile,
    required List<String> friendIds,
    required CareerStatsDto careerStatsOffline,
    @ServerTimestampConverter() String? createdAt,
  }) = _UserDto;

  const UserDto._();

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id.getOrCrash(),
      idToken: user.idToken,
      email: user.email.getOrCrash(),
      profile: ProfileDto.fromDomain(user.profile),
      friendIds:
          user.friendIds.map((friendId) => friendId.getOrCrash()).asList(),
      careerStatsOffline:
          CareerStatsDto.fromDomain(user.profile.careerStatsOnline),
    );
  }

  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(id),
      idToken: idToken,
      email: EmailAddress(email),
      profile: profile.toDomain(),
      friendIds: friendIds
          .map((friendId) => UniqueId.fromUniqueString(friendId))
          .toImmutableList(),
      careerStatsOffline: careerStatsOffline.toDomain(),
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
