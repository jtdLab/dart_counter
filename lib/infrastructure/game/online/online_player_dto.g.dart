// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'online_player_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OnlinePlayerDto _$$_OnlinePlayerDtoFromJson(Map<String, dynamic> json) =>
    _$_OnlinePlayerDto(
      id: json['id'] as String,
      name: json['name'] as String,
      photoUrl: json['photoUrl'] as String?,
      legsOrSets: const AbstractLegsOrSetsConverter()
          .fromJson(json['legsOrSets'] as List<Map<String, dynamic>>),
    );

Map<String, dynamic> _$$_OnlinePlayerDtoToJson(_$_OnlinePlayerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrl': instance.photoUrl,
      'legsOrSets':
          const AbstractLegsOrSetsConverter().toJson(instance.legsOrSets),
    };
