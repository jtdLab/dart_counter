// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameDto _$_$_GameDtoFromJson(Map<String, dynamic> json) {
  return _$_GameDto(
    id: json['id'] as String?,
    status: json['status'] as String,
    mode: json['mode'] as String,
    size: json['size'] as int,
    type: json['type'] as String,
    startingPoints: json['startingPoints'] as int,
    players: (json['players'] as List<dynamic>)
        .map((e) => PlayerDto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_GameDtoToJson(_$_GameDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'mode': instance.mode,
      'size': instance.size,
      'type': instance.type,
      'startingPoints': instance.startingPoints,
      'players': instance.players.map((e) => e.toJson()).toList(),
    };
