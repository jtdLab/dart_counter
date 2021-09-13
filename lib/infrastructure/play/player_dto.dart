import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/player.dart';
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

  factory OfflinePlayerDto.fromExternal(ex.Player player) {
    return OfflinePlayerDto(
      id: player.id,
      name: player.name ?? 'Player N', // TODO
      sets: player.sets.map((set) => SetDto.fromExternal(set)).toList(),
    );
  }

  OfflinePlayer toDomain() {
    // TODO implement
    return OfflinePlayer(
      id: UniqueId.fromUniqueString(id),
      name: name,
      sets: KtList.from(sets.map((set) => set.toDomain())),
      stats: _stats().toDomain(),
    );
  }

  PlayerStatsDto _stats() {
    // TODO implement
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

  factory DartBotDto.fromExternal(ex.DartBot dartBot) {
    return DartBotDto(
      id: 'dartBot',
      name: 'Dartbot',
      sets: dartBot.sets.map((set) => SetDto.fromExternal(set)).toList(),
    );
  }

  DartBot toDomain() {
    // TODO implement
    throw UnimplementedError();
  }

  PlayerStatsDto _stats() {
    // TODO implement
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

  OnlinePlayer toDomain() {
    return OnlinePlayer(
      id: UniqueId.fromUniqueString(id),
      name: name,
      sets: KtList.from(
        sets.map((setDto) => setDto.toDomain()),
      ),
      won: false,
    );
  }

  PlayerStatsDto _stats() {
    throw UnimplementedError();
  }

  factory OnlinePlayerDto.fromJson(Map<String, dynamic> json) =>
      _$OnlinePlayerDtoFromJson(json);
}
