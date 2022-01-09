// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_type_packet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SetTypePacket _$$_SetTypePacketFromJson(Map<String, dynamic> json) =>
    _$_SetTypePacket(
      type: $enumDecode(_$TypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_SetTypePacketToJson(_$_SetTypePacket instance) =>
    <String, dynamic>{
      'type': _$TypeEnumMap[instance.type],
    };

const _$TypeEnumMap = {
  Type.legs: 'legs',
  Type.sets: 'sets',
};
