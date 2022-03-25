import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_client/dart_client.dart';
import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/infrastructure/core/firestore_helpers.dart';
import 'package:dart_counter/infrastructure/game_invitation/game_invitation_service.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';
import 'package:social_client/social_client.dart';

class MockAuthService extends Mock implements IAuthService {}

class MockSocialClient extends Mock implements SocialClient {}

class MockDartClient extends Mock implements DartClient {}

void main() {
  late MockAuthService mockAuthService;
  late FakeFirebaseFirestore firestore;
  late MockSocialClient mockSocialClient;
  late MockDartClient mockDartClient;

  late GameInvitationService underTest;

  const userId = 'userId';

  setUp(() async {
    mockAuthService = MockAuthService();
    firestore = FakeFirebaseFirestore();
    mockSocialClient = MockSocialClient();
    mockDartClient = MockDartClient();

    await getIt.reset();
    getIt.registerFactory<IAuthService>(() => mockAuthService);
    getIt.registerFactory<FirebaseFirestore>(() => firestore);

    underTest = GameInvitationService(
      mockAuthService,
      firestore,
      mockSocialClient,
      mockDartClient,
    );
  });

  group('#Methods#', () {
    group('#accept#', () {
      final acceptedInvitation = GameInvitation.dummy();

      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () async {
          // Arrange
          // not authenticated user
          when(() => mockAuthService.isAuthenticated()).thenReturn(false);

          // Act & Assert
          expect(
            underTest.accept(
              invitation: acceptedInvitation,
            ),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN join game fails '
        'GIVEN accept game invitation fails '
        'THEN return unexpected failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenReturn(true);
          // join game succeeds
          when(
            () => mockDartClient.joinGame(
              gameId: acceptedInvitation.gameId.getOrCrash(),
            ),
          ).thenAnswer((_) async => false);
          // accept game invitation succeeds
          when(
            () => mockSocialClient.acceptGameInvitation(
              fromId: acceptedInvitation.fromId.getOrCrash(),
            ),
          ).thenAnswer((_) async => false);

          // Act
          final result = await underTest.accept(
            invitation: acceptedInvitation,
          );

          // Assert
          expect(result, left(const GameInvitationFailure.unexpected()));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN join game fails '
        'GIVEN accept game invitation succeeds '
        'THEN return unexpected failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenReturn(true);
          // join game fails
          when(
            () => mockDartClient.joinGame(
              gameId: acceptedInvitation.gameId.getOrCrash(),
            ),
          ).thenAnswer((_) async => false);
          // accept game invitation succeeds
          when(
            () => mockSocialClient.acceptGameInvitation(
              fromId: acceptedInvitation.fromId.getOrCrash(),
            ),
          ).thenAnswer((_) async => true);

          // Act
          final result = await underTest.accept(
            invitation: acceptedInvitation,
          );

          // Assert
          expect(result, left(const GameInvitationFailure.unexpected()));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN join game succeeds '
        'GIVEN accept game invitation fails '
        'THEN return unexpected failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenReturn(true);
          // join game succeeds
          when(
            () => mockDartClient.joinGame(
              gameId: acceptedInvitation.gameId.getOrCrash(),
            ),
          ).thenAnswer((_) async => true);
          // accept game invitation fails
          when(
            () => mockSocialClient.acceptGameInvitation(
              fromId: acceptedInvitation.fromId.getOrCrash(),
            ),
          ).thenAnswer((_) async => false);

          // Act
          final result = await underTest.accept(
            invitation: acceptedInvitation,
          );

          // Assert
          expect(result, left(const GameInvitationFailure.unexpected()));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN join game succeeds '
        'GIVEN accept game invitation succeeds '
        'THEN return unit.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenReturn(true);
          // join game succeeds
          when(
            () => mockDartClient.joinGame(
              gameId: acceptedInvitation.gameId.getOrCrash(),
            ),
          ).thenAnswer((_) async => true);
          // accept game invitation succeeds
          when(
            () => mockSocialClient.acceptGameInvitation(
              fromId: acceptedInvitation.fromId.getOrCrash(),
            ),
          ).thenAnswer((_) async => true);

          // Act
          final result = await underTest.accept(
            invitation: acceptedInvitation,
          );

          // Assert
          expect(result, right(unit));
        },
      );
    });

    group('#cancel#', () {
      final canceledInvitation = GameInvitation.dummy();

      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () async {
          // Arrange
          // not authenticated user
          when(() => mockAuthService.isAuthenticated()).thenReturn(false);

          // Act & Assert
          expect(
            underTest.cancel(
              invitation: canceledInvitation,
            ),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN cancel game invitation fails '
        'THEN return unexpected failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenReturn(true);
          // cancel game invitation fails
          when(
            () => mockSocialClient.cancelGameInvitation(
              toId: canceledInvitation.toId.getOrCrash(),
            ),
          ).thenAnswer((_) async => false);

          // Act
          final result = await underTest.cancel(
            invitation: canceledInvitation,
          );

          // Assert
          expect(result, left(const GameInvitationFailure.unexpected()));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN cancel game invitation succeeds '
        'THEN return unit.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenReturn(true);
          // cancel game invitation succeeds
          when(
            () => mockSocialClient.cancelGameInvitation(
              toId: canceledInvitation.toId.getOrCrash(),
            ),
          ).thenAnswer((_) async => true);

          // Act
          final result = await underTest.cancel(
            invitation: canceledInvitation,
          );

          // Assert
          expect(result, right(unit));
        },
      );
    });

    group('#decline#', () {
      final declinedInvitation = GameInvitation.dummy();

      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () async {
          // Arrange
          // not authenticated user
          when(() => mockAuthService.isAuthenticated()).thenReturn(false);

          // Act & Assert
          expect(
            underTest.decline(
              invitation: declinedInvitation,
            ),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN decline game invitation fails '
        'THEN return unexpected failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenReturn(true);
          // decline game invitation fails
          when(
            () => mockSocialClient.declineGameInvitation(
              fromId: declinedInvitation.fromId.getOrCrash(),
            ),
          ).thenAnswer((_) async => false);

          // Act
          final result = await underTest.decline(
            invitation: declinedInvitation,
          );

          // Assert
          expect(result, left(const GameInvitationFailure.unexpected()));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN decline game invitation succeeds '
        'THEN return unit.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenReturn(true);
          // decline game invitation succeeds
          when(
            () => mockSocialClient.declineGameInvitation(
              fromId: declinedInvitation.fromId.getOrCrash(),
            ),
          ).thenAnswer((_) async => true);

          // Act
          final result = await underTest.decline(
            invitation: declinedInvitation,
          );

          // Assert
          expect(result, right(unit));
        },
      );
    });

    group('#getReceivedGameInvitations#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          // not authenticated user
          when(() => mockAuthService.userId())
              .thenThrow(NotAuthenticatedError());

          // Act & Assert
          expect(
            () async => underTest.getReceivedGameInvitations(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains invalid received game invitations json '
        'THEN return unexpected failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // invalid received game invitations json
          await firestore.receivedGameInvitationsCollection().add({
            'key': 'value',
          });

          // Act
          final result = await underTest.getReceivedGameInvitations();

          // Assert
          expect(result, left(const GameInvitationFailure.unexpected()));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains 0 docs '
        'THEN return empty list.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // firestore return 0 docs
          // do nothing

          // Act
          final result = await underTest.getReceivedGameInvitations();

          // Assert
          expect(result, right(const KtList.empty()));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains valid received game invitations json '
        'THEN return received game invitations sorted by createdAt desc.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // valid received game invitations json
          const id1 = 'id1';
          const gameId1 = 'gameId1';
          const toId1 = 'toId1';
          const fromId1 = 'fromId1';
          const fromName1 = 'fromName1';
          const read1 = true;
          const createdAt1 = 1;
          await firestore.receivedGameInvitationsCollection().doc(id1).set({
            'gameId': gameId1,
            'toId': toId1,
            'fromId': fromId1,
            'fromName': fromName1,
            'read': read1,
            'createdAt': createdAt1,
          });

          const id2 = 'id2';
          const gameId2 = 'gameId2';
          const toId2 = 'toId2';
          const fromId2 = 'fromId2';
          const fromName2 = 'fromName2';
          const read2 = true;
          const createdAt2 = 2;
          await firestore.receivedGameInvitationsCollection().doc(id2).set({
            'gameId': gameId2,
            'toId': toId2,
            'fromId': fromId2,
            'fromName': fromName2,
            'read': read2,
            'createdAt': createdAt2,
          });

          // Act
          final result = await underTest.getReceivedGameInvitations();

          // Assert
          expect(
            result,
            right(
              KtList.from(
                [
                  GameInvitation(
                    id: UniqueId.fromUniqueString(id2),
                    gameId: UniqueId.fromUniqueString(gameId2),
                    toId: UniqueId.fromUniqueString(toId2),
                    fromId: UniqueId.fromUniqueString(fromId2),
                    fromName: Username(fromName2),
                    read: read2,
                    createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt2),
                  ),
                  GameInvitation(
                    id: UniqueId.fromUniqueString(id1),
                    gameId: UniqueId.fromUniqueString(gameId1),
                    toId: UniqueId.fromUniqueString(toId1),
                    fromId: UniqueId.fromUniqueString(fromId1),
                    fromName: Username(fromName1),
                    read: read1,
                    createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt1),
                  ),
                ],
              ),
            ),
          );
        },
      );
    });

    group('#getSentGameInvitations#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          // not authenticated user
          when(() => mockAuthService.userId())
              .thenThrow(NotAuthenticatedError());

          // Act & Assert
          expect(
            () async => underTest.getSentGameInvitations(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains invalid sent game invitations json '
        'THEN return unexpected failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // invalid sent game invitations json
          await firestore.sentGameInvitationsCollection().add({
            'key': 'value',
          });

          // Act
          final result = await underTest.getSentGameInvitations();

          // Assert
          expect(result, left(const GameInvitationFailure.unexpected()));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains 0 docs '
        'THEN return empty list.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // firestore return 0 docs
          // do nothing

          // Act
          final result = await underTest.getSentGameInvitations();

          // Assert
          expect(result, right(const KtList.empty()));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains valid sent game invitations json '
        'THEN return sent game invitations sorted by createdAt desc.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // valid sent game invitations json
          const id1 = 'id1';
          const gameId1 = 'gameId1';
          const toId1 = 'toId1';
          const fromId1 = 'fromId1';
          const fromName1 = 'fromName1';
          const read1 = true;
          const createdAt1 = 1;
          await firestore.sentGameInvitationsCollection().doc(id1).set({
            'gameId': gameId1,
            'toId': toId1,
            'fromId': fromId1,
            'fromName': fromName1,
            'read': read1,
            'createdAt': createdAt1,
          });

          const id2 = 'id2';
          const gameId2 = 'gameId2';
          const toId2 = 'toId2';
          const fromId2 = 'fromId2';
          const fromName2 = 'fromName2';
          const read2 = true;
          const createdAt2 = 2;
          await firestore.sentGameInvitationsCollection().doc(id2).set({
            'gameId': gameId2,
            'toId': toId2,
            'fromId': fromId2,
            'fromName': fromName2,
            'read': read2,
            'createdAt': createdAt2,
          });

          // Act
          final result = await underTest.getSentGameInvitations();

          // Assert
          expect(
            result,
            right(
              KtList.from(
                [
                  GameInvitation(
                    id: UniqueId.fromUniqueString(id2),
                    gameId: UniqueId.fromUniqueString(gameId2),
                    toId: UniqueId.fromUniqueString(toId2),
                    fromId: UniqueId.fromUniqueString(fromId2),
                    fromName: Username(fromName2),
                    read: read2,
                    createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt2),
                  ),
                  GameInvitation(
                    id: UniqueId.fromUniqueString(id1),
                    gameId: UniqueId.fromUniqueString(gameId1),
                    toId: UniqueId.fromUniqueString(toId1),
                    fromId: UniqueId.fromUniqueString(fromId1),
                    fromName: Username(fromName1),
                    read: read1,
                    createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt1),
                  ),
                ],
              ),
            ),
          );
        },
      );
    });

    group('#markReceivedInvitationsAsRead#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          // not authenticated user
          when(() => mockAuthService.userId())
              .thenThrow(NotAuthenticatedError());

          // Act & Assert
          expect(
            () async => underTest.markReceivedInvitationsAsRead(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains valid game invitation json '
        'THEN set read property of all game invitations to true and write to firestore.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));

          const id1 = 'id1';
          await firestore.receivedGameInvitationsCollection().doc(id1).set({
            'id': 'idString',
            'gameId': 'gameIdString',
            'toId': 'toIdString',
            'fromId': 'fromIdString',
            'fromName': 'fromNameString',
            'read': false,
            'createdAt': 1,
          });
          const id2 = 'id2';

          await firestore.receivedGameInvitationsCollection().doc(id2).set({
            'id': 'idString',
            'gameId': 'gameIdString',
            'toId': 'toIdString',
            'fromId': 'fromIdString',
            'fromName': 'fromNameString',
            'read': false,
            'createdAt': 2,
          });

          // Act
          await underTest.markReceivedInvitationsAsRead();

          // Assert
          final updatedRead1 = ((await firestore
                  .receivedGameInvitationsCollection()
                  .doc(id1)
                  .get())
              .data()! as Map<String, dynamic>)['read'] as bool;
          final updatedRead2 = ((await firestore
                  .receivedGameInvitationsCollection()
                  .doc(id1)
                  .get())
              .data()! as Map<String, dynamic>)['read'] as bool;
          expect(updatedRead1, true);
          expect(updatedRead2, true);
        },
      );
    });

    group('sendGameInvitation', () {
      final gameId = UniqueId.fromUniqueString('gameId');
      final toId = UniqueId.fromUniqueString('toId');

      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () async {
          // Arrange
          // not authenticated user
          when(() => mockAuthService.isAuthenticated()).thenReturn(false);

          // Act & Assert
          expect(
            underTest.sendGameInvitation(
              gameId: gameId,
              toId: toId,
            ),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      // TODO this methods seems to be broke atm
    });

    group('#watchReceivedGameInvitations#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          // not authenticated user
          when(() => mockAuthService.userId())
              .thenThrow(NotAuthenticatedError());

          // Act & Assert
          expect(
            () async => underTest.watchReceivedGameInvitations(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains invalid received game invitations json '
        'THEN emit unexpected failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // invalid received game invitations json
          await firestore.receivedGameInvitationsCollection().add({
            'key': 'value',
          });

          // Act
          final result = underTest.watchReceivedGameInvitations();

          // Assert
          expect(
            result,
            emitsInOrder([left(const GameInvitationFailure.unexpected())]),
          );
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains 0 docs '
        'THEN emit empty list.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // firestore return 0 docs
          // do nothing

          // Act
          final result = underTest.watchReceivedGameInvitations();

          // Assert
          expect(result, emitsInOrder([right(const KtList.empty())]));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains valid received game invitations json '
        'THEN emit received game invitations sorted by createdAt desc.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // valid received game invitations json
          const id1 = 'id1';
          const gameId1 = 'gameId1';
          const toId1 = 'toId1';
          const fromId1 = 'fromId1';
          const fromName1 = 'fromName1';
          const read1 = true;
          const createdAt1 = 1;
          await firestore.receivedGameInvitationsCollection().doc(id1).set({
            'gameId': gameId1,
            'toId': toId1,
            'fromId': fromId1,
            'fromName': fromName1,
            'read': read1,
            'createdAt': createdAt1,
          });

          const id2 = 'id2';
          const gameId2 = 'gameId2';
          const toId2 = 'toId2';
          const fromId2 = 'fromId2';
          const fromName2 = 'fromName2';
          const read2 = true;
          const createdAt2 = 2;
          await firestore.receivedGameInvitationsCollection().doc(id2).set({
            'gameId': gameId2,
            'toId': toId2,
            'fromId': fromId2,
            'fromName': fromName2,
            'read': read2,
            'createdAt': createdAt2,
          });

          // Act
          final result = underTest.watchReceivedGameInvitations();

          // Assert
          expect(
            result,
            emitsInOrder([
              right(
                KtList.from(
                  [
                    GameInvitation(
                      id: UniqueId.fromUniqueString(id2),
                      gameId: UniqueId.fromUniqueString(gameId2),
                      toId: UniqueId.fromUniqueString(toId2),
                      fromId: UniqueId.fromUniqueString(fromId2),
                      fromName: Username(fromName2),
                      read: read2,
                      createdAt:
                          DateTime.fromMillisecondsSinceEpoch(createdAt2),
                    ),
                    GameInvitation(
                      id: UniqueId.fromUniqueString(id1),
                      gameId: UniqueId.fromUniqueString(gameId1),
                      toId: UniqueId.fromUniqueString(toId1),
                      fromId: UniqueId.fromUniqueString(fromId1),
                      fromName: Username(fromName1),
                      read: read1,
                      createdAt:
                          DateTime.fromMillisecondsSinceEpoch(createdAt1),
                    ),
                  ],
                ),
              ),
            ]),
          );
        },
      );
    });

    group('#watchSentInvitations#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          // not authenticated user
          when(() => mockAuthService.userId())
              .thenThrow(NotAuthenticatedError());

          // Act & Assert
          expect(
            () async => underTest.watchSentInvitations(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains invalid sent game invitations json '
        'THEN emit unexpected failure.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // invalid sent game invitations json
          await firestore.sentGameInvitationsCollection().add({
            'key': 'value',
          });

          // Act
          final result = underTest.watchSentInvitations();

          // Assert
          expect(
            result,
            emitsInOrder([left(const GameInvitationFailure.unexpected())]),
          );
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains 0 docs '
        'THEN emit empty list.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // firestore return 0 docs
          // do nothing

          // Act
          final result = underTest.watchSentInvitations();

          // Assert
          expect(result, emitsInOrder([right(const KtList.empty())]));
        },
      );

      test(
        'GIVEN authenticated user '
        'GIVEN firestore contains valid sent game invitations json '
        'THEN emit sent game invitations sorted by createdAt desc.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.userId())
              .thenReturn(UniqueId.fromUniqueString(userId));
          // valid sent game invitations json
          const id1 = 'id1';
          const gameId1 = 'gameId1';
          const toId1 = 'toId1';
          const fromId1 = 'fromId1';
          const fromName1 = 'fromName1';
          const read1 = true;
          const createdAt1 = 1;
          await firestore.sentGameInvitationsCollection().doc(id1).set({
            'gameId': gameId1,
            'toId': toId1,
            'fromId': fromId1,
            'fromName': fromName1,
            'read': read1,
            'createdAt': createdAt1,
          });

          const id2 = 'id2';
          const gameId2 = 'gameId2';
          const toId2 = 'toId2';
          const fromId2 = 'fromId2';
          const fromName2 = 'fromName2';
          const read2 = true;
          const createdAt2 = 2;
          await firestore.sentGameInvitationsCollection().doc(id2).set({
            'gameId': gameId2,
            'toId': toId2,
            'fromId': fromId2,
            'fromName': fromName2,
            'read': read2,
            'createdAt': createdAt2,
          });

          // Act
          final result = underTest.watchSentInvitations();

          // Assert
          expect(
            result,
            emitsInOrder([
              right(
                KtList.from(
                  [
                    GameInvitation(
                      id: UniqueId.fromUniqueString(id2),
                      gameId: UniqueId.fromUniqueString(gameId2),
                      toId: UniqueId.fromUniqueString(toId2),
                      fromId: UniqueId.fromUniqueString(fromId2),
                      fromName: Username(fromName2),
                      read: read2,
                      createdAt:
                          DateTime.fromMillisecondsSinceEpoch(createdAt2),
                    ),
                    GameInvitation(
                      id: UniqueId.fromUniqueString(id1),
                      gameId: UniqueId.fromUniqueString(gameId1),
                      toId: UniqueId.fromUniqueString(toId1),
                      fromId: UniqueId.fromUniqueString(fromId1),
                      fromName: Username(fromName1),
                      read: read1,
                      createdAt:
                          DateTime.fromMillisecondsSinceEpoch(createdAt1),
                    ),
                  ],
                ),
              ),
            ]),
          );
        },
      );
    });
  });
}
