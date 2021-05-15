// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_invitation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameInvitationDto _$_$_GameInvitationDtoFromJson(Map<String, dynamic> json) {
  return _$_GameInvitationDto(
    from: json['from'] as String,
    lobbyCode: json['lobbyCode'] as int,
    accepted: json['accepted'] as bool?,
    read: json['read'] as bool,
  );
}

Map<String, dynamic> _$_$_GameInvitationDtoToJson(
        _$_GameInvitationDto instance) =>
    <String, dynamic>{
      'from': instance.from,
      'lobbyCode': instance.lobbyCode,
      'accepted': instance.accepted,
      'read': instance.read,
    };
