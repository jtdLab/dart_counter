// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileDto _$$_ProfileDtoFromJson(Map<String, dynamic> json) =>
    _$_ProfileDto(
      photoUrl: json['photoUrl'] as String?,
      name: json['name'] as String,
      careerStatsOnline: CareerStatsDto.fromJson(
          json['careerStatsOnline'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProfileDtoToJson(_$_ProfileDto instance) =>
    <String, dynamic>{
      'photoUrl': instance.photoUrl,
      'name': instance.name,
      'careerStatsOnline': instance.careerStatsOnline.toJson(),
    };
