import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/domain/play/mode.dart';
import 'package:dart_counter/domain/play/status.dart';
import 'package:dart_counter/domain/play/type.dart';
import 'package:dart_counter/infrastructure/play/player_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:kt_dart/kt.dart';
import 'package:uuid/uuid.dart';

part 'game_dto.freezed.dart';
part 'game_dto.g.dart';

abstract class GameDto {
  String get id;
  int get createdAt;
  String get status;
  String get mode;
  int get size;
  String get type;
  int get startingPoints;
  List<AbstractPlayerDto> get players;
}

@freezed
class OfflineGameDto with _$OfflineGameDto implements GameDto {
  @Implements<GameDto>()
  const factory OfflineGameDto({
    required String id,
    required int createdAt,
    required String status,
    required String mode,
    required int size,
    required String type,
    required int startingPoints,
    @AbstractOfflinePlayerDtoConverter()
        required List<AbstractOfflinePlayerDto> players,
  }) = _OfflineGameDto;

  const OfflineGameDto._();

  factory OfflineGameDto.fromExternal(ex.Game game) {
    return OfflineGameDto(
      id: const Uuid().v1(),
      createdAt: DateTime.now().millisecondsSinceEpoch,
      status: game.status == ex.Status.pending
          ? 'pending'
          : game.status == ex.Status.running
              ? 'running'
              : game.status == ex.Status.canceled
                  ? 'canceled'
                  : 'finished',
      mode: game.mode == ex.Mode.firstTo ? 'firstTo' : 'bestOf',
      size: game.size,
      type: game.type == ex.Type.legs ? 'legs' : 'sets',
      startingPoints: game.startingPoints,
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

  OfflineGame toDomain() {
    return OfflineGame(
      id: UniqueId.fromUniqueString(id),
      createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt),
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
          (player) {
            if (player is OfflinePlayerDto) {
              return player.toDomain();
            } else if (player is DartBotDto) {
              return player.toDomain();
            } else {
              throw Error();
            }
          },
        ),
      ),
    );
  }

  factory OfflineGameDto.fromFirestore(DocumentSnapshot doc) {
    final json = (doc.data() ?? {}) as Map<String, dynamic>;

    json.addAll({
      'id': doc.id,
    });

    return OfflineGameDto.fromJson(json);
  }

  factory OfflineGameDto.fromJson(Map<String, dynamic> json) =>
      _$OfflineGameDtoFromJson(json);
}

@freezed
class OnlineGameDto with _$OnlineGameDto implements GameDto {
  @Implements<GameDto>()
  const factory OnlineGameDto({
    required String id,
    required int createdAt,
    required String ownerId,
    required String status,
    required String mode,
    required int size,
    required String type,
    required int startingPoints,
    required List<OnlinePlayerDto> players,
  }) = _OnlineGameDto;

  const OnlineGameDto._();

  OnlineGame toDomain() {
    return OnlineGame(
      id: UniqueId.fromUniqueString(id),
      createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt),
      ownerId: UniqueId.fromUniqueString(ownerId),
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
        players.map((player) => player.toDomain()),
      ),
    );
  }

  factory OnlineGameDto.fromFirestore(DocumentSnapshot doc) {
    final json = (doc.data() ?? {}) as Map<String, dynamic>;

    json.addAll({
      'id': doc.id,
    });

    return OnlineGameDto.fromJson(json);
  }

  factory OnlineGameDto.fromJson(Map<String, dynamic> json) =>
      _$OnlineGameDtoFromJson(json);
}
