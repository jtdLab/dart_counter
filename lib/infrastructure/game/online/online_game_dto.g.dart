// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'online_game_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OnlineGameDto _$$_OnlineGameDtoFromJson(Map<String, dynamic> json) =>
    _$_OnlineGameDto(
      id: json['id'] as String,
      createdAt: json['createdAt'] as int,
      ownerId: json['ownerId'] as String,
      status: json['status'] as String,
      mode: json['mode'] as String,
      size: json['size'] as int,
      type: json['type'] as String,
      startingPoints: json['startingPoints'] as int,
      players: (json['players'] as List<dynamic>)
          .map((e) => OnlinePlayerDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OnlineGameDtoToJson(_$_OnlineGameDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'ownerId': instance.ownerId,
      'status': instance.status,
      'mode': instance.mode,
      'size': instance.size,
      'type': instance.type,
      'startingPoints': instance.startingPoints,
      'players': instance.players.map((e) => e.toJson()).toList(),
    };
