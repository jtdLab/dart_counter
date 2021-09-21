import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';
import 'package:dart_counter/infrastructure/user/career_stats_dto.dart';
import 'package:dart_counter/infrastructure/user/profile_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required String id,
    String? idToken,
    required String email,
    required ProfileDto profile,
    required List<String> friends,
    required CareerStatsDto careerStatsOffline,
    @ServerTimestampConverter() String? createdAt,
  }) = _UserDto;

  const UserDto._();

  User toDomain({
    required String idToken,
  }) {
    return User(
      id: UniqueId.fromUniqueString(id),
      idToken: idToken,
      emailAddress: EmailAddress(email),
      profile: profile.toDomain(),
      friendIds: friends
          .map((friendId) => UniqueId.fromUniqueString(friendId))
          .toImmutableList(),
      careerStatsOffline: careerStatsOffline.toDomain(),
    );
  }

  factory UserDto.fromFirestore(DocumentSnapshot doc) {
    final json = (doc.data() ?? {}) as Map<String, dynamic>;

    json.addAll({
      'id': doc.id,
    });

    return UserDto.fromJson(json);
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
