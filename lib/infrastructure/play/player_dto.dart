import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/player.dart';
import 'package:dart_counter/domain/play/stats.dart';
import 'package:dart_counter/infrastructure/play/set_dto.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'stats_dto.dart';

part 'player_dto.freezed.dart';
part 'player_dto.g.dart';

abstract class AbstractPlayerDto {
  String get id;
  String get name;
  List<SetDto> get sets;

  StatsDto stats();
}

abstract class AbstractOfflinePlayerDto extends AbstractPlayerDto {}

// TODO how to detect online offline or dartBot
class AbstractPlayerDtoConverter
    implements JsonConverter<AbstractPlayerDto, Map<String, dynamic>> {
  const AbstractPlayerDtoConverter();

  @override
  AbstractPlayerDto fromJson(Map<String, dynamic> json) {
    if (json['userId'] != null) {
      return OnlinePlayerDto.fromJson(json);
    } else if (json['targetAverage'] != null) {
      return DartBotDto.fromJson(json);
    } else {
      return OfflinePlayerDto.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson(AbstractPlayerDto abstractPlayerDto) {
    if (abstractPlayerDto is OfflinePlayerDto) {
      return abstractPlayerDto.toJson();
    } else if (abstractPlayerDto is DartBotDto) {
      return abstractPlayerDto.toJson();
    } else if (abstractPlayerDto is OnlinePlayerDto) {
      return abstractPlayerDto.toJson();
    } else {
      throw Error(); // TODO
    }
  }
}

// TODO how to detect dartBot
class AbstractOfflinePlayerDtoConverter
    implements JsonConverter<AbstractOfflinePlayerDto, Map<String, dynamic>> {
  const AbstractOfflinePlayerDtoConverter();

  @override
  AbstractOfflinePlayerDto fromJson(Map<String, dynamic> json) {
    if (json['id'] == 'dartBot') {
      return DartBotDto.fromJson(json);
    } else {
      return OfflinePlayerDto.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson(
      AbstractOfflinePlayerDto abstractOfflinePlayerDto) {
    if (abstractOfflinePlayerDto is OfflinePlayerDto) {
      return abstractOfflinePlayerDto.toJson();
    } else if (abstractOfflinePlayerDto is DartBotDto) {
      return abstractOfflinePlayerDto.toJson();
    } else {
      throw Error(); // TODO
    }
  }
}

@freezed
class OfflinePlayerDto
    with _$OfflinePlayerDto
    implements AbstractOfflinePlayerDto {
  @Implements(AbstractOfflinePlayerDto)
  const factory OfflinePlayerDto({
    required String id,
    required String name,
    required List<SetDto> sets,
  }) = _OfflinePlayerDto;

  const OfflinePlayerDto._();
/* 
  factory OfflinePlayerDto.fromDomain(OfflinePlayer player) {
    return OfflinePlayerDto(
      id: player.id.getOrCrash(),
      name: player.name,
      sets: player.sets.map((set) => SetDto.fromDomain(set)).asList(),
      won: player.won,
      wonSets: player.wonSets,
      wonLegsCurrentSet: player.wonLegsCurrentSet,
      pointsLeft: player.pointsLeft,
      finishRecommendation: player.finishRecommendation?.asList(),
      lastPoints: player.lastPoints,
      dartsThrownCurrentLeg: player.dartsThrownCurrentLeg,
      stats: StatsDto.fromDomain(player.stats),
    );
  }
 */
  factory OfflinePlayerDto.fromExternal(ex.Player player) {
    return OfflinePlayerDto(
      id: player.id,
      name: player.name,
      sets: player.sets.map((set) => SetDto.fromExternal(set)).toList(),
    );
  }

  OfflinePlayer toDomain() {
    return OfflinePlayer(
      id: UniqueId.fromUniqueString(id),
      name: name,
      sets: KtList.from(sets.map((setDto) => setDto.toDomain())),
      won: false,
      wonSets: 0,
      wonLegsCurrentSet: 0,
      pointsLeft: 0,
      finishRecommendation: null,
      lastPoints: 0,
      dartsThrownCurrentLeg: 0,
      stats: const Stats(
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
    );
  }

  ex.Player toExternal() {
    throw UnimplementedError();
  }

  @override
  StatsDto stats() {
    throw UnimplementedError();
  }

  factory OfflinePlayerDto.fromJson(Map<String, dynamic> json) =>
      _$OfflinePlayerDtoFromJson(json);
}

@freezed
class DartBotDto with _$DartBotDto implements AbstractOfflinePlayerDto {
  @Implements(AbstractOfflinePlayerDto)
  const factory DartBotDto({
    required String id,
    required String name,
    required List<SetDto> sets,
  }) = _DartBotDto;

  const DartBotDto._();
/* 
  factory DartBotDto.fromDomain(DartBot dartBot) {
    return DartBotDto(
      id: dartBot.id.getOrCrash(),
      name: dartBot.name,
      sets: dartBot.sets.map((set) => SetDto.fromDomain(set)).asList(),
      won: dartBot.won,
      wonSets: dartBot.wonSets,
      wonLegsCurrentSet: dartBot.wonLegsCurrentSet,
      pointsLeft: dartBot.pointsLeft,
      finishRecommendation: dartBot.finishRecommendation?.asList(),
      lastPoints: dartBot.lastPoints,
      dartsThrownCurrentLeg: dartBot.dartsThrownCurrentLeg,
      stats: StatsDto.fromDomain(dartBot.stats),
    );
  }
 */
  factory DartBotDto.fromExternal(ex.DartBot dartBot) {
    return DartBotDto(
      id: 'dartBot',
      name: 'Dartbot',
      sets: dartBot.sets.map((set) => SetDto.fromExternal(set)).toList(),
    );
  }

  DartBot toDomain() {
    return DartBot(
      id: UniqueId.fromUniqueString(id),
      name: name,
      sets: KtList.from(sets.map((setDto) => setDto.toDomain())),
      won: false,
      wonSets: 0,
      wonLegsCurrentSet: 0,
      pointsLeft: 0,
      finishRecommendation: null,
      lastPoints: 0,
      dartsThrownCurrentLeg: 0,
      stats: const Stats(
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
    );
  }

  ex.Player toExternal() {
    throw UnimplementedError();
  }

  @override
  StatsDto stats() {
    throw UnimplementedError();
  }

  factory DartBotDto.fromJson(Map<String, dynamic> json) =>
      _$DartBotDtoFromJson(json);
}

@freezed
class OnlinePlayerDto with _$OnlinePlayerDto implements AbstractPlayerDto {
  @Implements(AbstractPlayerDto)
  const factory OnlinePlayerDto({
    required String id,
    required String name,
    required List<SetDto> sets,
  }) = _OnlinePlayerDto;

  const OnlinePlayerDto._();
/* 
  factory OnlinePlayerDto.fromDomain(OnlinePlayer player) {
    return OnlinePlayerDto(
      id: player.id.getOrCrash(),
      name: player.name,
      sets: player.sets.map((set) => SetDto.fromDomain(set)).asList(),
      won: player.won,
      wonSets: player.wonSets,
      wonLegsCurrentSet: player.wonLegsCurrentSet,
      pointsLeft: player.pointsLeft,
      finishRecommendation: player.finishRecommendation?.asList(),
      lastPoints: player.lastPoints,
      dartsThrownCurrentLeg: player.dartsThrownCurrentLeg,
      stats: StatsDto.fromDomain(player.stats),
    );
  }
 */
  OnlinePlayer toDomain() {
    return OnlinePlayer(
      id: UniqueId.fromUniqueString(id),
      name: name,
      sets: KtList.from(
        sets.map((setDto) => setDto.toDomain()),
      ),
      won: false,
      wonSets: 0,
      wonLegsCurrentSet: 0,
      pointsLeft: 0,
      finishRecommendation: null,
      lastPoints: 0,
      dartsThrownCurrentLeg: 0,
      stats: const Stats(
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
    );
  }

  ex.Player toExternal() {
    throw UnimplementedError();
  }

  @override
  StatsDto stats() {
    throw UnimplementedError();
  }

  factory OnlinePlayerDto.fromJson(Map<String, dynamic> json) =>
      _$OnlinePlayerDtoFromJson(json);
}
