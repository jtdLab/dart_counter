// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_game_response_packet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateGameResponsePacket _$$_CreateGameResponsePacketFromJson(
        Map<String, dynamic> json) =>
    _$_CreateGameResponsePacket(
      successful: json['successful'] as bool,
      snapshot: json['snapshot'] == null
          ? null
          : GameSnapshotDto.fromJson(json['snapshot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateGameResponsePacketToJson(
        _$_CreateGameResponsePacket instance) =>
    <String, dynamic>{
      'successful': instance.successful,
      'snapshot': instance.snapshot?.toJson(),
    };
