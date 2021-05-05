import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/auth/value_objects.dart';
import 'package:dart_counter/domain/careerStats/career_stats.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/profile/profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    @JsonKey(ignore: true) String? id, // TODO ignore and nullable fix
    required String emailAddress,
    required ProfileDto profile,
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
      createdAt: FieldValue.serverTimestamp(),
    );
  }

  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(id!),
      emailAddress: EmailAddress(emailAddress),
      profile: profile.toDomain(),
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data();
    if (data == null) throw Error(); // TODO specify error
    return UserDto.fromJson(data).copyWith(id: doc.id);
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue?, Object?> {
  const ServerTimestampConverter();

  @override
  FieldValue? fromJson(Object? json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object? toJson(FieldValue? fieldValue) =>
      fieldValue ?? FieldValue.serverTimestamp();
}

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

@freezed
class CareerStatsDto with _$CareerStatsDto {
  const factory CareerStatsDto({
    required double average,
    required String averageTrend,
    required double checkoutPercentage,
    required String checkoutPercentageTrend,
    required double firstNine,
    required String firstNineTrend,
    required int games,
    required int wins,
    required int defeats,
  }) = _CareerStatsDto;

  const CareerStatsDto._();

  factory CareerStatsDto.fromDomain(CareerStats careerStats) {
    return CareerStatsDto(
      average: careerStats.average,
      averageTrend: careerStats.averageTrend.toString().split('.')[1],
      checkoutPercentage: careerStats.checkoutPercentage,
      checkoutPercentageTrend:
          careerStats.checkoutPercentageTrend.toString().split('.')[1],
      firstNine: careerStats.firstNine,
      firstNineTrend: careerStats.firstNineTrend.toString().split('.')[1],
      games: careerStats.games,
      wins: careerStats.wins,
      defeats: careerStats.defeats,
    );
  }

  CareerStats toDomain() {
    return CareerStats(
      average: average,
      averageTrend:
          Trend.values.firstWhere((e) => e.toString() == 'Trend.$averageTrend'),
      checkoutPercentage: checkoutPercentage,
      checkoutPercentageTrend: Trend.values
          .firstWhere((e) => e.toString() == 'Trend.$checkoutPercentageTrend'),
      firstNine: firstNine,
      firstNineTrend: Trend.values
          .firstWhere((e) => e.toString() == 'Trend.$firstNineTrend'),
      games: games,
      wins: wins,
      defeats: defeats,
    );
  }

  factory CareerStatsDto.fromJson(Map<String, dynamic> json) =>
      _$CareerStatsDtoFromJson(json);
}
