import 'package:dart_client/domain/game_snapshot.dart';
import 'package:dart_client/domain/mode.dart';
import 'package:dart_client/domain/status.dart';
import 'package:dart_client/domain/type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import 'player_snapshot_dto.dart';

part 'game_snapshot_dto.freezed.dart';
part 'game_snapshot_dto.g.dart';

@freezed
class GameSnapshotDto with _$GameSnapshotDto {
  const factory GameSnapshotDto({
    required String status,
    required String mode,
    required int size,
    required String type,
    required int startingPoints,
    required List<PlayerSnapshotDto> players,
  }) = _GameSnapshotDto;

  const GameSnapshotDto._();

  factory GameSnapshotDto.fromDomain(GameSnapshot gameSnapshot) {
    return GameSnapshotDto(
      status: gameSnapshot.status == Status.pending
          ? 'pending'
          : gameSnapshot.status == Status.running
              ? 'running'
              : gameSnapshot.status == Status.canceled
                  ? 'canceled'
                  : 'finished',
      mode: gameSnapshot.mode == Mode.firstTo ? 'firstTo' : 'bestOf',
      size: gameSnapshot.size,
      type: gameSnapshot.type == Type.legs ? 'legs' : 'sets',
      startingPoints: gameSnapshot.startingPoints,
      players: gameSnapshot.players
          .asList()
          .map(
            (playerSnapshot) => PlayerSnapshotDto.fromDomain(playerSnapshot),
          )
          .toList(),
    );
  }

  GameSnapshot toDomain() {
    return GameSnapshot(
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
          (playerDto) => playerDto.toDomain(),
        ),
      ),
    );
  }

  factory GameSnapshotDto.fromJson(Map<String, dynamic> json) =>
      _$GameSnapshotDtoFromJson(json);
}
