// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FriendRequestDto _$$_FriendRequestDtoFromJson(Map<String, dynamic> json) =>
    _$_FriendRequestDto(
      id: json['id'] as String,
      toId: json['toId'] as String,
      fromId: json['fromId'] as String,
      fromName: json['fromName'] as String,
      read: json['read'] as bool,
      createdAt: json['createdAt'] as int,
    );

Map<String, dynamic> _$$_FriendRequestDtoToJson(_$_FriendRequestDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'toId': instance.toId,
      'fromId': instance.fromId,
      'fromName': instance.fromName,
      'read': instance.read,
      'createdAt': instance.createdAt,
    };
