// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SetDto _$_$_SetDtoFromJson(Map<String, dynamic> json) {
  return _$_SetDto(
    legs: (json['legs'] as List<dynamic>)
        .map((e) => LegDto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_SetDtoToJson(_$_SetDto instance) => <String, dynamic>{
      'legs': instance.legs.map((e) => e.toJson()).toList(),
    };
