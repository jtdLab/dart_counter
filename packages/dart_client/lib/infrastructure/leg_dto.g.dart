// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leg_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LegDto _$_$_LegDtoFromJson(Map<String, dynamic> json) {
  return _$_LegDto(
    throws: (json['throws'] as List<dynamic>)
        .map((e) => ThrowDto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_LegDtoToJson(_$_LegDto instance) => <String, dynamic>{
      'throws': instance.throws.map((e) => e.toJson()).toList(),
    };
