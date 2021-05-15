// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlayerDto _$_$_PlayerDtoFromJson(Map<String, dynamic> json) {
  return _$_PlayerDto(
    id: json['id'] as String?,
    name: json['name'] as String?,
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
    sets: (json['sets'] as List<dynamic>?)
        ?.map((e) => SetDto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_PlayerDtoToJson(_$_PlayerDto instance) =>
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
      'sets': instance.sets?.map((e) => e.toJson()).toList(),
    };
