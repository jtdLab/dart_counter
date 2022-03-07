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

  group('#Methods#', () {
    group('#accept#', () {
      final acceptedInvitation = GameInvitation.dummy();

      test(
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
            underTest.accept(invitation: acceptedInvitation),
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
          FakeGameInvitationService.hasNetworkConnection = false;

          // Act
          final result = await underTest.accept(invitation: acceptedInvitation);

          // Assert
          expect(result, left(const GameInvitationFailure.noNetworkAccess()));
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'WHEN called with valid game invitation '
        'THEN return unit and emit updated received invitations without the accepted invitation.',
        () async {
          // Arrange
          // authenticated user
          when(
            () => mockAuthService.isAuthenticated(),
          ).thenAnswer((_) => true);
          // no network access
          FakeGameInvitationService.hasNetworkConnection = true;
          final acceptedInvitation =
              (await underTest.getReceivedGameInvitations())
                  .toOption()
                  .toNullable()!
                  .get(0);

          // Act
          final result = await underTest.accept(invitation: acceptedInvitation);

          // Assert
          expect(result, right(unit));
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

    group('#cancel#', () {
      final canceledInvitation = GameInvitation.dummy();

      test(
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
            underTest.cancel(invitation: canceledInvitation),
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
          FakeGameInvitationService.hasNetworkConnection = false;

          // Act
          final result = await underTest.cancel(invitation: canceledInvitation);

          // Assert
          expect(
            result,
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
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // network access
          FakeGameInvitationService.hasNetworkConnection = true;
          final canceledInvitation = (await underTest.getSentGameInvitations())
              .toOption()
              .toNullable()!
              .get(0);

          // Act
          final result = await underTest.cancel(invitation: canceledInvitation);

          // Assert
          expect(result, right(unit));
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

    group('#decline#', () {
      final declinedInvitation = GameInvitation.dummy();

      test(
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
            underTest.decline(invitation: declinedInvitation),
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
          FakeGameInvitationService.hasNetworkConnection = false;

          // Act
          final result =
              await underTest.decline(invitation: declinedInvitation);

          // Assert
          expect(result, left(const GameInvitationFailure.noNetworkAccess()));
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'WHEN called with valid game invitation '
        'THEN return unit and emit updated received invitations without the declinced invitation.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // network access
          FakeGameInvitationService.hasNetworkConnection = true;
          final declinedInvitation =
              (await underTest.getReceivedGameInvitations())
                  .toOption()
                  .toNullable()!
                  .get(0);

          // Act
          final result =
              await underTest.decline(invitation: declinedInvitation);

          // Assert
          expect(result, right(unit));
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

    group('#getReceivedGameInvitations#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          // not authenticated user
          when(() => mockAuthService.isAuthenticated())
              .thenAnswer((_) => false);

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
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // no network access
          FakeGameInvitationService.hasNetworkConnection = false;

          // Act
          final result = await underTest.getReceivedGameInvitations();

          // Assert
          expect(result, left(const GameInvitationFailure.noNetworkAccess()));
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'THEN return not empty received game invitations.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // network access
          FakeGameInvitationService.hasNetworkConnection = true;

          // Act
          final result = await underTest.getReceivedGameInvitations();

          // Assert
          expect(result.toOption().toNullable()!.isEmpty(), false);
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
          when(() => mockAuthService.isAuthenticated())
              .thenAnswer((_) => false);

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
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // no network access
          FakeGameInvitationService.hasNetworkConnection = false;

          // Act
          final result = await underTest.getSentGameInvitations();

          // Assert
          expect(result, left(const GameInvitationFailure.noNetworkAccess()));
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'THEN return sent game invitations.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // network access
          FakeGameInvitationService.hasNetworkConnection = true;

          // Act
          final result = await underTest.getSentGameInvitations();

          // Assert
          expect(result.toOption().toNullable()!.isEmpty(), false);
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
          when(() => mockAuthService.isAuthenticated())
              .thenAnswer((_) => false);

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
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // network access
          FakeGameInvitationService.hasNetworkConnection = true;

          // Act
          final result = await underTest.markReceivedInvitationsAsRead();

          // Assert
          expect(result, right(unit));
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

    group('#sendGameInvitation#', () {
      final gameId = UniqueId.fromUniqueString('gameId');
      final toId = UniqueId.fromUniqueString('toId');

      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          // not authenticated user
          when(() => mockAuthService.isAuthenticated())
              .thenAnswer((_) => false);

          // Act & Assert
          expect(
            () => underTest.sendGameInvitation(gameId: gameId, toId: toId),
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
          FakeGameInvitationService.hasNetworkConnection = false;

          // Act
          final result = await underTest.sendGameInvitation(
            gameId: UniqueId.fromUniqueString('gameId'),
            toId: UniqueId.fromUniqueString('toId'),
          );

          // Assert
          expect(result, left(const GameInvitationFailure.noNetworkAccess()));
        },
      );

      test(
        'GIVEN authenticated user and has network access '
        'THEN return unit and emit updated sent game invitations '
        'with the sent invitation as the last element.',
        () async {
          // Arrange
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // network access
          FakeGameInvitationService.hasNetworkConnection = true;

          // Act
          final result = await underTest.sendGameInvitation(
            gameId: gameId,
            toId: toId,
          );

          // Assert
          expect(result, right(unit));
          underTest.watchSentInvitations().listen(
            expectAsync1(
              (failureOrInvitations) {
                final last =
                    failureOrInvitations.toOption().toNullable()!.asList().last;
                expect(last.gameId, gameId);
                expect(last.toId, toId);
              },
            ),
          );
        },
      );
    });

    group('#watchReceivedGameInvitations#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          // not authenticated user
          when(() => mockAuthService.isAuthenticated())
              .thenAnswer((_) => false);

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
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // no network access
          FakeGameInvitationService.hasNetworkConnection = false;

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
        // authenticated user
        when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
        // network access
        FakeGameInvitationService.hasNetworkConnection = true;

        // Assert
        underTest.watchReceivedGameInvitations().listen(
              expectAsync1(
                (failureOrInvitations) =>
                    expect(failureOrInvitations.isRight(), true),
              ),
            );
      });
    });

    group('#watchSentInvitations#', () {
      test(
        'GIVEN not authenticated user '
        'THEN throw NotAuthenticatedError.',
        () {
          // Arrange
          // not authenticated user
          when(() => mockAuthService.isAuthenticated())
              .thenAnswer((_) => false);

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
          // authenticated user
          when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
          // no network access
          FakeGameInvitationService.hasNetworkConnection = false;

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
        // authenticated user
        when(() => mockAuthService.isAuthenticated()).thenAnswer((_) => true);
        // network access
        FakeGameInvitationService.hasNetworkConnection = true;

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
