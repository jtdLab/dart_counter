// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_snapshot_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlayerSnapshotDto _$$_PlayerSnapshotDtoFromJson(Map<String, dynamic> json) =>
    _$_PlayerSnapshotDto(
      id: json['id'] as String,
      name: json['name'] as String,
      isCurrentTurn: json['isCurrentTurn'] as bool?,
      won: json['won'] as bool?,
      wonSets: json['wonSets'] as int?,
      wonLegsCurrentSet: json['wonLegsCurrentSet'] as int?,
      pointsLeft: json['pointsLeft'] as int?,
      finishRecommendation: (json['finishRecommendation'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lastPoints: json['lastPoints'] as int?,
      dartsThrownCurrentLeg: json['dartsThrownCurrentLeg'] as int?,
      stats: json['stats'] == null
          ? null
          : StatsDto.fromJson(json['stats'] as Map<String, dynamic>),
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$_PlayerSnapshotDtoToJson(
        _$_PlayerSnapshotDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isCurrentTurn': instance.isCurrentTurn,
      'won': instance.won,
      'wonSets': instance.wonSets,
      'wonLegsCurrentSet': instance.wonLegsCurrentSet,
      'pointsLeft': instance.pointsLeft,
      'finishRecommendation': instance.finishRecommendation,
      'lastPoints': instance.lastPoints,
      'dartsThrownCurrentLeg': instance.dartsThrownCurrentLeg,
      'stats': instance.stats?.toJson(),
      'userId': instance.userId,
    };
