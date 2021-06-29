import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/play/player.dart';
import 'package:dart_counter/infrastructure/play/player_dto.dart';
import 'package:dart_game/dart_game.dart' as dart;
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'game_dto.freezed.dart';
part 'game_dto.g.dart';

@freezed
class GameDto with _$GameDto {
  const factory GameDto({
    required String id,
    required bool online,
    required String status,
    required String mode,
    required int size,
    required String type,
    required int startingPoints,
    @PlayerDtoConverter() required List<PlayerDto> players,
  }) = _GameDto;

  const GameDto._();

  factory GameDto.fromDomain(Game game) {
    return GameDto(
      online: game.online,
      id: game.id.getOrCrash(),
      status: game.status.toString().split('.')[1],
      mode: game.mode.toString().split('.')[1],
      size: game.size,
      type: game.type.toString().split('.')[1],
      startingPoints: game.startingPoints,
      players: game.players.map(
        (player) {
          if (player is OfflinePlayer) {
            return OfflinePlayerDto.fromDomain(player as OfflinePlayer)
                as PlayerDto;
          } else if (player is OnlinePlayer) {
            return OnlinePlayerDto.fromDomain(player as OnlinePlayer)
                as PlayerDto;
          } else {
            return DartBotDto.fromDomain(player as DartBot) as PlayerDto;
          }
        },
      ).asList(),
    );
  }

  factory GameDto.fromExternal(dart.Game game) {
    final faker = Faker();
    return GameDto(
      online: false,
      id: faker.randomGenerator.string(28, min: 28),
      status: game.status.toString().split('.')[1],
      mode: game.config.mode.toString().split('.')[1],
      size: game.config.size,
      type: game.config.type.toString().split('.')[1],
      startingPoints: game.config.startingPoints,
      players: game.players.map(
        (player) {
          if (player is dart.DartBot) {
            return DartBotDto.fromExternal(player) as PlayerDto;
          } else {
            return OfflinePlayerDto.fromExternal(player) as PlayerDto;
          }
        },
      ).toList(),
    );
  }

  Game toDomain() {
    return Game(
      online: online,
      id: UniqueId.fromUniqueString(id),
      status: status == 'pending'
          ? Status.pending
          : status == 'running'
              ? Status.running
              : status == 'canceled'
                  ? Status.canceled
                  : Status.finished,
      mode: mode == 'firstTo' ? Mode.firstTo : Mode.bestOf,
      size: size,
      type: type == 'legs' ? Type.legs : Type.sets,
      startingPoints: startingPoints,
      players:
          KtList.from([]), // players.map((playerDto) => playerDto.toDomain())
    );
  }

  factory GameDto.fromJson(Map<String, dynamic> json) =>
      _$GameDtoFromJson(json);
}
