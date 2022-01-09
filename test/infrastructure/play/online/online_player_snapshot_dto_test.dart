import 'package:dart_client/dart_client.dart' as c;
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game/player_stats.dart';
import 'package:dart_counter/domain/play/online/online_player_snapshot.dart';
import 'package:dart_counter/infrastructure/game/player_stats_dto.dart';
import 'package:dart_counter/infrastructure/play/online/online_player_snapshot_dto.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

void main() {
  final id = UniqueId.fromUniqueString('dummyId');
  const idString = 'dummyId';
  const name = 'dummyName';
  const photoUrl = 'www.example.com';
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
  final OnlinePlayerSnapshot domainWithoutNulls = OnlinePlayerSnapshot(
    id: id,
    name: name,
    photoUrl: photoUrl,
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
  final OnlinePlayerSnapshot domainWithNulls = OnlinePlayerSnapshot(
    id: id,
    name: name,
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
  const OnlinePlayerSnapshotDto dtoWithoutNulls = OnlinePlayerSnapshotDto(
    id: idString,
    name: name,
    photoUrl: photoUrl,
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
  const OnlinePlayerSnapshotDto dtoWithNulls = OnlinePlayerSnapshotDto(
    id: idString,
    name: name,
  );

  const statsClient = c.Stats(
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
  final c.PlayerSnapshot clientWithoutNulls = c.PlayerSnapshot(
    id: idString,
    name: name,
    isCurrentTurn: isCurrentTurn,
    won: won,
    wonSets: wonSets,
    wonLegsCurrentSet: wonLegsCurrentSet,
    pointsLeft: pointsLeft,
    finishRecommendation: finishRecommendation.toImmutableList(),
    lastPoints: lastPoints,
    dartsThrownCurrentLeg: dartsThrownCurrentLeg,
    stats: statsClient,
    userId: idString,
  );
  const c.PlayerSnapshot clientWithNulls = c.PlayerSnapshot(
    id: idString,
    name: name,
    userId: idString,
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
        expect(dtoWithoutNulls.stats, statsDto);
      });

      test('with nulls', () {
        // Assert
        expect(dtoWithNulls.id, idString);
        expect(dtoWithNulls.name, name);
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
    'fromClient',
    () {
      test('without nulls', () {
        // Act
        final underTest =
            OnlinePlayerSnapshotDto.fromClient(clientWithoutNulls);

        // Assert
        expect(underTest.copyWith(photoUrl: photoUrl), dtoWithoutNulls);
      });

      test('with nulls', () {
        // Act
        final underTest = OnlinePlayerSnapshotDto.fromClient(clientWithNulls);

        // Assert
        expect(underTest, dtoWithNulls);
      });
    },
  );
}
