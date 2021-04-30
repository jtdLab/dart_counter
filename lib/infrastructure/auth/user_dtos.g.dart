// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$_$_UserDtoFromJson(Map<String, dynamic> json) {
  return _$_UserDto(
    emailAddress: json['emailAddress'] as String,
    profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
    createdAt: const ServerTimestampConverter().fromJson(json['createdAt']),
  );
}

Map<String, dynamic> _$_$_UserDtoToJson(_$_UserDto instance) {
  final val = <String, dynamic>{
    'emailAddress': instance.emailAddress,
    'profile': instance.profile.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'createdAt', const ServerTimestampConverter().toJson(instance.createdAt));
  return val;
}

_$_ProfileDto _$_$_ProfileDtoFromJson(Map<String, dynamic> json) {
  return _$_ProfileDto(
    photoUrl: json['photoUrl'] as String?,
    username: json['username'] as String,
  );
}

Map<String, dynamic> _$_$_ProfileDtoToJson(_$_ProfileDto instance) =>
    <String, dynamic>{
      'photoUrl': instance.photoUrl,
      'username': instance.username,
    };

_$_CareerStatsDto _$_$_CareerStatsDtoFromJson(Map<String, dynamic> json) {
  return _$_CareerStatsDto(
    average: (json['average'] as num).toDouble(),
    averageTrend: json['averageTrend'] as String,
    checkoutPercentage: (json['checkoutPercentage'] as num).toDouble(),
    checkoutPercentageTrend: json['checkoutPercentageTrend'] as String,
    firstNine: (json['firstNine'] as num).toDouble(),
    firstNineTrend: json['firstNineTrend'] as String,
    games: json['games'] as int,
    wins: json['wins'] as int,
    defeats: json['defeats'] as int,
  );
}

Map<String, dynamic> _$_$_CareerStatsDtoToJson(_$_CareerStatsDto instance) =>
    <String, dynamic>{
      'average': instance.average,
      'averageTrend': instance.averageTrend,
      'checkoutPercentage': instance.checkoutPercentage,
      'checkoutPercentageTrend': instance.checkoutPercentageTrend,
      'firstNine': instance.firstNine,
      'firstNineTrend': instance.firstNineTrend,
      'games': instance.games,
      'wins': instance.wins,
      'defeats': instance.defeats,
    };
