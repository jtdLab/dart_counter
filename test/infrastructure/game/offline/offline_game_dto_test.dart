import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/leg.dart';
import 'package:dart_counter/domain/game/leg_stats.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/offline/offline_game.dart';
import 'package:dart_counter/domain/game/offline/offline_player.dart';
import 'package:dart_counter/domain/game/player_stats.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/infrastructure/game/leg_dto.dart';
import 'package:dart_counter/infrastructure/game/offline/offline_game_dto.dart';
import 'package:dart_counter/infrastructure/game/offline/offline_player_dto.dart';
import 'package:dart_counter/infrastructure/game/set_dto.dart';
import 'package:dart_counter/infrastructure/game/throw_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/src/collection/interop.dart';

void main() {
  final gameId = UniqueId.fromUniqueString('dummyGameId');
  const gameIdString = 'dummyGameId';
  final createdAt = DateTime.fromMillisecondsSinceEpoch(1637422280046);
  const createdAtInt = 1637422280046;
  const status = Status.pending;
  const statusString = 'pending';
  const mode = Mode.firstTo;
  const modeString = 'firstTo';
  const size = 10;
  const type = Type.legs;
  const typeString = 'legs';
  const startingPoints = 301;

  final id = UniqueId.fromUniqueString('dummyId');
  const idString = 'dummyId';
  const name = 'dummyName';
  const won = false;
  const wonLegsOrSets = 0;

  const statsDomain = PlayerStats(
    average: 131.0,
    firstNineAverage: 131.0,
    fourtyPlus: 0,
    sixtyPlus: 0,
    eightyPlus: 0,
    hundredPlus: 0,
    hundredTwentyPlus: 1,
    hundredFourtyPlus: 0,
    hundredSixtyPlus: 0,
    hundredEighty: 0,
  );
  final legDomain = Leg(
    won: false,
    throws: [const Throw(points: 131, dartsThrown: 3, dartsOnDouble: 0)]
        .toImmutableList(),
    stats: const LegStats(
      average: 131.0,
      firstNineAverage: 131.0,
      fourtyPlus: 0,
      sixtyPlus: 0,
      eightyPlus: 0,
      hundredPlus: 0,
      hundredTwentyPlus: 1,
      hundredFourtyPlus: 0,
      hundredSixtyPlus: 0,
      hundredEighty: 0,
    ),
  );
  final OfflinePlayer playerDomain = OfflinePlayer(
    id: id,
    name: name,
    legsOrSets: left([legDomain].toImmutableList()),
    won: won,
    wonLegsOrSets: wonLegsOrSets,
    stats: statsDomain,
  );
  final OfflineGame domain = OfflineGame(
    id: gameId,
    createdAt: createdAt,
    status: status,
    mode: mode,
    size: size,
    type: type,
    startingPoints: startingPoints,
    players: [playerDomain].toImmutableList(),
  );

  const legDto = LegDto(
    throws: [
      ThrowDto(points: 131, dartsThrown: 3, dartsOnDouble: 0),
    ],
  );
  const OfflinePlayerDto playerDto = OfflinePlayerDto(
    id: idString,
    name: name,
    legsOrSets: [legDto],
  );
  const OfflineGameDto dto = OfflineGameDto(
    id: gameIdString,
    createdAt: createdAtInt,
    status: statusString,
    mode: modeString,
    size: size,
    type: typeString,
    startingPoints: startingPoints,
    players: [playerDto],
  );

  const throwJson = {
    'points': 131,
    'dartsThrown': 3,
    'dartsOnDouble': 0,
    'darts': null,
  };
  const legJson = {
    'throws': [throwJson],
  };
  const playerJson = {
    'id': idString,
    'name': name,
    'legsOrSets': [
      legJson,
    ],
  };
  const json = {
    'id': gameIdString,
    'createdAt': createdAtInt,
    'status': statusString,
    'mode': modeString,
    'size': size,
    'type': typeString,
    'startingPoints': startingPoints,
    'players': [playerJson],
  };

  test(
    'constructor',
    () {
      // Assert
      expect(dto.id, gameIdString);
      expect(dto.createdAt, createdAtInt);
      expect(dto.status, statusString);
      expect(dto.mode, modeString);
      expect(dto.size, size);
      expect(dto.type, typeString);
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
      expect(underTest, domain);
    },
  );

  /**
   * test(
    'toExternal',
    () {
      // Act
      final underTest =
          dto.toExternal()

      // Assert
      expect(underTest.id, idString);
      expect(underTest.name, name);
      expect(underTest.average, 131.0);
      expect(underTest.averageDartsPerLeg, null);
      expect(underTest.bestLegAverage, null);
      expect(underTest.bestLegDartsThrown, null);
      expect(underTest.checkoutPercentage, null);
      expect(underTest.dartsThrownCurrentLeg, 3);
      expect(underTest.eightyPlus, 0);
      expect(underTest.finishRecommendation, ['T20', 'T20', 'D25']);
      expect(underTest.firstDartAverage, null);
      expect(underTest.secondDartAverage, null);
      expect(underTest.thirdDartAverage, null);
      expect(underTest.firstNineAverage, 131.0);
      expect(underTest.fourtyPlus, 0);
      expect(underTest.highestFinish, null);
      expect(underTest.hundredEighty, 0);
      expect(underTest.hundredFourtyPlus, 0);
      expect(underTest.hundredPlus, 0);
      expect(underTest.hundredSixtyPlus, 0);
      expect(underTest.hundredTwentyPlus, 1);
      expect(underTest.lastPoints, 131);
      expect(underTest.pointsLeft, 170);
      expect(underTest.sixtyPlus, 0);
      expect(underTest.won, false);
      expect(underTest.wonLegsCurrentSet, 0);
      expect(underTest.wonSets, null);
      expect(underTest.worstLegAverage, null);
      expect(underTest.worstLegDartsThrown, null);
    },
  );

   */

  test(
    'fromJson',
    () {
      // Act
      final underTest = OfflineGameDto.fromJson(json);

      // Assert
      expect(underTest, dto);
    },
  );

  test(
    'toJson',
    () {
      // Act
      final underTest = dto.toJson();

      // Assert
      expect(underTest, json);
    },
  );

  test(
    'GIVEN won offline GAME WHEN toDomain THEN calculate all players stats correct',
    () {
      // Arrange
      const OfflinePlayerDto player1 = OfflinePlayerDto(
        id: 'player1Id',
        name: 'Player1',
        legsOrSets: [
          SetDto(
            legs: [
              LegDto(
                throws: [
                  ThrowDto(points: 180, dartsThrown: 3, dartsOnDouble: 0),
                  ThrowDto(points: 121, dartsThrown: 3, dartsOnDouble: 1),
                ],
              ),
              LegDto(
                throws: [
                  ThrowDto(points: 180, dartsThrown: 3, dartsOnDouble: 0),
                  ThrowDto(points: 121, dartsThrown: 3, dartsOnDouble: 1),
                ],
              ),
              LegDto(
                throws: [
                  ThrowDto(points: 180, dartsThrown: 3, dartsOnDouble: 0),
                  ThrowDto(points: 121, dartsThrown: 3, dartsOnDouble: 1),
                ],
              ),
            ],
          ),
        ],
      );
      const OfflinePlayerDto player2 = OfflinePlayerDto(
        id: 'player2Id',
        name: 'Player2',
        legsOrSets: [
          SetDto(
            legs: [
              LegDto(
                throws: [
                  ThrowDto(points: 180, dartsThrown: 3, dartsOnDouble: 0),
                ],
              ),
              LegDto(
                throws: [
                  ThrowDto(points: 180, dartsThrown: 3, dartsOnDouble: 0),
                  ThrowDto(points: 0, dartsThrown: 3, dartsOnDouble: 0),
                ],
              ),
              LegDto(
                throws: [
                  ThrowDto(points: 180, dartsThrown: 3, dartsOnDouble: 0),
                ],
              ),
            ],
          ),
        ],
      );
      const dto = OfflineGameDto(
        id: 'dummyId',
        createdAt: 1637422280046,
        status: 'finished',
        mode: 'firstTo',
        size: 1,
        type: 'sets',
        startingPoints: 301,
        players: [player1, player2],
      );

      // Act
      final domain = dto.toDomain();

      // Assert
      final p1 = domain.players.get(0) as OfflinePlayer;
      expect(p1.id, UniqueId.fromUniqueString('player1Id'));
      expect(p1.name, 'Player1');
      expect(p1.won, true);
      expect(p1.wonLegsOrSets, 1);
      expect(
        p1.stats,
        const PlayerStats(
          average: 150.5,
          checkoutPercentage: 1,
          firstNineAverage: 150.5,
          bestLegDartsThrown: 6,
          bestLegAverage: 150.5,
          worstLegDartsThrown: 6,
          worstLegAverage: 150.5,
          averageDartsPerLeg: 6,
          highestFinish: 121,
          fourtyPlus: 0,
          sixtyPlus: 0,
          eightyPlus: 0,
          hundredPlus: 0,
          hundredTwentyPlus: 3,
          hundredFourtyPlus: 0,
          hundredSixtyPlus: 0,
          hundredEighty: 3,
        ),
      );

      final p2 = domain.players.get(1) as OfflinePlayer;
      expect(p2.id, UniqueId.fromUniqueString('player2Id'));
      expect(p2.name, 'Player2');
      expect(p2.won, false);
      expect(p2.wonLegsOrSets, 0);
      expect(
        p2.stats,
        const PlayerStats(
          average: 135.0,
          firstNineAverage: 135.0,
          fourtyPlus: 0,
          sixtyPlus: 0,
          eightyPlus: 0,
          hundredPlus: 0,
          hundredTwentyPlus: 0,
          hundredFourtyPlus: 0,
          hundredSixtyPlus: 0,
          hundredEighty: 3,
        ),
      );
    },
  );
}
