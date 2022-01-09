// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FriendDto _$$_FriendDtoFromJson(Map<String, dynamic> json) => _$_FriendDto(
      id: json['id'] as String,
      profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FriendDtoToJson(_$_FriendDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile': instance.profile.toJson(),
    };
