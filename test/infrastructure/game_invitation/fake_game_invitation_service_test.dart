import 'package:dart_counter/domain/auth/i_auth_service.dart';
import 'package:dart_counter/domain/core/domain_error.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/infrastructure/game_invitation/fake_game_invitation_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthService extends Mock implements IAuthService {}

void main() {
  late MockAuthService mockAuthService;

  late FakeGameInvitationService underTest;

  setUp(() {
    mockAuthService = MockAuthService();

    underTest = FakeGameInvitationService(mockAuthService);
    FakeGameInvitationService.hasNetworkConnection = true;
  });

  void setUpMockAuthServiceWithAuthenticatedUser() {
    when(
      () => mockAuthService.isAuthenticated(),
    ).thenAnswer((_) => true);
    when(
      () => mockAuthService.watchIsAuthenticated(),
    ).thenAnswer((_) => Stream.fromIterable([true]));
  }

  void setUpMockAuthServiceWithNotAuthenticatedUser() {
    when(
      () => mockAuthService.isAuthenticated(),
    ).thenAnswer((_) => false);
    when(
      () => mockAuthService.watchIsAuthenticated(),
    ).thenAnswer((_) => Stream.fromIterable([false]));
  }

  // TODO refactor
  

  group('#Methods#', () {
    group('accept', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          setUpMockAuthServiceWithNotAuthenticatedUser();
          final underTest = FakeGameInvitationService(mockAuthService);

          // Act & Assert
          expect(
            underTest.accept(invitation: GameInvitation.dummy()),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeGameInvitationService.hasNetworkConnection = false;
          final underTest = FakeGameInvitationService(mockAuthService);

          // Act
          final failurOrUnit =
              await underTest.accept(invitation: GameInvitation.dummy());

          // Assert
          expect(
            failurOrUnit,
            left(const GameInvitationFailure.noNetworkAccess()),
          );
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'WHEN called with valid game invitation '
        'THEN return unit and emit updated received invitations without the accepted invitation.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeGameInvitationService.hasNetworkConnection = true;
          final underTest = FakeGameInvitationService(mockAuthService);
          final acceptedInvitation =
              (await underTest.getReceivedGameInvitations())
                  .toOption()
                  .toNullable()!
                  .get(0);

          // Act
          final failurOrUnit = await underTest.accept(
            invitation: acceptedInvitation,
          );

          // Assert
          expect(failurOrUnit.isRight(), true);
          underTest.watchReceivedGameInvitations().listen(
                expectAsync1(
                  (failureOrInvitations) => expect(
                    failureOrInvitations
                        .toOption()
                        .toNullable()!
                        .contains(acceptedInvitation),
                    false,
                  ),
                ),
              );
        },
      );
    });

    group('cancel', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          setUpMockAuthServiceWithNotAuthenticatedUser();
          final underTest = FakeGameInvitationService(mockAuthService);

          // Act & Assert
          expect(
            underTest.cancel(invitation: GameInvitation.dummy()),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeGameInvitationService.hasNetworkConnection = false;
          final underTest = FakeGameInvitationService(mockAuthService);

          // Act
          final failurOrUnit =
              await underTest.cancel(invitation: GameInvitation.dummy());

          // Assert
          expect(
            failurOrUnit,
            left(const GameInvitationFailure.noNetworkAccess()),
          );
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'WHEN called with valid game invitation '
        'THEN return unit and emit updated sent invitations without the canceled invitation.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeGameInvitationService.hasNetworkConnection = true;
          final underTest = FakeGameInvitationService(mockAuthService);
          final canceledInvitation = (await underTest.getSentGameInvitations())
              .toOption()
              .toNullable()!
              .get(0);

          // Act
          final failurOrUnit = await underTest.cancel(
            invitation: canceledInvitation,
          );

          // Assert
          expect(failurOrUnit.isRight(), true);
          underTest.watchSentInvitations().listen(
                expectAsync1(
                  (failureOrInvitations) => expect(
                    failureOrInvitations
                        .toOption()
                        .toNullable()!
                        .contains(canceledInvitation),
                    false,
                  ),
                ),
              );
        },
      );
    });

    group('decline', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          setUpMockAuthServiceWithNotAuthenticatedUser();
          final underTest = FakeGameInvitationService(mockAuthService);

          // Act & Assert
          expect(
            underTest.decline(invitation: GameInvitation.dummy()),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeGameInvitationService.hasNetworkConnection = false;
          final underTest = FakeGameInvitationService(mockAuthService);

          // Act
          final failurOrUnit =
              await underTest.decline(invitation: GameInvitation.dummy());

          // Assert
          expect(
            failurOrUnit,
            left(const GameInvitationFailure.noNetworkAccess()),
          );
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'WHEN called with valid game invitation '
        'THEN return unit and emit updated received invitations without the declinced invitation.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeGameInvitationService.hasNetworkConnection = true;
          final underTest = FakeGameInvitationService(mockAuthService);
          final declinedInvitation =
              (await underTest.getReceivedGameInvitations())
                  .toOption()
                  .toNullable()!
                  .get(0);

          // Act
          final failurOrUnit = await underTest.decline(
            invitation: declinedInvitation,
          );

          // Assert
          expect(failurOrUnit.isRight(), true);
          underTest.watchReceivedGameInvitations().listen(
                expectAsync1(
                  (failureOrInvitations) => expect(
                    failureOrInvitations
                        .toOption()
                        .toNullable()!
                        .contains(declinedInvitation),
                    false,
                  ),
                ),
              );
        },
      );
    });

    group('getReceivedGameInvitations', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          setUpMockAuthServiceWithNotAuthenticatedUser();
          final underTest = FakeGameInvitationService(mockAuthService);

          // Act & Assert
          expect(
            () async => underTest.getReceivedGameInvitations(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure ',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeGameInvitationService.hasNetworkConnection = false;
          final underTest = FakeGameInvitationService(mockAuthService);

          // Act
          final failureOrReceivedGameInvitations =
              await underTest.getReceivedGameInvitations();

          // Assert
          expect(
            failureOrReceivedGameInvitations,
            left(const GameInvitationFailure.noNetworkAccess()),
          );
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'THEN return not empty received game invitations.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeGameInvitationService.hasNetworkConnection = true;
          final underTest = FakeGameInvitationService(mockAuthService);

          // Act
          final failureOrReceivedGameInvitations =
              await underTest.getReceivedGameInvitations();

          // Assert
          expect(failureOrReceivedGameInvitations.isRight(), true);
          expect(
              failureOrReceivedGameInvitations
                  .toOption()
                  .toNullable()!
                  .isEmpty(),
              false);
        },
      );
    });

    group('getSentGameInvitations', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          setUpMockAuthServiceWithNotAuthenticatedUser();
          final underTest = FakeGameInvitationService(mockAuthService);

          // Act & Assert
          expect(
            () async => underTest.getSentGameInvitations(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure ',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeGameInvitationService.hasNetworkConnection = false;
          final underTest = FakeGameInvitationService(mockAuthService);

          // Act
          final failureOrSentGameInvitations =
              await underTest.getSentGameInvitations();

          // Assert
          expect(
            failureOrSentGameInvitations,
            left(const GameInvitationFailure.noNetworkAccess()),
          );
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'THEN return sent game invitations.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeGameInvitationService.hasNetworkConnection = true;
          final underTest = FakeGameInvitationService(mockAuthService);

          // Act
          final failureOrSentGameInvitations =
              await underTest.getSentGameInvitations();

          // Assert
          expect(failureOrSentGameInvitations.isRight(), true);
          expect(
            failureOrSentGameInvitations.toOption().toNullable()!.isEmpty(),
            false,
          );
        },
      );
    });

    group('markReceivedInvitationsAsRead', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          setUpMockAuthServiceWithNotAuthenticatedUser();
          final underTest = FakeGameInvitationService(mockAuthService);

          // Act & Assert
          expect(
            () async => underTest.markReceivedInvitationsAsRead(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'Return unit and emit updated received invitations with read flag set to true for every invitation.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeGameInvitationService.hasNetworkConnection = true;
          final underTest = FakeGameInvitationService(mockAuthService);

          // Act
          final failureOrUnit = await underTest.markReceivedInvitationsAsRead();

          // Assert
          expect(failureOrUnit.isRight(), true);
          underTest.watchReceivedGameInvitations().listen(
                expectAsync1(
                  (failureOrInvitations) => expect(
                    failureOrInvitations
                        .toOption()
                        .toNullable()!
                        .asList()
                        .every((element) => element.read),
                    true,
                  ),
                ),
              );
        },
      );
    });

    group('sendGameInvitation', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          setUpMockAuthServiceWithNotAuthenticatedUser();
          final underTest = FakeGameInvitationService(mockAuthService);

          // Act & Assert
          expect(
            () => underTest.sendGameInvitation(
              gameId: UniqueId.fromUniqueString('gameId'),
              toId: UniqueId.fromUniqueString('toId'),
            ),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return no network access failure.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeGameInvitationService.hasNetworkConnection = false;
          final underTest = FakeGameInvitationService(mockAuthService);

          // Act
          final failureOrUnit = await underTest.sendGameInvitation(
            gameId: UniqueId.fromUniqueString('gameId'),
            toId: UniqueId.fromUniqueString('toId'),
          );

          // Assert
          expect(
            failureOrUnit,
            left(const GameInvitationFailure.noNetworkAccess()),
          );
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'THEN return unit and emit updated sent game invitations '
        'with the sent invitation as the last element.',
        () async {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeGameInvitationService.hasNetworkConnection = true;
          final underTest = FakeGameInvitationService(mockAuthService);

          // Act
          final failureOrUnit = await underTest.sendGameInvitation(
            gameId: UniqueId.fromUniqueString('gameId'),
            toId: UniqueId.fromUniqueString('toId'),
          );

          // Assert
          expect(failureOrUnit.isRight(), true);
          underTest.watchSentInvitations().listen(
            expectAsync1(
              (failureOrInvitations) {
                final last =
                    failureOrInvitations.toOption().toNullable()!.asList().last;
                expect(last.gameId, UniqueId.fromUniqueString('gameId'));
                expect(last.toId, UniqueId.fromUniqueString('toId'));
              },
            ),
          );
        },
      );
    });

    group('watchReceivedGameInvitations', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          setUpMockAuthServiceWithNotAuthenticatedUser();
          final underTest = FakeGameInvitationService(mockAuthService);

          // Act & Assert
          expect(
            () => underTest.watchReceivedGameInvitations(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return stream with no network access failure.',
        () {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeGameInvitationService.hasNetworkConnection = false;
          final underTest = FakeGameInvitationService(mockAuthService);

          // Act & Assert
          expect(
            underTest.watchReceivedGameInvitations(),
            emitsInOrder([left(const GameInvitationFailure.noNetworkAccess())]),
          );
        },
      );

      test(
          'GIVEN network connection available '
          'THEN emit value on listen.', () {
        // Arrange
        setUpMockAuthServiceWithAuthenticatedUser();
        FakeGameInvitationService.hasNetworkConnection = true;
        final underTest = FakeGameInvitationService(mockAuthService);

        // Assert
        underTest.watchReceivedGameInvitations().listen(
              expectAsync1(
                (failureOrInvitations) =>
                    expect(failureOrInvitations.isRight(), true),
              ),
            );
      });
    });

    group('watchSentInvitations', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          setUpMockAuthServiceWithNotAuthenticatedUser();
          final underTest = FakeGameInvitationService(mockAuthService);

          // Act & Assert
          expect(
            () => underTest.watchSentInvitations(),
            throwsA(isA<NotAuthenticatedError>()),
          );
        },
      );

      test(
        'GIVEN authenticated user but has no network access '
        'THEN return stream with no network access failure.',
        () {
          // Arrange
          setUpMockAuthServiceWithAuthenticatedUser();
          FakeGameInvitationService.hasNetworkConnection = false;
          final underTest = FakeGameInvitationService(mockAuthService);

          // Act & Assert
          expect(
            underTest.watchSentInvitations(),
            emitsInOrder([left(const GameInvitationFailure.noNetworkAccess())]),
          );
        },
      );

      test(
          'GIVEN network connection available '
          'THEN emit value on listen.', () {
        // Arrange
        setUpMockAuthServiceWithAuthenticatedUser();
        FakeGameInvitationService.hasNetworkConnection = true;
        final underTest = FakeGameInvitationService(mockAuthService);

        // Assert
        underTest.watchSentInvitations().listen(
              expectAsync1(
                (failureOrInvitations) =>
                    expect(failureOrInvitations.isRight(), true),
              ),
            );
      });
    });
  });
}
