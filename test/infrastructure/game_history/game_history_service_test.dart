import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dart_counter/domain/game/leg.dart';
import 'package:dart_counter/domain/game/leg_stats.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/game/type.dart';
import 'package:dart_counter/domain/game/offline/offline_game.dart';
import 'package:dart_counter/domain/game/offline/offline_player.dart';
import 'package:dart_counter/domain/game/player_stats.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/game/throw.dart';
import 'package:dart_counter/domain/game_history/game_history_failure.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';
import 'package:dart_counter/infrastructure/game/offline/offline_game_dto.dart';
import 'package:dart_counter/infrastructure/game_history/game_history_service.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthService extends Mock implements IAuthService {}

class MockFriendService extends Mock implements IFriendService {}

void main() {
  late MockAuthService authService;
  late FakeFirebaseFirestore firestore;
  late MockFriendService friendService;

  late GameHistoryService underTest;

  const userId = 'userId';

  setUp(() async {
    authService = MockAuthService();
    firestore = FakeFirebaseFirestore();
    friendService = MockFriendService();

    // Reset DI-container
    await getIt.reset();
    getIt.registerFactory<IAuthService>(() => authService);
    getIt.registerFactory<FirebaseFirestore>(() => firestore);

    underTest = GameHistoryService(
      firestore,
      friendService,
    );
  });

  group('fetchGameHistoryOffline', () {
    test(
      'GIVEN not authenticated user '
      'THEN throw NotAuthenticatedError.',
      () {
        // Arrange
        // not authenticated user
        when(() => authService.userId()).thenThrow(NotAuthenticatedError());

        // Act & Assert
        expect(
          underTest.getGameHistoryOffline(),
          throwsA(isA<NotAuthenticatedError>()),
        );
      },
    );

    test(
      'GIVEN authenticated user '
      'GIVEN firestore contains 0 docs '
      'THEN return empty list.',
      () async {
        // Arrange
        // authenticated user
        when(() => authService.userId())
            .thenReturn(UniqueId.fromUniqueString(userId));
        // firestore contains no data
        // do nothing

        // Act
        final result = await underTest.getGameHistoryOffline();

        // Assert
        expect(result, right(List10<OfflineGame>.empty()));
      },
    );

    test(
      'GIVEN authenticated user '
      'GIVEN firestore contains invalid offline game history json '
      'THEN return unexpected failure.',
      () async {
        // Arrange
        // authenticated user
        when(() => authService.userId())
            .thenReturn(UniqueId.fromUniqueString(userId));
        // invalid offline game history json
        await firestore.gameHistoryOfflineCollection().add({
          'key': 'value',
        });

        // Act
        final result = await underTest.getGameHistoryOffline();

        // Assert
        expect(result, left(const GameHistoryFailure.unexpected()));
      },
    );

    // TODO success case

    /**
     * test(
      'GIVEN authenticated user '
      'GIVEN firestore contains valid offline game history json '
      'THEN game history sorted by createdAt from most recent to oldest.',
      () async {
        // Arrange
        // authenticated user
        when(() => authService.userId())
            .thenReturn(UniqueId.fromUniqueString(userId));
        // valid offline game history json
        final gameId = UniqueId.fromUniqueString('dummyGameId');
        const gameIdString = 'dummyGameId';
        final createdAt1 = DateTime.fromMillisecondsSinceEpoch(1);
        const createdAtInt1 = 1;
        final createdAt2 = DateTime.fromMillisecondsSinceEpoch(2);
        const createdAtInt2 = 2;
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
        const json1 = {
          'id': gameIdString,
          'createdAt': createdAtInt1,
          'status': statusString,
          'mode': modeString,
          'size': size,
          'type': typeString,
          'startingPoints': startingPoints,
          'players': [playerJson],
        };
        const json2 = {
          'id': gameIdString,
          'createdAt': createdAtInt2,
          'status': statusString,
          'mode': modeString,
          'size': size,
          'type': typeString,
          'startingPoints': startingPoints,
          'players': [playerJson],
        };

        await firestore.gameHistoryOfflineCollection().add(json1);
        await firestore.gameHistoryOfflineCollection().add(json2);

        print(json1);
        final collection = firestore.gameHistoryOfflineCollection();

        // fetch offline game history
        final querySnapshot = await collection.get();

        for (final doc in querySnapshot.docs) {
          // parse the json

          final json = (doc.data() ?? {}) as Map<String, dynamic>;

          print(json);
          print(json == json1);

          print(OfflineGameDto.fromJson(json).toDomain());
        }

        // Act
        final result = await underTest.getGameHistoryOffline();

        // Assert
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
        final playerDomain = OfflinePlayer(
          id: id,
          name: name,
          legsOrSets: left([legDomain].toImmutableList()),
          won: won,
          wonLegsOrSets: wonLegsOrSets,
          stats: statsDomain,
        );

        /**
         *     expect(
          result,
          right(
            List10(
              KtList.from(
                [
                  OfflineGame(
                    id: gameId,
                    createdAt: createdAt2,
                    status: status,
                    mode: mode,
                    size: size,
                    type: type,
                    startingPoints: startingPoints,
                    players: [playerDomain].toImmutableList(),
                  ),
                  OfflineGame(
                    id: gameId,
                    createdAt: createdAt1,
                    status: status,
                    mode: mode,
                    size: size,
                    type: type,
                    startingPoints: startingPoints,
                    players: [playerDomain].toImmutableList(),
                  )
                ],
              ),
            ),
          ),
        );
    
         */
      },
    );
 */
  });

  group('fetchGameHistoryOnline', () {
    // TODO implement tests
  });
}
