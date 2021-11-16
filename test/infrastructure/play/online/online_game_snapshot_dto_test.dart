import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/domain/game/player_stats.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/play/online/online_game_snapshot.dart';
import 'package:dart_counter/domain/play/online/online_player_snapshot.dart';
import 'package:dart_counter/infrastructure/play/online/online_game_snapshot_dto.dart';
import 'package:dart_counter/infrastructure/play/online/online_player_snapshot_dto.dart';
import 'package:dart_client/dart_client.dart' as c;
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

void main() {
  final id = UniqueId.fromUniqueString('dummyId');
  const idString = 'dummyId';
  const name = 'dummyName';
  const photoUrl = 'www.example.com';

  const size = 1;
  const startingPoints = 501;

  final playerDomain = OnlinePlayerSnapshot(
    id: id,
    name: name,
    isCurrentTurn: false,
    photoUrl: photoUrl,
    won: false,
    wonLegsCurrentSet: 0,
    pointsLeft: 0,
    dartsThrownCurrentLeg: 0,
    stats: const PlayerStats(),
  );

  final domain = OnlineGameSnapshot(
    status: Status.pending,
    mode: Mode.firstTo,
    size: size,
    type: Type.legs,
    startingPoints: startingPoints,
    players: KtList.from([playerDomain]),
  );

  const playerDto = OnlinePlayerSnapshotDto(
    id: idString,
    name: name,
  );
  const dto = OnlineGameSnapshotDto(
    status: 'pending',
    mode: 'firstTo',
    size: size,
    type: 'legs',
    startingPoints: startingPoints,
    players: [playerDto],
  );

  const playerClient = c.PlayerSnapshot(
    id: idString,
    name: name,
    userId: idString,
  );
  final client = c.GameSnapshot(
    status: c.Status.pending,
    startingPoints: startingPoints,
    mode: c.Mode.firstTo,
    size: size,
    type: c.Type.legs,
    players: [playerClient].toImmutableList(),
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
      expect(dto.players, [playerDto]);
    },
  );

  test(
    'toDomain',
    () {
      // Act
      final underTest = dto.toDomain();

      // Assert
      expect(
        underTest.copyWith(
          players: underTest.players.map(
            (player) => player.copyWith(photoUrl: photoUrl),
          ),
        ),
        domain,
      );
    },
  );

  test(
    'fromClient',
    () {
      // Act
      final underTest = OnlineGameSnapshotDto.fromClient(client);

      // Assert
      expect(underTest, dto);
    },
  );
}
