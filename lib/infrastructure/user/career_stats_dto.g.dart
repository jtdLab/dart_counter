// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'career_stats_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CareerStatsDto _$_$_CareerStatsDtoFromJson(Map<String, dynamic> json) {
  return _$_CareerStatsDto(
    average: (json['average'] as num).toDouble(),
    averageTrend: json['averageTrend'] as String,
    checkoutPercentage: (json['checkoutPercentage'] as num).toDouble(),
    checkoutPercentageTrend: json['checkoutPercentageTrend'] as String,
    firstNine: (json['firstNine'] as num).toDouble(),
    firstNineTrend: json['firstNineTrend'] as String,
    games: json['games'] as int,
    wins: json['wins'] as int,
    defeats: json['defeats'] as int,
  );
}

Map<String, dynamic> _$_$_CareerStatsDtoToJson(_$_CareerStatsDto instance) =>
    <String, dynamic>{
      'average': instance.average,
      'averageTrend': instance.averageTrend,
      'checkoutPercentage': instance.checkoutPercentage,
      'checkoutPercentageTrend': instance.checkoutPercentageTrend,
      'firstNine': instance.firstNine,
      'firstNineTrend': instance.firstNineTrend,
      'games': instance.games,
      'wins': instance.wins,
      'defeats': instance.defeats,
    };
