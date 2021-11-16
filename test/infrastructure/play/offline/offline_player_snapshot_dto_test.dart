import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/player_stats.dart';
import 'package:dart_counter/domain/play/offline/offline_player_snapshot.dart';
import 'package:dart_counter/infrastructure/game/player_stats_dto.dart';
import 'package:dart_counter/infrastructure/play/offline/offline_player_snapshot_dto.dart';
import 'package:dart_game/dart_game.dart' as ex;
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

void main() {
  final id = UniqueId.fromUniqueString('dummyId');
  const idString = 'dummyId';
  const name = 'dummyName';
  const isCurrentTurn = false;
  const won = false;

  const wonSets = 0;
  const wonLegsCurrentSet = 0;
  const pointsLeft = 170;
  const finishRecommendation = ['T20', 'T20', 'D25'];
  const lastPoints = 131;
  const dartsThrownCurrentLeg = 3;

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
  final OfflinePlayerSnapshot domainWithoutNulls = OfflinePlayerSnapshot(
    id: id,
    name: name,
    isCurrentTurn: isCurrentTurn,
    won: won,
    wonSets: wonSets,
    wonLegsCurrentSet: wonLegsCurrentSet,
    pointsLeft: pointsLeft,
    finishRecommendation: finishRecommendation.toImmutableList(),
    lastPoints: lastPoints,
    dartsThrownCurrentLeg: dartsThrownCurrentLeg,
    stats: statsDomain,
  );
  final OfflinePlayerSnapshot domainWithNulls = OfflinePlayerSnapshot(
    id: id,
    isCurrentTurn: false,
    won: false,
    wonLegsCurrentSet: 0,
    pointsLeft: 0,
    dartsThrownCurrentLeg: 0,
    stats: const PlayerStats(),
  );

  const statsDto = PlayerStatsDto(
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
  const OfflinePlayerSnapshotDto dtoWithoutNulls = OfflinePlayerSnapshotDto(
    id: idString,
    name: name,
    isCurrentTurn: isCurrentTurn,
    won: won,
    wonSets: wonSets,
    wonLegsCurrentSet: wonLegsCurrentSet,
    pointsLeft: pointsLeft,
    finishRecommendation: finishRecommendation,
    lastPoints: lastPoints,
    dartsThrownCurrentLeg: dartsThrownCurrentLeg,
    stats: statsDto,
  );
  const OfflinePlayerSnapshotDto dtoWithNulls = OfflinePlayerSnapshotDto(
    id: idString,
  );

  final ex.Player externalWithoutNulls = ex.Player.fromData(
    id: idString,
    name: name,
    legsOrSetsNeededToWin: 10,
    isCurrentTurn: isCurrentTurn,
    legsOrSets: right([
      ex.Set.fromData(
        startingPoints: 301,
        legs: [
          ex.Leg.fromData(
            startingPoints: 301,
            throws: [
              ex.Throw(points: 131),
            ],
          ),
        ],
      ),
    ]),
  );
  final ex.Player externalWithNulls = ex.Player.fromData(
    id: idString,
  );

  group(
    'constructor',
    () {
      test('without nulls', () {
        // Assert
        expect(dtoWithoutNulls.id, idString);
        expect(dtoWithoutNulls.isCurrentTurn, isCurrentTurn);
        expect(dtoWithoutNulls.won, won);
        expect(dtoWithoutNulls.wonSets, wonSets);
        expect(dtoWithoutNulls.wonLegsCurrentSet, wonLegsCurrentSet);
        expect(dtoWithoutNulls.pointsLeft, pointsLeft);
        expect(dtoWithoutNulls.finishRecommendation, finishRecommendation);
        expect(dtoWithoutNulls.lastPoints, lastPoints);
        expect(dtoWithoutNulls.dartsThrownCurrentLeg, dartsThrownCurrentLeg);
        expect(dtoWithoutNulls.stats, statsDto);
      });

      test('with nulls', () {
        // Assert
        expect(dtoWithNulls.id, idString);
        expect(dtoWithNulls.name, null);
        expect(dtoWithNulls.isCurrentTurn, null);
        expect(dtoWithNulls.won, null);
        expect(dtoWithNulls.wonSets, null);
        expect(dtoWithNulls.wonLegsCurrentSet, null);
        expect(dtoWithNulls.pointsLeft, null);
        expect(dtoWithNulls.finishRecommendation, null);
        expect(dtoWithNulls.lastPoints, null);
        expect(dtoWithNulls.dartsThrownCurrentLeg, null);
        expect(dtoWithNulls.stats, null);
      });
    },
  );

  group(
    'toDomain',
    () {
      test('without nulls', () {
        // Act
        final underTest = dtoWithoutNulls.toDomain();

        // Assert
        expect(underTest, domainWithoutNulls);
      });

      test('with nulls', () {
        // Act
        final underTest = dtoWithNulls.toDomain();

        // Assert
        expect(underTest, domainWithNulls);
      });
    },
  );

  group(
    'fromExternal',
    () {
      test('without nulls', () {
        // Act
        final underTest =
            OfflinePlayerSnapshotDto.fromExternal(externalWithoutNulls);

        // Assert
        expect(underTest, dtoWithoutNulls);
      });

      test('with nulls', () {
        // Act
        final underTest =
            OfflinePlayerSnapshotDto.fromExternal(externalWithNulls);

        // Assert
        expect(underTest, dtoWithNulls);
      });
    },
  );
}
