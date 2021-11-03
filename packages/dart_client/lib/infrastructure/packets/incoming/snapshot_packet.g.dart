// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snapshot_packet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SnapshotPacket _$$_SnapshotPacketFromJson(Map<String, dynamic> json) =>
    _$_SnapshotPacket(
      snapshot:
          GameSnapshotDto.fromJson(json['snapshot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SnapshotPacketToJson(_$_SnapshotPacket instance) =>
    <String, dynamic>{
      'snapshot': instance.snapshot.toJson(),
    };
