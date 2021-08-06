// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_game_response_packet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JoinGameResponsePacket _$_$_JoinGameResponsePacketFromJson(
    Map<String, dynamic> json) {
  return _$_JoinGameResponsePacket(
    successful: json['successful'] as bool,
    snapshot: json['snapshot'] == null
        ? null
        : GameSnapshotDto.fromJson(json['snapshot'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_JoinGameResponsePacketToJson(
        _$_JoinGameResponsePacket instance) =>
    <String, dynamic>{
      'successful': instance.successful,
      'snapshot': instance.snapshot?.toJson(),
    };
