// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_type_packet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SetTypePacket _$_$_SetTypePacketFromJson(Map<String, dynamic> json) {
  return _$_SetTypePacket(
    type: _$enumDecode(_$TypeEnumMap, json['type']),
  );
}

Map<String, dynamic> _$_$_SetTypePacketToJson(_$_SetTypePacket instance) =>
    <String, dynamic>{
      'type': _$TypeEnumMap[instance.type],
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

const _$TypeEnumMap = {
  Type.legs: 'legs',
  Type.sets: 'sets',
};
