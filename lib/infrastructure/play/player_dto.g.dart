// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfflinePlayerDto _$_$_OfflinePlayerDtoFromJson(Map<String, dynamic> json) {
  return _$_OfflinePlayerDto(
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
    sets: (json['sets'] as List<dynamic>?)
        ?.map((e) => SetDto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_OfflinePlayerDtoToJson(
        _$_OfflinePlayerDto instance) =>
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

_$_DartBotDto _$_$_DartBotDtoFromJson(Map<String, dynamic> json) {
  return _$_DartBotDto(
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
    sets: (json['sets'] as List<dynamic>?)
        ?.map((e) => SetDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    targetAverage: json['targetAverage'] as int,
  );
}

Map<String, dynamic> _$_$_DartBotDtoToJson(_$_DartBotDto instance) =>
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
      'targetAverage': instance.targetAverage,
    };

_$_OnlinePlayerDto _$_$_OnlinePlayerDtoFromJson(Map<String, dynamic> json) {
  return _$_OnlinePlayerDto(
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
    sets: (json['sets'] as List<dynamic>?)
        ?.map((e) => SetDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    userId: json['userId'] as String,
  );
}

Map<String, dynamic> _$_$_OnlinePlayerDtoToJson(_$_OnlinePlayerDto instance) =>
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
      'userId': instance.userId,
    };
