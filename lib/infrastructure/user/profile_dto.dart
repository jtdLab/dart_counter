import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_dto.freezed.dart';
part 'profile_dto.g.dart';

@freezed
class ProfileDto with _$ProfileDto {
  const factory ProfileDto({
    required String? photoUrl,
    required String username,
  }) = _ProfileDto;

  const ProfileDto._();

  factory ProfileDto.fromDomain(Profile profile) {
    return ProfileDto(
      photoUrl: profile.photoUrl,
      username: profile.username.getOrCrash(),
    );
  }

  Profile toDomain() {
    return Profile(
      photoUrl: photoUrl,
      username: Username(username),
    );
  }

  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);
}
