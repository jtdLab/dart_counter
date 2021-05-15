// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FriendDto _$_$_FriendDtoFromJson(Map<String, dynamic> json) {
  return _$_FriendDto(
    profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
    careerStatsOnline: CareerStatsDto.fromJson(
        json['careerStatsOnline'] as Map<String, dynamic>),
    gameHistoryOnline: (json['gameHistoryOnline'] as List<dynamic>)
        .map((e) => GameDto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_FriendDtoToJson(_$_FriendDto instance) =>
    <String, dynamic>{
      'profile': instance.profile.toJson(),
      'careerStatsOnline': instance.careerStatsOnline.toJson(),
      'gameHistoryOnline':
          instance.gameHistoryOnline.map((e) => e.toJson()).toList(),
    };
