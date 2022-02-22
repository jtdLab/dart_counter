import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/game_invitations/game_invitations_bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_service.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dart_counter/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayOnlineService extends Mock implements IPlayOnlineService {}

class MockGameInvitationService extends Mock implements IGameInvitationService {
}

void main() {
  late MockPlayOnlineService mockPlayOnlineService;
  late MockGameInvitationService mockGameInvitationService;

  setUpAll(() {
    registerFallbackValue(GameInvitation.dummy());
  });

  setUp(() {
    mockPlayOnlineService = MockPlayOnlineService();
    mockGameInvitationService = MockGameInvitationService();
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test('Set initial state to GameInvitationsInitial.', () {
        // Act
        final underTest = GameInvitationsBloc(
          mockPlayOnlineService,
          mockGameInvitationService,
        );

        // Assert
        expect(
          underTest.state,
          const GameInvitationsState.initial(),
        );
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN GameInvitationsBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(() => GameInvitationsBloc.getIt(), throwsA(anything));
      });

      test(
          'GIVEN GameInvitationsBloc is registered inside getIt '
          'THEN initial state set to GameInvitationsInitial.', () {
        // Arrange
        getIt.registerFactoryParam(
          (param1, _) => GameInvitationsBloc(
            mockPlayOnlineService,
            mockGameInvitationService,
          ),
        );

        // Act
        final underTest = GameInvitationsBloc.getIt();

        // Assert
        expect(
          underTest.state,
          const GameInvitationsState.initial(),
        );
      });

      test(
          'GIVEN GameInvitationsBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = GameInvitationsBloc(
          mockPlayOnlineService,
          mockGameInvitationService,
        );
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = GameInvitationsBloc.getIt();

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });
  });

  group('#Events#', () {
    group('#Started#', () {
      blocTest<GameInvitationsBloc, GameInvitationsState>(
        'Mark received game invitations as read.',
        setUp: () {
          when(() => mockGameInvitationService.markReceivedInvitationsAsRead())
              .thenAnswer((_) async => right(unit));
        },
        build: () => GameInvitationsBloc(
          mockPlayOnlineService,
          mockGameInvitationService,
        ),
        act: (bloc) => bloc.add(const GameInvitationsEvent.started()),
        verify: (_) {
          verify(
            () => mockGameInvitationService.markReceivedInvitationsAsRead(),
          ).called(1);
        },
      );
    });

    group(
      '#InvitationAccepted#',
      () {
        final idOfJoinedGame = UniqueId.fromUniqueString('gameId');
        final acceptedInvitation =
            GameInvitation.dummy().copyWith(gameId: idOfJoinedGame);
        const playFailure = PlayFailure.error();

        setUp(() {
          // Default mock behaivor for this event.
          // Might be overriden in specific test case.
          when(
            () => mockPlayOnlineService.joinGame(gameId: idOfJoinedGame),
          ).thenAnswer((_) async => right(OnlineGameSnapshot.dummy()));
          when(
            () => mockGameInvitationService.accept(
              invitation: any(named: 'invitation'),
            ),
          ).thenAnswer((_) async => right(unit));
        });

        blocTest<GameInvitationsBloc, GameInvitationsState>(
          'Emit [GameInvitationLoadInProgress].',
          build: () => GameInvitationsBloc(
            mockPlayOnlineService,
            mockGameInvitationService,
          ),
          act: (bloc) => bloc.add(
            GameInvitationsEvent.invitationAccepted(
              gameInvitation: acceptedInvitation,
            ),
          ),
          expect: () => [const GameInvitationsState.loadInProgress()],
        );

        blocTest<GameInvitationsBloc, GameInvitationsState>(
          'Wait 500ms and join game with incoming gameId.',
          build: () => GameInvitationsBloc(
            mockPlayOnlineService,
            mockGameInvitationService,
          ),
          act: (bloc) => bloc.add(
            GameInvitationsEvent.invitationAccepted(
              gameInvitation: acceptedInvitation,
            ),
          ),
          wait: const Duration(milliseconds: 500),
          verify: (_) {
            verify(
              () => mockPlayOnlineService.joinGame(gameId: idOfJoinedGame),
            ).called(1);
          },
        );

        blocTest<GameInvitationsBloc, GameInvitationsState>(
          'GIVEN join game success '
          'THEN accept incoming game invitation.',
          setUp: () {
            when(
              () => mockPlayOnlineService.joinGame(gameId: idOfJoinedGame),
            ).thenAnswer((_) async => right(OnlineGameSnapshot.dummy()));
          },
          build: () => GameInvitationsBloc(
            mockPlayOnlineService,
            mockGameInvitationService,
          ),
          act: (bloc) => bloc.add(
            GameInvitationsEvent.invitationAccepted(
              gameInvitation: acceptedInvitation,
            ),
          ),
          wait: const Duration(milliseconds: 500),
          verify: (_) {
            verify(
              () => mockGameInvitationService.accept(
                invitation: acceptedInvitation,
              ),
            ).called(1);
          },
        );

        blocTest<GameInvitationsBloc, GameInvitationsState>(
          'GIVEN join game failed '
          'THEN emit [GameInvitationLoadInProgress, GameInvitationFailure].',
          setUp: () {
            when(
              () => mockPlayOnlineService.joinGame(gameId: idOfJoinedGame),
            ).thenAnswer((_) async => left(playFailure));
          },
          build: () => GameInvitationsBloc(
            mockPlayOnlineService,
            mockGameInvitationService,
          ),
          act: (bloc) => bloc.add(
            GameInvitationsEvent.invitationAccepted(
              gameInvitation: acceptedInvitation,
            ),
          ),
          wait: const Duration(milliseconds: 500),
          expect: () => const [
            GameInvitationsState.loadInProgress(),
            GameInvitationsState.failure(failure: playFailure),
          ],
        );
      },
    );

    group(
      '#InvitationDeclined#',
      () {
        final declinedInvitation = GameInvitation.dummy();

        blocTest<GameInvitationsBloc, GameInvitationsState>(
          'Decline incoming game invitation.',
          setUp: () {
            when(
              () => mockGameInvitationService.decline(
                invitation: any(named: 'invitation'),
              ),
            ).thenAnswer((_) async => right(unit));
          },
          build: () => GameInvitationsBloc(
            mockPlayOnlineService,
            mockGameInvitationService,
          ),
          act: (bloc) => bloc.add(
            GameInvitationsEvent.invitationDeclined(
              gameInvitation: declinedInvitation,
            ),
          ),
          verify: (_) {
            verify(
              () => mockGameInvitationService.decline(
                invitation: declinedInvitation,
              ),
            ).called(1);
          },
        );
      },
    );
  });
}
