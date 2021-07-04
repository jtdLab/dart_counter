// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatsDto _$_$_StatsDtoFromJson(Map<String, dynamic> json) {
  return _$_StatsDto(
    average: (json['average'] as num).toDouble(),
    checkoutPercentage: (json['checkoutPercentage'] as num).toDouble(),
    firstNineAverage: (json['firstNineAverage'] as num).toDouble(),
    bestLegDartsThrown: json['bestLegDartsThrown'] as int?,
    bestLegAverage: (json['bestLegAverage'] as num?)?.toDouble(),
    worstLegDartsThrown: json['worstLegDartsThrown'] as int?,
    worstLegAverage: (json['worstLegAverage'] as num?)?.toDouble(),
    averageDartsPerLeg: (json['averageDartsPerLeg'] as num?)?.toDouble(),
    highestFinish: json['highestFinish'] as int?,
    firstDartAverage: (json['firstDartAverage'] as num?)?.toDouble(),
    secondDartAverage: (json['secondDartAverage'] as num?)?.toDouble(),
    thirdDartAverage: (json['thirdDartAverage'] as num?)?.toDouble(),
    fourtyPlus: json['fourtyPlus'] as int,
    sixtyPlus: json['sixtyPlus'] as int,
    eightyPlus: json['eightyPlus'] as int,
    hundredPlus: json['hundredPlus'] as int,
    hundredTwentyPlus: json['hundredTwentyPlus'] as int,
    hundredFourtyPlus: json['hundredFourtyPlus'] as int,
    hundredSixtyPlus: json['hundredSixtyPlus'] as int,
    hundredEighty: json['hundredEighty'] as int,
  );
}

Map<String, dynamic> _$_$_StatsDtoToJson(_$_StatsDto instance) =>
    <String, dynamic>{
      'average': instance.average,
      'checkoutPercentage': instance.checkoutPercentage,
      'firstNineAverage': instance.firstNineAverage,
      'bestLegDartsThrown': instance.bestLegDartsThrown,
      'bestLegAverage': instance.bestLegAverage,
      'worstLegDartsThrown': instance.worstLegDartsThrown,
      'worstLegAverage': instance.worstLegAverage,
      'averageDartsPerLeg': instance.averageDartsPerLeg,
      'highestFinish': instance.highestFinish,
      'firstDartAverage': instance.firstDartAverage,
      'secondDartAverage': instance.secondDartAverage,
      'thirdDartAverage': instance.thirdDartAverage,
      'fourtyPlus': instance.fourtyPlus,
      'sixtyPlus': instance.sixtyPlus,
      'eightyPlus': instance.eightyPlus,
      'hundredPlus': instance.hundredPlus,
      'hundredTwentyPlus': instance.hundredTwentyPlus,
      'hundredFourtyPlus': instance.hundredFourtyPlus,
      'hundredSixtyPlus': instance.hundredSixtyPlus,
      'hundredEighty': instance.hundredEighty,
    };
