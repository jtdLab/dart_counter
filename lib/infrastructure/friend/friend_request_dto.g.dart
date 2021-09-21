// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FriendRequestDto _$_$_FriendRequestDtoFromJson(Map<String, dynamic> json) {
  return _$_FriendRequestDto(
    id: json['id'] as String,
    toId: json['toId'] as String,
    fromId: json['fromId'] as String,
    fromName: json['fromName'] as String,
    read: json['read'] as bool,
    createdAt: const ServerTimestampConverter().fromJson(json['createdAt']),
  );
}

Map<String, dynamic> _$_$_FriendRequestDtoToJson(
        _$_FriendRequestDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'toId': instance.toId,
      'fromId': instance.fromId,
      'fromName': instance.fromName,
      'read': instance.read,
      'createdAt': const ServerTimestampConverter().toJson(instance.createdAt),
    };
