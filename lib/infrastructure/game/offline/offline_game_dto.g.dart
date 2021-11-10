// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offline_game_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfflineGameDto _$$_OfflineGameDtoFromJson(Map<String, dynamic> json) =>
    _$_OfflineGameDto(
      id: json['id'] as String,
      createdAt: json['createdAt'] as int,
      status: json['status'] as String,
      mode: json['mode'] as String,
      size: json['size'] as int,
      type: json['type'] as String,
      startingPoints: json['startingPoints'] as int,
      players: (json['players'] as List<dynamic>)
          .map((e) => const AbstractOfflinePlayerDtoConverter()
              .fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OfflineGameDtoToJson(_$_OfflineGameDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'status': instance.status,
      'mode': instance.mode,
      'size': instance.size,
      'type': instance.type,
      'startingPoints': instance.startingPoints,
      'players': instance.players
          .map(const AbstractOfflinePlayerDtoConverter().toJson)
          .toList(),
    };
