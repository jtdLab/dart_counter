import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/core/application_error.dart';
import 'package:dart_counter/application/main/game_invitations/game_invitations_bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_service.dart';
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/play/online/i_play_online_service.dart';
import 'package:dart_counter/domain/play/play_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

class MockPlayOnlineService extends Mock implements IPlayOnlineService {}

class MockGameInvitationService extends Mock implements IGameInvitationService {
}

void main() {
  late MockPlayOnlineService mockPlayOnlineService;
  late MockGameInvitationService mockGameInvitationService;

  final receivedGameInvitations =
      KtList.from([GameInvitation.dummy(), GameInvitation.dummy()]);
  final sentGameInvitations =
      KtList.from([GameInvitation.dummy(), GameInvitation.dummy()]);

  final gameId = UniqueId.fromUniqueString('gameId');
  final invitation = GameInvitation.dummy().copyWith(gameId: gameId);
  const playFailure = PlayFailure.error();

  setUpAll(() {
    registerFallbackValue(GameInvitation.dummy());
  });

  setUp(() {
    mockPlayOnlineService = MockPlayOnlineService();
    mockGameInvitationService = MockGameInvitationService();

    when(
      () => mockPlayOnlineService.joinGame(gameId: gameId),
    ).thenAnswer((_) async => left(playFailure));
    when(() => mockGameInvitationService.getReceivedGameInvitations())
        .thenReturn(right(receivedGameInvitations));
    when(() => mockGameInvitationService.getSentGameInvitations())
        .thenReturn(right(sentGameInvitations));
  });

  test(
      'GIVEN data from gameInvitationService is available '
      'THEN set initial state to GameInvitationsInitial.', () {
    // Act
    final underTest = GameInvitationsBloc(
      mockPlayOnlineService,
      mockGameInvitationService,
    );

    // Assert
    expect(
      underTest.state,
      GameInvitationsState.initial(
        receivedGameInvitations: receivedGameInvitations,
        sentGameInvitations: sentGameInvitations,
      ),
    );
  });

  test(
      'GIVEN receivedGameInvitations is not available '
      'THEN throw ApplicationError.', () {
    // Arrange
    when(() => mockGameInvitationService.getReceivedGameInvitations())
        .thenReturn(left(const GameInvitationFailure.unexpected()));

    // Act & Assert
    expect(
      () => GameInvitationsBloc(
        mockPlayOnlineService,
        mockGameInvitationService,
      ),
      throwsA(isA<ApplicationError>()),
    );
  });

  test(
      'GIVEN sentGameInvitations is not available '
      'THEN throw ApplicationError.', () {
    // Arrange
    when(() => mockGameInvitationService.getSentGameInvitations())
        .thenReturn(left(const GameInvitationFailure.unexpected()));

    // Act & Assert
    expect(
      () => GameInvitationsBloc(
        mockPlayOnlineService,
        mockGameInvitationService,
      ),
      throwsA(isA<ApplicationError>()),
    );
  });

  group('Started', () {
    blocTest<GameInvitationsBloc, GameInvitationsState>(
      'Call markReceivedInvitationsAsRead.',
      setUp: () {
        when(() => mockGameInvitationService.markReceivedInvitationsAsRead())
            .thenAnswer((_) async => right(unit));

        when(() => mockGameInvitationService.watchReceivedGameInvitations())
            .thenAnswer((_) => Stream.value(right(receivedGameInvitations)));
        when(() => mockGameInvitationService.watchSentInvitations())
            .thenAnswer((_) => Stream.value(right(sentGameInvitations)));
        when(() => mockPlayOnlineService.watchGame())
            .thenAnswer((_) => Stream.value(OnlineGameSnapshot.dummy()));
      },
      build: () => GameInvitationsBloc(
        mockPlayOnlineService,
        mockGameInvitationService,
      ),
      act: (bloc) => bloc.add(const GameInvitationsEvent.started()),
      verify: (_) {
        verify(() => mockGameInvitationService.markReceivedInvitationsAsRead())
            .called(1);
      },
    );

    // TODO gar kein bock
  });

  group(
    'InvitationAccepted',
    () {
      blocTest<GameInvitationsBloc, GameInvitationsState>(
        'Emit [GameInvitationLoadInProgress].',
        build: () => GameInvitationsBloc(
          mockPlayOnlineService,
          mockGameInvitationService,
        ),
        act: (bloc) => bloc.add(
          GameInvitationsEvent.invitationAccepted(gameInvitation: invitation),
        ),
        expect: () => [const GameInvitationsState.loadInProgress()],
      );

      blocTest<GameInvitationsBloc, GameInvitationsState>(
        'Wait 500ms and call join game with incoming gameId.',
        build: () => GameInvitationsBloc(
          mockPlayOnlineService,
          mockGameInvitationService,
        ),
        act: (bloc) => bloc.add(
          GameInvitationsEvent.invitationAccepted(gameInvitation: invitation),
        ),
        wait: const Duration(milliseconds: 500),
        verify: (_) {
          verify(
            () => mockPlayOnlineService.joinGame(gameId: gameId),
          ).called(1);
        },
      );

      blocTest<GameInvitationsBloc, GameInvitationsState>(
        'GIVEN join game success '
        'THEN call accept with incoming invitation as param.',
        setUp: () {
          when(
            () => mockPlayOnlineService.joinGame(gameId: gameId),
          ).thenAnswer((_) async => right(OnlineGameSnapshot.dummy()));
          when(
            () => mockGameInvitationService.accept(
              invitation: any(named: 'invitation'),
            ),
          ).thenAnswer((_) async => right(unit));
        },
        build: () => GameInvitationsBloc(
          mockPlayOnlineService,
          mockGameInvitationService,
        ),
        act: (bloc) => bloc.add(
          GameInvitationsEvent.invitationAccepted(gameInvitation: invitation),
        ),
        wait: const Duration(milliseconds: 500),
        verify: (_) {
          verify(
            () => mockGameInvitationService.accept(invitation: invitation),
          ).called(1);
        },
      );

      blocTest<GameInvitationsBloc, GameInvitationsState>(
        'GIVEN join game failed '
        'THEN emit [GameInvitationLoadInProgress, GameInvitationFailure].',
        setUp: () {
          when(
            () => mockPlayOnlineService.joinGame(gameId: gameId),
          ).thenAnswer((_) async => left(playFailure));
          when(
            () => mockGameInvitationService.accept(
              invitation: any(named: 'invitation'),
            ),
          ).thenAnswer((_) async => right(unit));
        },
        build: () => GameInvitationsBloc(
          mockPlayOnlineService,
          mockGameInvitationService,
        ),
        act: (bloc) => bloc.add(
          GameInvitationsEvent.invitationAccepted(gameInvitation: invitation),
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
    'InvitationDeclined',
    () {
      blocTest<GameInvitationsBloc, GameInvitationsState>(
        'Call decline with incoming invitation as param.',
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
          GameInvitationsEvent.invitationDeclined(gameInvitation: invitation),
        ),
        verify: (_) {
          verify(
            () => mockGameInvitationService.decline(invitation: invitation),
          ).called(1);
        },
      );
    },
  );
}
