// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SetDto _$$_SetDtoFromJson(Map<String, dynamic> json) => _$_SetDto(
      legs: (json['legs'] as List<dynamic>)
          .map((e) => LegDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SetDtoToJson(_$_SetDto instance) => <String, dynamic>{
      'legs': instance.legs.map((e) => e.toJson()).toList(),
    };
