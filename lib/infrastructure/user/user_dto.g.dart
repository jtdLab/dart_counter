// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$_$_UserDtoFromJson(Map<String, dynamic> json) {
  return _$_UserDto(
    emailAddress: json['emailAddress'] as String,
    profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
    careerStatsOnline: CareerStatsDto.fromJson(
        json['careerStatsOnline'] as Map<String, dynamic>),
    careerStatsOffline: CareerStatsDto.fromJson(
        json['careerStatsOffline'] as Map<String, dynamic>),
    gameHistoryOnline: (json['gameHistoryOnline'] as List<dynamic>)
        .map((e) => OnlineGameDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    gameHistoryOffline: (json['gameHistoryOffline'] as List<dynamic>)
        .map((e) => OfflineGameDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    createdAt: const ServerTimestampConverter().fromJson(json['createdAt']),
  );
}

Map<String, dynamic> _$_$_UserDtoToJson(_$_UserDto instance) {
  final val = <String, dynamic>{
    'emailAddress': instance.emailAddress,
    'profile': instance.profile.toJson(),
    'careerStatsOnline': instance.careerStatsOnline.toJson(),
    'careerStatsOffline': instance.careerStatsOffline.toJson(),
    'gameHistoryOnline':
        instance.gameHistoryOnline.map((e) => e.toJson()).toList(),
    'gameHistoryOffline':
        instance.gameHistoryOffline.map((e) => e.toJson()).toList(),
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
