// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      id: json['id'] as String,
      idToken: json['idToken'] as String?,
      email: json['email'] as String,
      profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
      friends:
          (json['friends'] as List<dynamic>).map((e) => e as String).toList(),
      careerStatsOffline: CareerStatsDto.fromJson(
          json['careerStatsOffline'] as Map<String, dynamic>),
      createdAt: const ServerTimestampConverter().fromJson(json['createdAt']),
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idToken': instance.idToken,
      'email': instance.email,
      'profile': instance.profile.toJson(),
      'friends': instance.friends,
      'careerStatsOffline': instance.careerStatsOffline.toJson(),
      'createdAt': const ServerTimestampConverter().toJson(instance.createdAt),
    };
