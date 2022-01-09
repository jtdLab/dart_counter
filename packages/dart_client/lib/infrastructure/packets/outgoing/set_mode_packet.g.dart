// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_mode_packet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SetModePacket _$$_SetModePacketFromJson(Map<String, dynamic> json) =>
    _$_SetModePacket(
      mode: $enumDecode(_$ModeEnumMap, json['mode']),
    );

Map<String, dynamic> _$$_SetModePacketToJson(_$_SetModePacket instance) =>
    <String, dynamic>{
      'mode': _$ModeEnumMap[instance.mode],
    };

const _$ModeEnumMap = {
  Mode.firstTo: 'firstTo',
  Mode.bestOf: 'bestOf',
};
