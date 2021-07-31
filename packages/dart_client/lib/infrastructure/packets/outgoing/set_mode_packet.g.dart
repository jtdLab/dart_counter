// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_mode_packet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SetModePacket _$_$_SetModePacketFromJson(Map<String, dynamic> json) {
  return _$_SetModePacket(
    mode: _$enumDecode(_$ModeEnumMap, json['mode']),
  );
}

Map<String, dynamic> _$_$_SetModePacketToJson(_$_SetModePacket instance) =>
    <String, dynamic>{
      'mode': _$ModeEnumMap[instance.mode],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$ModeEnumMap = {
  Mode.firstTo: 'firstTo',
  Mode.bestOf: 'bestOf',
};
