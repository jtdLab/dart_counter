// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'throw_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ThrowDto _$_$_ThrowDtoFromJson(Map<String, dynamic> json) {
  return _$_ThrowDto(
    points: json['points'] as int,
    dartsThrown: json['dartsThrown'] as int,
    dartsOnDouble: json['dartsOnDouble'] as int,
    darts: (json['darts'] as List<dynamic>?)
        ?.map((e) => DartDto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ThrowDtoToJson(_$_ThrowDto instance) =>
    <String, dynamic>{
      'points': instance.points,
      'dartsThrown': instance.dartsThrown,
      'dartsOnDouble': instance.dartsOnDouble,
      'darts': instance.darts?.map((e) => e.toJson()).toList(),
    };
