// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      id: json['id'] as String,
      idToken: json['idToken'] as String,
      email: json['email'] as String,
      profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
      friendIds:
          (json['friendIds'] as List<dynamic>).map((e) => e as String).toList(),
      careerStatsOffline: CareerStatsDto.fromJson(
          json['careerStatsOffline'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idToken': instance.idToken,
      'email': instance.email,
      'profile': instance.profile.toJson(),
      'friendIds': instance.friendIds,
      'careerStatsOffline': instance.careerStatsOffline.toJson(),
    };
