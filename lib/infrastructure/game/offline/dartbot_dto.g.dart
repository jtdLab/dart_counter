// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dartbot_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DartBotDto _$$_DartBotDtoFromJson(Map<String, dynamic> json) =>
    _$_DartBotDto(
      id: json['id'] as String,
      name: json['name'] as String,
      legsOrSets: const AbstractLegsOrSetsConverter()
          .fromJson(json['legsOrSets'] as List<Map<String, dynamic>>),
    );

Map<String, dynamic> _$$_DartBotDtoToJson(_$_DartBotDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'legsOrSets':
          const AbstractLegsOrSetsConverter().toJson(instance.legsOrSets),
    };
