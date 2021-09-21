import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/user/profile.dart';
import 'package:dart_counter/infrastructure/play/game_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'career_stats_dto.dart';

part 'profile_dto.freezed.dart';
part 'profile_dto.g.dart';

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
      name: profile.username.getOrCrash(),
      careerStatsOnline: CareerStatsDto.fromDomain(profile.careerStatsOnline),
    );
  }

  Profile toDomain() {
    return Profile(
      photoUrl: photoUrl,
      username: Username(name),
      careerStatsOnline: careerStatsOnline.toDomain(),
    );
  }

  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);
}
