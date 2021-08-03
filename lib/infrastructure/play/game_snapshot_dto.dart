import 'package:dart_client/dart_client.dart' as dc
    show GameSnapshot, Status, Mode, Type;
import 'package:dart_game/dart_game.dart' as ex;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'player_snapshot_dto.dart';

part 'game_snapshot_dto.freezed.dart';

abstract class AbstractGameSnapshotDto {
  String get status;
  String get mode;
  int get size;
  String get type;
  int get startingPoints;
  List<AbstractPlayerSnapshotDto> get players;
}

@freezed
class OfflineGameSnapshotDto
    with _$OfflineGameSnapshotDto
    implements AbstractGameSnapshotDto {
  @Implements(AbstractGameSnapshotDto)
  const factory OfflineGameSnapshotDto({
    required String status,
    required String mode,
    required int size,
    required String type,
    required int startingPoints,
    required List<AbstractOfflinePlayerSnapshotDto> players,
  }) = _OfflineGameSnapshotDto;

  const OfflineGameSnapshotDto._();

  factory OfflineGameSnapshotDto.fromExternal(ex.Game game) {
    return OfflineGameSnapshotDto(
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
      players: game.players.map<AbstractOfflinePlayerSnapshotDto>(
        (player) {
          if (player is ex.DartBot) {
            return DartBotSnapshotDto.fromExternal(player);
          } else {
            return OfflinePlayerSnapshotDto.fromExternal(player);
          }
        },
      ).toList(),
    );
  }
}

@freezed
class OnlineGameSnapshotDto
    with _$OnlineGameSnapshotDto
    implements AbstractGameSnapshotDto {
  @Implements(AbstractGameSnapshotDto)
  const factory OnlineGameSnapshotDto({
    required String status,
    required String mode,
    required int size,
    required String type,
    required int startingPoints,
    required List<OnlinePlayerSnapshotDto> players,
  }) = _OnlineGameSnapshotDto;

  const OnlineGameSnapshotDto._();

  factory OnlineGameSnapshotDto.fromClient(dc.GameSnapshot gameSnapshot) {
    return OnlineGameSnapshotDto(
      status: gameSnapshot.status == dc.Status.pending
          ? 'pending'
          : gameSnapshot.status == dc.Status.running
              ? 'running'
              : gameSnapshot.status == dc.Status.canceled
                  ? 'canceled'
                  : 'finished',
      mode: gameSnapshot.mode == dc.Mode.firstTo ? 'firstTo' : 'bestOf',
      size: gameSnapshot.size,
      type: gameSnapshot.type == dc.Type.legs ? 'legs' : 'sets',
      startingPoints: gameSnapshot.startingPoints,
      players: gameSnapshot.players
          .map(
            (playerSnapshot) =>
                OnlinePlayerSnapshotDto.fromClient(playerSnapshot),
          )
          .asList(),
    );
  }
}
