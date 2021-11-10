import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/user.dart';
import 'package:dart_counter/infrastructure/user/profile_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required String id,
    required ProfileDto profile,
  }) = _UserDto;

  const UserDto._();

  factory UserDto.fromDomain(User friend) {
    return UserDto(
      id: friend.id.getOrCrash(),
      profile: ProfileDto.fromDomain(friend.profile),
    );
  }

  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(id),
      profile: profile.toDomain(),
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
