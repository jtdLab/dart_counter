// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_snapshot_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameSnapshotDto _$_$_GameSnapshotDtoFromJson(Map<String, dynamic> json) {
  return _$_GameSnapshotDto(
    status: json['status'] as String,
    mode: json['mode'] as String,
    size: json['size'] as int,
    type: json['type'] as String,
    startingPoints: json['startingPoints'] as int,
    players: (json['players'] as List<dynamic>)
        .map((e) => PlayerSnapshotDto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_GameSnapshotDtoToJson(_$_GameSnapshotDto instance) =>
    <String, dynamic>{
      'status': instance.status,
      'mode': instance.mode,
      'size': instance.size,
      'type': instance.type,
      'startingPoints': instance.startingPoints,
      'players': instance.players.map((e) => e.toJson()).toList(),
    };
