import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/user/user.dart';

import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';
import 'package:dart_counter/infrastructure/play/game_dto.dart';
import 'package:dart_counter/infrastructure/user/career_stats_dto.dart';
import 'package:dart_counter/infrastructure/user/profile_dto.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    @JsonKey(ignore: true) String? id, // TODO ignore and nullable fix
    required String emailAddress,
    required ProfileDto profile,
    required CareerStatsDto careerStatsOnline,
    required CareerStatsDto careerStatsOffline,
    required List<GameDto> gameHistoryOnline,
    required List<GameDto> gameHistoryOffline,
    @JsonKey(includeIfNull: false)
    @ServerTimestampConverter()
        FieldValue? createdAt,
  }) = _UserDto;

  const UserDto._();

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id.getOrCrash(),
      emailAddress: user.emailAddress.getOrCrash(),
      profile: ProfileDto.fromDomain(user.profile),
      careerStatsOnline: CareerStatsDto.fromDomain(user.careerStatsOnline),
      careerStatsOffline: CareerStatsDto.fromDomain(user.careerStatsOffline),
      gameHistoryOnline: user.gameHistoryOnline.getOrCrash().map((game) => GameDto.fromDomain(game)).asList(),
      gameHistoryOffline: user.gameHistoryOffline.getOrCrash().map((game) => GameDto.fromDomain(game)).asList(),
      createdAt: FieldValue.serverTimestamp(),
    );
  }

  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(id!),
      emailAddress: EmailAddress(emailAddress),
      profile: profile.toDomain(),
      careerStatsOnline: careerStatsOnline.toDomain(),
      careerStatsOffline: careerStatsOffline.toDomain(),
      gameHistoryOnline: List10(gameHistoryOnline.map((gameDto) => gameDto.toDomain()).toImmutableList()),
      gameHistoryOffline: List10(gameHistoryOffline.map((gameDto) => gameDto.toDomain()).toImmutableList()),
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
      
  /**
   * factory UserDto.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data();
    if (data == null) throw Error(); // TODO specify error
    return UserDto.fromJson(data).copyWith(id: doc.id);
  }
   */
}
