// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_invitation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameInvitationDto _$_$_GameInvitationDtoFromJson(Map<String, dynamic> json) {
  return _$_GameInvitationDto(
    id: json['id'] as String,
    gameId: json['gameId'] as String,
    toId: json['toId'] as String,
    fromId: json['fromId'] as String,
    fromName: json['fromName'] as String,
    read: json['read'] as bool,
    createdAt: const ServerTimestampConverter().fromJson(json['createdAt']),
  );
}

Map<String, dynamic> _$_$_GameInvitationDtoToJson(
        _$_GameInvitationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gameId': instance.gameId,
      'toId': instance.toId,
      'fromId': instance.fromId,
      'fromName': instance.fromName,
      'read': instance.read,
      'createdAt': const ServerTimestampConverter().toJson(instance.createdAt),
    };
