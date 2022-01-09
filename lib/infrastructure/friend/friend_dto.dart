import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/infrastructure/user/profile_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_dto.freezed.dart';
part 'friend_dto.g.dart';

@freezed
class FriendDto with _$FriendDto {
  const factory FriendDto({
    required String id,
    required ProfileDto profile,
  }) = _FriendDto;

  const FriendDto._();

  factory FriendDto.fromDomain(Friend friend) {
    return FriendDto(
      id: friend.id.getOrCrash(),
      profile: ProfileDto.fromDomain(friend.profile),
    );
  }

  Friend toDomain() {
    return Friend(
      id: UniqueId.fromUniqueString(id),
      profile: profile.toDomain(),
    );
  }

  factory FriendDto.fromJson(Map<String, dynamic> json) =>
      _$FriendDtoFromJson(json);
}
