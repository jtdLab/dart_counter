import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/leg.dart';
import 'package:dart_counter/domain/game/leg_stats.dart';
import 'package:dart_counter/domain/game/offline/offline_player.dart';
import 'package:dart_counter/domain/game/player_stats.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/infrastructure/game/leg_dto.dart';
import 'package:dart_counter/infrastructure/game/offline/offline_player_dto.dart';
import 'package:dart_counter/infrastructure/game/throw_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

void main() {
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
  final OfflinePlayer domain = OfflinePlayer(
    id: id,
    name: name,
    legsOrSets: left([legDomain].toImmutableList()),
    won: won,
    wonLegsOrSets: wonLegsOrSets,
    stats: statsDomain,
  );

  const legDto = LegDto(
    throws: [
      ThrowDto(points: 131, dartsThrown: 3, dartsOnDouble: 0),
    ],
  );
  const OfflinePlayerDto dto = OfflinePlayerDto(
    id: idString,
    name: name,
    legsOrSets: [legDto],
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
  const json = {
    'id': idString,
    'name': name,
    'legsOrSets': [
      legJson,
    ],
  };

  test(
    'constructor',
    () {
      // Assert
      expect(dto.id, idString);
      expect(dto.name, name);
      expect(dto.legsOrSets, [legDto]);
    },
  );

  test(
    'toDomain',
    () {
      // Act
      final underTest =
          dto.toDomain(legsOrSetsNeededToWin: 10, startingPoints: 301);

      // Assert
      expect(underTest, domain);
    },
  );

  test(
    'toExternal',
    () {
      // Act
      final underTest =
          dto.toExternal(legsOrSetsNeededToWin: 10, startingPoints: 301);

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

  test(
    'fromJson',
    () {
      // Act
      final underTest = OfflinePlayerDto.fromJson(json);

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
