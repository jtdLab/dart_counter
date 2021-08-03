import 'package:dart_client/dart_client.dart' as dc;
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/play/player.dart';
import 'package:dart_counter/infrastructure/play/player_dto.dart';
import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'game_dto.freezed.dart';
part 'game_dto.g.dart';

@freezed
class GameDto with _$GameDto {
  const factory GameDto({
    required String id,
    required DateTime createdAt,
    required bool online,
    required String status,
    required String mode,
    required int size,
    required String type,
    required int startingPoints,
    @AbstractPlayerDtoConverter() required List<AbstractPlayerDto> players,
  }) = _GameDto;

  const GameDto._();

  factory GameDto.fromDomain(Game game) {
    return GameDto(
      id: game.id.getOrCrash(),
      createdAt: game.createdAt,
      online: game.online,
      status: game.status == Status.pending
          ? 'pending'
          : game.status == Status.running
              ? 'running'
              : game.status == Status.canceled
                  ? 'canceled'
                  : 'finished',
      mode: game.mode == Mode.firstTo ? 'firstTo' : 'bestOf',
      size: game.size,
      type: game.type == Type.legs ? 'legs' : 'sets',
      startingPoints: game.startingPoints,
      players: game.players.map(
        (player) {
          if (player is OfflinePlayer) {
            return OfflinePlayerDto.fromDomain(player);
          } else if (player is DartBot) {
            return DartBotDto.fromDomain(player);
          } else if (player is OnlinePlayer) {
            return OnlinePlayerDto.fromDomain(player);
          } else {
            throw Error();
          }
        },
      ).asList(),
    );
  }

  factory GameDto.fromExternal(ex.Game game) {
    final faker = Faker();
    return GameDto(
      id: faker.randomGenerator.string(28, min: 28), // TODO
      createdAt: DateTime.now(), // TODO
      online: false,
      status: game.status == ex.Status.pending
          ? 'pending'
          : game.status == ex.Status.running
              ? 'running'
              : game.status == ex.Status.canceled
                  ? 'canceled'
                  : 'finished',
      mode: game.config.mode == ex.Mode.firstTo ? 'firstTo' : 'bestOf',
      size: game.config.size,
      type: game.config.type == ex.Type.legs ? 'legs' : 'sets',
      startingPoints: game.config.startingPoints,
      players: game.players.map(
        (player) {
          if (player is ex.DartBot) {
            return DartBotDto.fromExternal(player);
          } else {
            return OfflinePlayerDto.fromExternal(player);
          }
        },
      ).toList(),
    );
  }

  factory GameDto.fromClient(dc.Game game) {
    return GameDto(
      id: game.id,
      createdAt: game.createdAt,
      online: true,
      status: game.status == dc.Status.pending
          ? 'pending'
          : game.status == dc.Status.running
              ? 'running'
              : game.status == dc.Status.canceled
                  ? 'canceled'
                  : 'finished',
      mode: game.mode == dc.Mode.firstTo ? 'firstTo' : 'bestOf',
      size: game.size,
      type: game.type == dc.Type.legs ? 'legs' : 'sets',
      startingPoints: game.startingPoints,
      players: game.players
          .map((player) => OnlinePlayerDto.fromClient(player))
          .asList(),
    );
  }

  Game toDomain() {
    return Game(
      id: UniqueId.fromUniqueString(id),
      createdAt: createdAt,
      online: online,
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
      players: KtList.from(
        players.map(
          (playerDto) {
            if (playerDto is OfflinePlayerDto) {
              return playerDto.toDomain();
            } else if (playerDto is DartBotDto) {
              return playerDto.toDomain();
            } else if (playerDto is OnlinePlayerDto) {
              return playerDto.toDomain();
            } else {
              throw Error(); // TODO
            }
          },
        ),
      ),
    );
  }

  factory GameDto.fromJson(Map<String, dynamic> json) =>
      _$GameDtoFromJson(json);
}
