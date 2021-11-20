import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/leg.dart';
import 'package:dart_counter/domain/game/leg_stats.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/online/online_game.dart';
import 'package:dart_counter/domain/game/online/online_player.dart';
import 'package:dart_counter/domain/game/player_stats.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/infrastructure/game/leg_dto.dart';
import 'package:dart_counter/infrastructure/game/online/online_game_dto.dart';
import 'package:dart_counter/infrastructure/game/online/online_player_dto.dart';
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
  final OnlinePlayer playerDomain = OnlinePlayer(
    id: id,
    name: name,
    legsOrSets: left([legDomain].toImmutableList()),
    won: won,
    wonLegsOrSets: wonLegsOrSets,
    stats: statsDomain,
  );
  final OnlineGame domain = OnlineGame(
    id: gameId,
    createdAt: createdAt,
    status: status,
    mode: mode,
    size: size,
    type: type,
    startingPoints: startingPoints,
    players: [playerDomain].toImmutableList(),
    ownerId: id,
  );

  const legDto = LegDto(
    throws: [
      ThrowDto(points: 131, dartsThrown: 3, dartsOnDouble: 0),
    ],
  );
  const OnlinePlayerDto playerDto = OnlinePlayerDto(
    id: idString,
    name: name,
    legsOrSets: [legDto],
  );
  const OnlineGameDto dto = OnlineGameDto(
    id: gameIdString,
    createdAt: createdAtInt,
    status: statusString,
    mode: modeString,
    size: size,
    type: typeString,
    startingPoints: startingPoints,
    players: [playerDto],
    ownerId: idString,
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
    'photoUrl': null,
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
    'ownerId': idString,
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
      final underTest = OnlineGameDto.fromJson(json);

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
}
