import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'career_stats_dto.dart';

part 'profile_dto.freezed.dart';
part 'profile_dto.g.dart';

/// Data transfer object corresponing to [Profile].
@freezed
class ProfileDto with _$ProfileDto {
  const factory ProfileDto({
    required String? photoUrl,
    required String name,
    required CareerStatsDto careerStatsOnline,
  }) = _ProfileDto;

  const ProfileDto._();

  factory ProfileDto.fromDomain(Profile profile) {
    return ProfileDto(
      photoUrl: profile.photoUrl,
      name: profile.name.getOrCrash(),
      careerStatsOnline: CareerStatsDto.fromDomain(profile.careerStatsOnline),
    );
  }

  Profile toDomain() {
    return Profile(
      photoUrl: photoUrl,
      name: Username(name),
      careerStatsOnline: careerStatsOnline.toDomain(),
    );
  }

  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);
}
