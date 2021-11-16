import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/domain/game/player_stats.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/play/offline/dartbot_snapshot.dart';
import 'package:dart_counter/domain/play/offline/offline_game_snapshot.dart';
import 'package:dart_counter/domain/play/offline/offline_player_snapshot.dart';
import 'package:dart_counter/infrastructure/play/offline/dartbot_snapshot_dto.dart';
import 'package:dart_counter/infrastructure/play/offline/offline_game_snapshot_dto.dart';
import 'package:dart_counter/infrastructure/play/offline/offline_player_snapshot_dto.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

void main() {
  final playerId = UniqueId.fromUniqueString('dummyId');
  const playerIdString = 'dummyId';
  final dartBotId = UniqueId.fromUniqueString('dartBot');
  const dartBotIdString = 'dartBot';

  const size = 1;
  const startingPoints = 501;

  const targetAverage = 100;

  final playerDomain = OfflinePlayerSnapshot(
    id: playerId,
    isCurrentTurn: false,
    won: false,
    wonLegsCurrentSet: 0,
    pointsLeft: 0,
    dartsThrownCurrentLeg: 0,
    stats: const PlayerStats(),
  );
  final dartBotDomain = DartBotSnapshot(
    id: dartBotId,
    isCurrentTurn: false,
    won: false,
    wonLegsCurrentSet: 0,
    pointsLeft: 0,
    dartsThrownCurrentLeg: 0,
    stats: const PlayerStats(),
    targetAverage: targetAverage,
  );
  final domain = OfflineGameSnapshot(
    status: Status.pending,
    mode: Mode.firstTo,
    size: size,
    type: Type.legs,
    startingPoints: startingPoints,
    players: KtList.from([playerDomain, dartBotDomain]),
  );

  const playerDto = OfflinePlayerSnapshotDto(
    id: playerIdString,
  );
  const dartBotDto = DartBotSnapshotDto(
    id: dartBotIdString,
    targetAverage: targetAverage,
  );
  const dto = OfflineGameSnapshotDto(
    status: 'pending',
    mode: 'firstTo',
    size: size,
    type: 'legs',
    startingPoints: startingPoints,
    players: [playerDto, dartBotDto],
  );

  final playerExternal = ex.Player.fromData(
    id: playerIdString,
  );
  final dartBotExternal = ex.DartBot.fromData(
    targetAverage: targetAverage,
  );
  final external = ex.Game.fromData(
    status: ex.Status.pending,
    startingPoints: startingPoints,
    mode: ex.Mode.firstTo,
    size: size,
    type: ex.Type.legs,
    players: [playerExternal, dartBotExternal],
  );

  test(
    'constructor',
    () {
      // Assert
      expect(dto.status, 'pending');
      expect(dto.mode, 'firstTo');
      expect(dto.size, size);
      expect(dto.type, 'legs');
      expect(dto.startingPoints, startingPoints);
      expect(dto.players, [playerDto, dartBotDto]);
    },
  );

  test(
    'toDomain',
    () {
      // Act
      final underTest = dto.toDomain();

      // Assert
      expect(underTest, domain);
    },
  );

  test(
    'fromExternal',
    () {
      // Act
      final underTest = OfflineGameSnapshotDto.fromExternal(external);

      // Assert
      expect(underTest, dto);
    },
  );
}
