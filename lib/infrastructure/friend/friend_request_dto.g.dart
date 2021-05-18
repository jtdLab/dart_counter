// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FriendRequestDto _$_$_FriendRequestDtoFromJson(Map<String, dynamic> json) {
  return _$_FriendRequestDto(
    from: json['from'] as String,
    accepted: json['accepted'] as bool?,
    read: json['read'] as bool,
    createdAt: const ServerTimestampConverter().fromJson(json['createdAt']),
  );
}

Map<String, dynamic> _$_$_FriendRequestDtoToJson(_$_FriendRequestDto instance) {
  final val = <String, dynamic>{
    'from': instance.from,
    'accepted': instance.accepted,
    'read': instance.read,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'createdAt', const ServerTimestampConverter().toJson(instance.createdAt));
  return val;
}
