// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameDto _$_$_GameDtoFromJson(Map<String, dynamic> json) {
  return _$_GameDto(
    id: json['id'] as String,
    createdAt: DateTime.parse(json['createdAt'] as String),
    online: json['online'] as bool,
    status: json['status'] as String,
    mode: json['mode'] as String,
    size: json['size'] as int,
    type: json['type'] as String,
    startingPoints: json['startingPoints'] as int,
    players: (json['players'] as List<dynamic>)
        .map((e) =>
            const PlayerDtoConverter().fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_GameDtoToJson(_$_GameDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'online': instance.online,
      'status': instance.status,
      'mode': instance.mode,
      'size': instance.size,
      'type': instance.type,
      'startingPoints': instance.startingPoints,
      'players':
          instance.players.map(const PlayerDtoConverter().toJson).toList(),
    };
