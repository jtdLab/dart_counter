// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfflinePlayerDto _$$_OfflinePlayerDtoFromJson(Map<String, dynamic> json) =>
    _$_OfflinePlayerDto(
      id: json['id'] as String,
      name: json['name'] as String,
      legsOrSets: const LegsOrSetsConverter()
          .fromJson(json['legsOrSets'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OfflinePlayerDtoToJson(_$_OfflinePlayerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'legsOrSets': const LegsOrSetsConverter().toJson(instance.legsOrSets),
    };

_$_DartBotDto _$$_DartBotDtoFromJson(Map<String, dynamic> json) =>
    _$_DartBotDto(
      id: json['id'] as String,
      name: json['name'] as String,
      legsOrSets: const LegsOrSetsConverter()
          .fromJson(json['legsOrSets'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DartBotDtoToJson(_$_DartBotDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'legsOrSets': const LegsOrSetsConverter().toJson(instance.legsOrSets),
    };

_$_OnlinePlayerDto _$$_OnlinePlayerDtoFromJson(Map<String, dynamic> json) =>
    _$_OnlinePlayerDto(
      id: json['id'] as String,
      name: json['name'] as String,
      legsOrSets: const LegsOrSetsConverter()
          .fromJson(json['legsOrSets'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OnlinePlayerDtoToJson(_$_OnlinePlayerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'legsOrSets': const LegsOrSetsConverter().toJson(instance.legsOrSets),
    };
