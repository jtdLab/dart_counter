import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/infrastructure/play/game_dto.dart';
import 'package:dart_counter/infrastructure/user/career_stats_dto.dart';
import 'package:dart_counter/infrastructure/user/profile_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'friend_dto.freezed.dart';
part 'friend_dto.g.dart';

@freezed
class FriendDto with _$FriendDto {
  const factory FriendDto({
    @JsonKey(ignore: true) String? id, // TODO ignore and nullable fix
    required ProfileDto profile,
    required CareerStatsDto careerStatsOnline,
    required List<GameDto> gameHistoryOnline,
  }) = _FriendDto;

  const FriendDto._();

  factory FriendDto.fromDomain(Friend friend) {
    return FriendDto(
      id: friend.id.getOrCrash(),
      profile: ProfileDto.fromDomain(friend.profile),
      careerStatsOnline: CareerStatsDto.fromDomain(friend.careerStatsOnline),
      gameHistoryOnline: friend.gameHistoryOnline
          .getOrCrash()
          .map((game) => GameDto.fromDomain(game))
          .asList(),
    );
  }

  Friend toDomain() {
    return Friend(
      id: UniqueId.fromUniqueString(id!),
      profile: profile.toDomain(),
      careerStatsOnline: careerStatsOnline.toDomain(),
      gameHistoryOnline: List10(gameHistoryOnline
          .map((gameDto) => gameDto.toDomain())
          .toImmutableList()),
    );
  }

  factory FriendDto.fromJson(Map<String, dynamic> json) =>
      _$FriendDtoFromJson(json);
}
