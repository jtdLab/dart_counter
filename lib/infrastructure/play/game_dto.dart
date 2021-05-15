import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/infrastructure/play/player_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'game_dto.freezed.dart';
part 'game_dto.g.dart';

@freezed
class GameDto with _$GameDto {
  const factory GameDto({
    required String? id,
    required String status,
    required String mode,
    required int size,
    required String type,
    required int startingPoints,
    required List<PlayerDto> players,
  }) = _GameDto;

  const GameDto._();

  factory GameDto.fromDomain(Game game) {
    return GameDto(
      id: game.id?.getOrCrash(),
      status: game.status.toString().split('.')[1],
      mode: game.mode.toString().split('.')[1],
      size: game.size,
      type: game.type.toString().split('.')[1],
      startingPoints: game.startingPoints,
      players: game.players
          .asList()
          .map((player) => PlayerDto.fromDomain(player))
          .toList(),
    );
  }

  Game toDomain() {
    return Game(
      id: UniqueId.fromUniqueString(id!),
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
      players: KtList.from(players.map((playerDto) => playerDto.toDomain())),
    );
  }

  factory GameDto.fromJson(Map<String, dynamic> json) =>
      _$GameDtoFromJson(json);
}
