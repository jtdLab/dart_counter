// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offline_player_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfflinePlayerDto _$$_OfflinePlayerDtoFromJson(Map<String, dynamic> json) =>
    _$_OfflinePlayerDto(
      id: json['id'] as String,
      name: json['name'] as String,
      legsOrSets: const AbstractLegsOrSetsConverter()
          .fromJson(json['legsOrSets'] as List<Map<String, dynamic>>),
    );

Map<String, dynamic> _$$_OfflinePlayerDtoToJson(_$_OfflinePlayerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'legsOrSets':
          const AbstractLegsOrSetsConverter().toJson(instance.legsOrSets),
    };
