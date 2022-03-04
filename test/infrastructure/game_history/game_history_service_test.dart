import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dart_counter/infrastructure/game_history/game_history_service.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockFriendService extends Mock implements IFriendService {}

void main() {
  late FakeFirebaseFirestore firestore;

  late MockFriendService friendService;

  late GameHistoryService underTest;

  setUp(() {
    firestore = FakeFirebaseFirestore();
    friendService = MockFriendService();

    underTest = GameHistoryService(
      firestore,
      friendService,
    );
  });

  group('fetchGameHistoryOffline', () {
    // TODO implement tests
    /**
   *   test(
      'GIVEN not authenticated user '
      'THEN throw NotAuthenticatedError.',
      () {
        // Arrange
        // not authenticated user
        when(
          () => mockAuthService.isAuthenticated(),
        ).thenAnswer((_) => false);

        // Act & Assert
        expect(
          underTest.getGameHistoryOffline(),
          throwsA(isA<NotAuthenticatedError>()),
        );
      },
    );

    test(
      'GIVEN authenticated user but has no network access '
      'THEN return no network access failure.',
      () async {
        // Arrange
        // authenticated user
        when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
        // no network access
        FakeGameHistoryService.hasNetworkConnection = false;

        // Act
        final result = await underTest.getGameHistoryOffline();

        // Assert
        expect(result, left(const GameHistoryFailure.noNetworkAccess()));
      },
    );

    test(
      'GIVEN authenticated user and has network access '
      'THEN game history sorted by createdAt from most recent to oldest.',
      () async {
        // Arrange
        // authenticated user
        when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
        // network access
        FakeGameHistoryService.hasNetworkConnection = true;

        // Act
        final result = await underTest.getGameHistoryOffline();

        // Assert
        expect(
          result
              .toOption()
              .toNullable()!
              .getOrCrash()
              .asList()
              .map((e) => e.createdAt)
              .toList(),
          result
              .toOption()
              .toNullable()!
              .getOrCrash()
              .asList()
              .map((e) => e.createdAt)
              .toList()
            ..sort(
              (a, b) => a.compareTo(b),
            ),
        );
      },
    );
  */
  });

  group('fetchGameHistoryOnline', () {
    // TODO implement tests
  });
}
