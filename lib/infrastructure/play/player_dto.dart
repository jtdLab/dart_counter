import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/player.dart';
import 'package:dart_counter/domain/play/stats.dart';
import 'package:dart_counter/infrastructure/play/set_dto.dart';
import 'package:dart_game/dart_game.dart' as dart;
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'stats_dto.dart';

part 'player_dto.freezed.dart';
part 'player_dto.g.dart';

abstract class PlayerDto {
  String get id;
  String get name;
  bool? get isCurrentTurn;
  bool? get won;
  int? get wonSets;
  int? get wonLegsCurrentSet;
  int? get pointsLeft;
  List<String>? get finishRecommendation;
  int? get lastPoints;
  int? get dartsThrownCurrentLeg;
  StatsDto? get stats;
  List<SetDto>? get sets;
  Map<String, dynamic> toJson();
}

class PlayerDtoConverter
    implements JsonConverter<PlayerDto, Map<String, dynamic>> {
  const PlayerDtoConverter();

  @override
  PlayerDto fromJson(Map<String, dynamic> json) {
    try {
      final id = json['id'] as String;
      final name = json['name'] as String;
      final isCurrentTurn = json['isCurrentTurn'] as bool?;
      final won = json['won'] as bool?;
      final wonSets = json['wonSets'] as int?;
      final wonLegsCurrentSet = json['wonLegsCurrentSet'] as int?;
      final pointsLeft = json['pointsLeft'] as int?;
      final finishRecommendation =
          json['finishRecommendation'] as List<String>?; // TODO
      final lastPoints = json['lastPoints'] as int?;
      final dartsThrownCurrentLeg = json['dartsThrownCurrentLeg'] as int?;
      final stats = StatsDto.fromJson(json['stats'] as Map<String, dynamic>);
      final sets = json['sets'] as List<SetDto>?; // TODO

      if (json['userId'] != null) {
        final userId = json['userId'] as String;
        return OnlinePlayerDto(
          id: id,
          name: name,
          isCurrentTurn: isCurrentTurn,
          won: won,
          wonSets: wonSets,
          wonLegsCurrentSet: wonLegsCurrentSet,
          pointsLeft: pointsLeft,
          finishRecommendation: finishRecommendation,
          lastPoints: lastPoints,
          dartsThrownCurrentLeg: dartsThrownCurrentLeg,
          stats: stats,
          sets: sets,
          userId: userId,
        ) as PlayerDto;
      } else if (json['targetAverage'] != null) {
        final targetAverage = json['targetAverage'] as int;
        return DartBotDto(
          id: id,
          name: name,
          isCurrentTurn: isCurrentTurn,
          won: won,
          wonSets: wonSets,
          wonLegsCurrentSet: wonLegsCurrentSet,
          pointsLeft: pointsLeft,
          finishRecommendation: finishRecommendation,
          lastPoints: lastPoints,
          dartsThrownCurrentLeg: dartsThrownCurrentLeg,
          stats: stats,
          sets: sets,
          targetAverage: targetAverage,
        ) as PlayerDto;
      } else {
        return OfflinePlayerDto(
          id: id,
          name: name,
          isCurrentTurn: isCurrentTurn,
          won: won,
          wonSets: wonSets,
          wonLegsCurrentSet: wonLegsCurrentSet,
          pointsLeft: pointsLeft,
          finishRecommendation: finishRecommendation,
          lastPoints: lastPoints,
          dartsThrownCurrentLeg: dartsThrownCurrentLeg,
          stats: stats,
          sets: sets,
        ) as PlayerDto;
      }
    } catch (e) {
      throw Exception('Error pasring PlayerDto from JSON');
    }
  }

  @override
  Map<String, dynamic> toJson(PlayerDto data) => data.toJson();
}

@freezed
class OfflinePlayerDto with _$OfflinePlayerDto {
  @Implements(PlayerDto)
  const factory OfflinePlayerDto({
    required String id,
    required String name,
    bool? isCurrentTurn,
    bool? won,
    int? wonSets,
    int? wonLegsCurrentSet,
    int? pointsLeft,
    List<String>? finishRecommendation,
    int? lastPoints,
    int? dartsThrownCurrentLeg,
    StatsDto? stats,
    List<SetDto>? sets,
  }) = _OfflinePlayerDto;

  const OfflinePlayerDto._();

  factory OfflinePlayerDto.fromDomain(OfflinePlayer player) {
    return OfflinePlayerDto(
      id: player.id.getOrCrash(),
      name: player.name,
      isCurrentTurn: player.isCurrentTurn,
      won: player.won,
      wonSets: player.wonSets,
      wonLegsCurrentSet: player.wonLegsCurrentSet,
      pointsLeft: player.pointsLeft,
      finishRecommendation: player.finishRecommendation?.asList(),
      lastPoints: player.lastPoints,
      dartsThrownCurrentLeg: player.dartsThrownCurrentLeg,
      stats: StatsDto.fromDomain(player.stats),
      sets: player.sets.map((set) => SetDto.fromDomain(set)).asList(),
    );
  }

  factory OfflinePlayerDto.fromExternal(dart.Player player) {
    final faker = Faker();
    return OfflinePlayerDto(
      id: faker.randomGenerator.string(28, min: 28),
      name: player.name ?? 'NoName', // TODO
      isCurrentTurn: player.isCurrentTurn,
      won: player.won,
      wonSets: player.wonSets,
      wonLegsCurrentSet: player.wonLegsCurrentSet,
      pointsLeft: player.pointsLeft,
      finishRecommendation: player.finishRecommendation,
      lastPoints: player.lastPoints,
      dartsThrownCurrentLeg: player.dartsThrownCurrentLeg,
      stats: StatsDto.fromExternal(player.stats),
      sets: player.sets.map((set) => SetDto.fromExternal(set)).toList(),
    );
  }

  OfflinePlayer toDomain() {
    return OfflinePlayer(
      id: UniqueId.fromUniqueString(id),
      name: name,
      isCurrentTurn: isCurrentTurn ?? false,
      won: won ?? false,
      wonSets: wonSets,
      wonLegsCurrentSet: wonLegsCurrentSet ?? 0,
      pointsLeft: pointsLeft ?? 0,
      finishRecommendation: finishRecommendation != null
          ? KtList.from(finishRecommendation!)
          : null,
      lastPoints: lastPoints,
      dartsThrownCurrentLeg: dartsThrownCurrentLeg ?? 0,
      stats: stats?.toDomain() ??
          const Stats(
            average: 0.00,
            checkoutPercentage: 0.00,
            firstNineAverage: 0.00,
            fourtyPlus: 0,
            sixtyPlus: 0,
            eightyPlus: 0,
            hundredPlus: 0,
            hundredTwentyPlus: 0,
            hundredFourtyPlus: 0,
            hundredSixtyPlus: 0,
            hundredEighty: 0,
          ),
      sets: sets != null
          ? KtList.from(
              sets!.map((setDto) => setDto.toDomain()),
            )
          : const KtList.empty(),
    );
  }

  factory OfflinePlayerDto.fromJson(Map<String, dynamic> json) =>
      _$OfflinePlayerDtoFromJson(json);
}

@freezed
class OnlinePlayerDto with _$OnlinePlayerDto {
  @Implements(PlayerDto)
  const factory OnlinePlayerDto({
    required String id,
    required String name,
    bool? isCurrentTurn,
    bool? won,
    int? wonSets,
    int? wonLegsCurrentSet,
    int? pointsLeft,
    List<String>? finishRecommendation,
    int? lastPoints,
    int? dartsThrownCurrentLeg,
    StatsDto? stats,
    List<SetDto>? sets,
    required String userId,
  }) = _OnlinePlayerDto;

  const OnlinePlayerDto._();

  factory OnlinePlayerDto.fromDomain(OnlinePlayer player) {
    return OnlinePlayerDto(
      id: player.id.getOrCrash(),
      name: player.name,
      isCurrentTurn: player.isCurrentTurn,
      won: player.won,
      wonSets: player.wonSets,
      wonLegsCurrentSet: player.wonLegsCurrentSet,
      pointsLeft: player.pointsLeft,
      finishRecommendation: player.finishRecommendation?.asList(),
      lastPoints: player.lastPoints,
      dartsThrownCurrentLeg: player.dartsThrownCurrentLeg,
      stats: StatsDto.fromDomain(player.stats),
      sets: player.sets.map((set) => SetDto.fromDomain(set)).asList(),
      userId: player.userId.getOrCrash(),
    );
  }

  OnlinePlayer toDomain() {
    return OnlinePlayer(
      id: UniqueId.fromUniqueString(id),
      name: name,
      isCurrentTurn: isCurrentTurn ?? false,
      won: won ?? false,
      wonSets: wonSets,
      wonLegsCurrentSet: wonLegsCurrentSet ?? 0,
      pointsLeft: pointsLeft ?? 0,
      finishRecommendation: finishRecommendation != null
          ? KtList.from(finishRecommendation!)
          : null,
      lastPoints: lastPoints,
      dartsThrownCurrentLeg: dartsThrownCurrentLeg ?? 0,
      stats: stats?.toDomain() ??
          const Stats(
            average: 0.00,
            checkoutPercentage: 0.00,
            firstNineAverage: 0.00,
            fourtyPlus: 0,
            sixtyPlus: 0,
            eightyPlus: 0,
            hundredPlus: 0,
            hundredTwentyPlus: 0,
            hundredFourtyPlus: 0,
            hundredSixtyPlus: 0,
            hundredEighty: 0,
          ),
      sets: sets != null
          ? KtList.from(
              sets!.map((setDto) => setDto.toDomain()),
            )
          : const KtList.empty(),
      userId: UniqueId.fromUniqueString(userId),
    );
  }

  factory OnlinePlayerDto.fromJson(Map<String, dynamic> json) =>
      _$OnlinePlayerDtoFromJson(json);
}

@freezed
class DartBotDto with _$DartBotDto {
  @Implements(PlayerDto)
  const factory DartBotDto({
    required String id,
    required String name,
    bool? isCurrentTurn,
    bool? won,
    int? wonSets,
    int? wonLegsCurrentSet,
    int? pointsLeft,
    List<String>? finishRecommendation,
    int? lastPoints,
    int? dartsThrownCurrentLeg,
    StatsDto? stats,
    List<SetDto>? sets,
    required int targetAverage,
  }) = _DartBotDto;

  const DartBotDto._();

  factory DartBotDto.fromDomain(DartBot dartBot) {
    return DartBotDto(
      id: dartBot.id.getOrCrash(),
      name: dartBot.name,
      isCurrentTurn: dartBot.isCurrentTurn,
      won: dartBot.won,
      wonSets: dartBot.wonSets,
      wonLegsCurrentSet: dartBot.wonLegsCurrentSet,
      pointsLeft: dartBot.pointsLeft,
      finishRecommendation: dartBot.finishRecommendation?.asList(),
      lastPoints: dartBot.lastPoints,
      dartsThrownCurrentLeg: dartBot.dartsThrownCurrentLeg,
      stats: StatsDto.fromDomain(dartBot.stats),
      sets: dartBot.sets.map((set) => SetDto.fromDomain(set)).asList(),
      targetAverage: dartBot.targetAverage,
    );
  }

  DartBot toDomain() {
    return DartBot(
      id: UniqueId.fromUniqueString(id),
      name: name,
      isCurrentTurn: isCurrentTurn ?? false,
      won: won ?? false,
      wonSets: wonSets,
      wonLegsCurrentSet: wonLegsCurrentSet ?? 0,
      pointsLeft: pointsLeft ?? 0,
      finishRecommendation: finishRecommendation != null
          ? KtList.from(finishRecommendation!)
          : null,
      lastPoints: lastPoints,
      dartsThrownCurrentLeg: dartsThrownCurrentLeg ?? 0,
      stats: stats?.toDomain() ??
          const Stats(
            average: 0.00,
            checkoutPercentage: 0.00,
            firstNineAverage: 0.00,
            fourtyPlus: 0,
            sixtyPlus: 0,
            eightyPlus: 0,
            hundredPlus: 0,
            hundredTwentyPlus: 0,
            hundredFourtyPlus: 0,
            hundredSixtyPlus: 0,
            hundredEighty: 0,
          ),
      sets: sets != null
          ? KtList.from(
              sets!.map((setDto) => setDto.toDomain()),
            )
          : const KtList.empty(),
      targetAverage: targetAverage,
    );
  }

  factory DartBotDto.fromExternal(dart.DartBot dartBot) {
    final faker = Faker();
    return DartBotDto(
      id: faker.randomGenerator.string(28, min: 28),
      name: 'Dartbot',
      isCurrentTurn: dartBot.isCurrentTurn,
      won: dartBot.won,
      wonSets: dartBot.wonSets,
      wonLegsCurrentSet: dartBot.wonLegsCurrentSet,
      pointsLeft: dartBot.pointsLeft,
      finishRecommendation: dartBot.finishRecommendation,
      lastPoints: dartBot.lastPoints,
      dartsThrownCurrentLeg: dartBot.dartsThrownCurrentLeg,
      stats: StatsDto.fromExternal(dartBot.stats),
      sets: dartBot.sets.map((set) => SetDto.fromExternal(set)).toList(),
      targetAverage: dartBot.targetAverage,
    );
  }

  factory DartBotDto.fromJson(Map<String, dynamic> json) =>
      _$DartBotDtoFromJson(json);
}
