import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/core/friends/friends_cubit.dart';
import 'package:dart_counter/application/main/core/game_invitations/game_invitations_cubit.dart';
import 'package:dart_counter/application/main/core/user/user_cubit.dart';
import 'package:dart_counter/application/main/home/home_bloc.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dart_counter/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

class MockUserCubit extends MockCubit<UserState> implements UserCubit {}

class MockFriendCubit extends MockCubit<FriendsState> implements FriendsCubit {}

class MockGameInvitationCubit extends MockCubit<GameInvitationsState>
    implements GameInvitationsCubit {}

void main() {
  late MockUserCubit mockUserCubit;
  late MockFriendCubit mockFriendCubit;
  late MockGameInvitationCubit mockGameInvitationCubit;

  setUp(() {
    mockUserCubit = MockUserCubit();
    mockGameInvitationCubit = MockGameInvitationCubit();
    mockFriendCubit = MockFriendCubit();
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test('Initial state set to HomeLoadInProgress.', () {
        // Arrange & Act
        final underTest = HomeBloc(
          mockUserCubit,
          mockFriendCubit,
          mockGameInvitationCubit,
        );

        // Assert
        expect(underTest.state, const HomeState.loadInProgress());
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN HomeBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(
          () => HomeBloc.getIt(
            mockUserCubit,
            mockFriendCubit,
            mockGameInvitationCubit,
          ),
          throwsA(anything),
        );
      });

      test(
          'GIVEN HomeBloc is registered inside getIt '
          'THEN initial state set to HomeLoadInProgress.', () {
        // Arrange
        getIt.registerFactoryParam(
          (param1, _) => HomeBloc.injectable(
            [
              mockUserCubit,
              mockFriendCubit,
              mockGameInvitationCubit,
            ],
          ),
        );

        // Act
        final underTest = HomeBloc.getIt(
          mockUserCubit,
          mockFriendCubit,
          mockGameInvitationCubit,
        );

        // Assert
        expect(underTest.state, const HomeState.loadInProgress());
      });

      test(
          'GIVEN HomeBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = HomeBloc(
          mockUserCubit,
          mockFriendCubit,
          mockGameInvitationCubit,
        );
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = HomeBloc.getIt(
          mockUserCubit,
          mockFriendCubit,
          mockGameInvitationCubit,
        );

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });

    group('#Injectable#', () {
      test(
          'GIVEN otherDependencies is null '
          'THEN throw error.', () {
        // Arrange
        const List<Object>? otherDependencies = null;

        // Act & Assert
        expect(() => HomeBloc.injectable(otherDependencies), throwsA(anything));
      });

      test(
          'GIVEN otherDependencies is not [UserCubit, FriendCubit, GameInvitationCubit] '
          'THEN throw error.', () {
        // Arrange
        final otherDependencies = [1, 'Hallo', true];

        // Act & Assert
        expect(() => HomeBloc.injectable(otherDependencies), throwsA(anything));
      });

      test(
          'GIVEN otherDependencies is [UserCubit, FriendCubit, GameInvitationCubit] '
          'THEN initial state set to HomeLoadInProgress.', () {
        // Arrange
        final otherDependencies = [
          mockUserCubit,
          mockFriendCubit,
          mockGameInvitationCubit,
        ];

        // Act
        final underTest = HomeBloc.injectable(otherDependencies);

        // Assert
        expect(underTest.state, const HomeState.loadInProgress());
      });
    });
  });

  group('#Events#', () {
    // propertys
    final initialUser = User.dummy();
    final updatedUser = User.dummy();

    final initialReceivedGameInvitations =
        KtList.from(List.generate(3, (index) => GameInvitation.dummy()));
    final updatedReceivedGameInvitations =
        KtList.from(List.generate(3, (index) => GameInvitation.dummy()));
    final initialUnreadGameInvitations =
        initialReceivedGameInvitations.count((element) => !element.read);
    final updatedUnreadGameInvitations =
        updatedReceivedGameInvitations.count((element) => !element.read);

    final initialReceivedFriendRequests =
        KtList.from(List.generate(3, (index) => FriendRequest.dummy()));
    final updatedReceivedFriendRequests =
        KtList.from(List.generate(3, (index) => FriendRequest.dummy()));
    final initialUnreadFriendRequests =
        initialReceivedFriendRequests.count((element) => !element.read);
    final updatedUnreadFriendRequests =
        updatedReceivedFriendRequests.count((element) => !element.read);

    // states
    const userLoadFailureState =
        UserState.loadFailure(failure: UserFailure.noNetworkAccess());
    final userLoadSuccessState = UserState.loadSuccess(user: initialUser);

    const invitationFailureState = GameInvitationsState.loadFailure(
      failure: GameInvitationFailure.noNetworkAccess(),
    );
    final invitationLoadSuccessState = GameInvitationsState.loadSuccess(
      receivedGameInvitations: initialReceivedGameInvitations,
      sentGameInvitations: const KtList.empty(),
    );

    const friendsLoadFailureState =
        FriendsState.loadFailure(failure: FriendFailure.noNetworkAccess());
    final friendsLoadSuccessState = FriendsState.loadSuccess(
      friends: const KtList.empty(),
      receivedFriendRequests: initialReceivedFriendRequests,
      sentFriendRequests: const KtList.empty(),
    );

    group('#Started#', () {
      blocTest<HomeBloc, HomeState>(
        'GIVEN current state is HomeLoadInProgress '
        'WHEN user failure arrives '
        'THEN emit [HomeLoadFailure].',
        setUp: () {
          whenListen(
            mockUserCubit,
            Stream.value(userLoadFailureState),
            initialState: userLoadFailureState,
          );

          whenListen(
            mockGameInvitationCubit,
            Stream.value(invitationLoadSuccessState),
            initialState: invitationLoadSuccessState,
          );

          whenListen(
            mockFriendCubit,
            Stream.value(friendsLoadSuccessState),
            initialState: friendsLoadSuccessState,
          );
        },
        build: () => HomeBloc(
          mockUserCubit,
          mockFriendCubit,
          mockGameInvitationCubit,
        ),
        act: (bloc) => bloc.add(const HomeEvent.started()),
        wait: const Duration(milliseconds: 500),
        expect: () => [
          const HomeState.loadFailure(),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'GIVEN current state is HomeLoadInProgress '
        'WHEN game invitation failure arrives '
        'THEN emit [HomeLoadFailure].',
        setUp: () {
          whenListen(
            mockUserCubit,
            Stream.value(userLoadSuccessState),
            initialState: userLoadSuccessState,
          );

          whenListen(
            mockGameInvitationCubit,
            Stream.value(invitationFailureState),
            initialState: invitationFailureState,
          );

          whenListen(
            mockFriendCubit,
            Stream.value(friendsLoadSuccessState),
            initialState: friendsLoadSuccessState,
          );
        },
        build: () => HomeBloc(
          mockUserCubit,
          mockFriendCubit,
          mockGameInvitationCubit,
        ),
        act: (bloc) => bloc.add(const HomeEvent.started()),
        wait: const Duration(milliseconds: 500),
        expect: () => [
          const HomeState.loadFailure(),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'GIVEN current state is HomeLoadInProgress '
        'WHEN friend failure arrives '
        'THEN emit [HomeLoadFailure].',
        setUp: () {
          whenListen(
            mockUserCubit,
            Stream.value(userLoadSuccessState),
            initialState: userLoadSuccessState,
          );

          whenListen(
            mockGameInvitationCubit,
            Stream.value(invitationLoadSuccessState),
            initialState: invitationLoadSuccessState,
          );

          whenListen(
            mockFriendCubit,
            Stream.value(friendsLoadFailureState),
            initialState: friendsLoadFailureState,
          );
        },
        build: () => HomeBloc(
          mockUserCubit,
          mockFriendCubit,
          mockGameInvitationCubit,
        ),
        act: (bloc) => bloc.add(const HomeEvent.started()),
        wait: const Duration(milliseconds: 500),
        expect: () => [
          const HomeState.loadFailure(),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'GIVEN state is HomeLoadInProgress '
        'WHEN all data arrived '
        'THEN emit [HomeLoadSuccess].',
        setUp: () {
          whenListen(
            mockUserCubit,
            Stream.value(userLoadSuccessState),
            initialState: userLoadSuccessState,
          );

          whenListen(
            mockGameInvitationCubit,
            Stream.value(invitationLoadSuccessState),
            initialState: invitationLoadSuccessState,
          );

          whenListen(
            mockFriendCubit,
            Stream.value(friendsLoadSuccessState),
            initialState: friendsLoadSuccessState,
          );
        },
        build: () => HomeBloc(
          mockUserCubit,
          mockFriendCubit,
          mockGameInvitationCubit,
        ),
        act: (bloc) => bloc.add(const HomeEvent.started()),
        wait: const Duration(milliseconds: 500),
        expect: () => [
          HomeState.loadSuccess(
            user: initialUser,
            unreadGameInvitations: initialUnreadGameInvitations,
            unreadFriendRequests: initialUnreadFriendRequests,
          ),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'GIVEN current state is HomeLoadInProgress '
        'WHEN no user arrived yet '
        'THEN emit [HomeLoadInProgress].',
        setUp: () {
          whenListen(
            mockUserCubit,
            const Stream<UserState>.empty(),
            initialState: const UserState.loadInProgress(),
          );

          whenListen(
            mockGameInvitationCubit,
            Stream.value(invitationLoadSuccessState),
            initialState: invitationLoadSuccessState,
          );

          whenListen(
            mockFriendCubit,
            Stream.value(friendsLoadSuccessState),
            initialState: friendsLoadSuccessState,
          );
        },
        build: () => HomeBloc(
          mockUserCubit,
          mockFriendCubit,
          mockGameInvitationCubit,
        ),
        act: (bloc) => bloc.add(const HomeEvent.started()),
        wait: const Duration(milliseconds: 500),
        expect: () => [
          const HomeState.loadInProgress(),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'GIVEN current state is HomeLoadInProgress '
        'WHEN no reveived game invitations arrived yet '
        'THEN emit [HomeLoadInProgress].',
        setUp: () {
          whenListen(
            mockUserCubit,
            Stream.value(userLoadSuccessState),
            initialState: userLoadSuccessState,
          );

          whenListen(
            mockGameInvitationCubit,
            const Stream<GameInvitationsState>.empty(),
            initialState: const GameInvitationsState.loadInProgress(),
          );

          whenListen(
            mockFriendCubit,
            Stream.value(friendsLoadSuccessState),
            initialState: friendsLoadSuccessState,
          );
        },
        build: () => HomeBloc(
          mockUserCubit,
          mockFriendCubit,
          mockGameInvitationCubit,
        ),
        act: (bloc) => bloc.add(const HomeEvent.started()),
        wait: const Duration(milliseconds: 500),
        expect: () => [
          const HomeState.loadInProgress(),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'GIVEN current state is HomeLoadInProgress '
        'WHEN no reveived friend requests arrived yet '
        'THEN emit [HomeLoadInProgress].',
        setUp: () {
          whenListen(
            mockUserCubit,
            Stream.value(userLoadSuccessState),
            initialState: userLoadSuccessState,
          );

          whenListen(
            mockGameInvitationCubit,
            Stream.value(invitationLoadSuccessState),
            initialState: invitationLoadSuccessState,
          );

          const friendsState = FriendsState.loadInProgress();
          whenListen(
            mockFriendCubit,
            const Stream<FriendsState>.empty(),
            initialState: friendsState,
          );
        },
        build: () => HomeBloc(
          mockUserCubit,
          mockFriendCubit,
          mockGameInvitationCubit,
        ),
        act: (bloc) => bloc.add(const HomeEvent.started()),
        wait: const Duration(milliseconds: 500),
        expect: () => [
          const HomeState.loadInProgress(),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'GIVEN current state is HomeLoadSuccess with an initial user '
        'WHEN updated user arrives '
        'THEN emit [HomeLoadSuccess] with updated user.',
        setUp: () {
          final updatedUserState = UserState.loadSuccess(user: updatedUser);
          whenListen(
            mockUserCubit,
            Stream.value(updatedUserState),
            initialState: updatedUserState,
          );

          whenListen(
            mockGameInvitationCubit,
            Stream.value(invitationLoadSuccessState),
            initialState: invitationLoadSuccessState,
          );

          whenListen(
            mockFriendCubit,
            Stream.value(friendsLoadSuccessState),
            initialState: friendsLoadSuccessState,
          );
        },
        build: () => HomeBloc(
          mockUserCubit,
          mockFriendCubit,
          mockGameInvitationCubit,
        ),
        seed: () => HomeState.loadSuccess(
          user: initialUser,
          unreadGameInvitations: initialUnreadGameInvitations,
          unreadFriendRequests: initialUnreadFriendRequests,
        ),
        act: (bloc) => bloc.add(const HomeEvent.started()),
        wait: const Duration(milliseconds: 500),
        expect: () => [
          HomeState.loadSuccess(
            user: updatedUser,
            unreadGameInvitations: initialUnreadGameInvitations,
            unreadFriendRequests: initialUnreadFriendRequests,
          ),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'GIVEN current state is HomeLoadSuccess with initial unreadGameInvitations '
        'WHEN updated received game invitations arrive '
        'THEN emit [HomeLoadSuccess] with updated unreadGameInvitations.',
        setUp: () {
          whenListen(
            mockUserCubit,
            Stream.value(userLoadSuccessState),
            initialState: userLoadSuccessState,
          );

          final updatedInvitationState = GameInvitationsState.loadSuccess(
            receivedGameInvitations: updatedReceivedGameInvitations,
            sentGameInvitations: const KtList.empty(),
          );
          whenListen(
            mockGameInvitationCubit,
            Stream.value(updatedInvitationState),
            initialState: updatedInvitationState,
          );

          whenListen(
            mockFriendCubit,
            Stream.value(friendsLoadSuccessState),
            initialState: friendsLoadSuccessState,
          );
        },
        build: () => HomeBloc(
          mockUserCubit,
          mockFriendCubit,
          mockGameInvitationCubit,
        ),
        seed: () => HomeState.loadSuccess(
          user: initialUser,
          unreadGameInvitations: initialUnreadGameInvitations,
          unreadFriendRequests: initialUnreadFriendRequests,
        ),
        act: (bloc) => bloc.add(const HomeEvent.started()),
        wait: const Duration(milliseconds: 500),
        expect: () => [
          HomeState.loadSuccess(
            user: initialUser,
            unreadGameInvitations: updatedUnreadGameInvitations,
            unreadFriendRequests: initialUnreadFriendRequests,
          ),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'GIVEN current state is HomeLoadSuccess with initial unreadFriendRequests '
        'WHEN updated received friend requests arrive '
        'THEN emit [HomeLoadSuccess] with updated unreadFriendRequests.',
        setUp: () {
          whenListen(
            mockUserCubit,
            Stream.value(userLoadSuccessState),
            initialState: userLoadSuccessState,
          );

          whenListen(
            mockGameInvitationCubit,
            Stream.value(invitationLoadSuccessState),
            initialState: invitationLoadSuccessState,
          );

          final updatedFriendsState = FriendsState.loadSuccess(
            friends: const KtList.empty(),
            receivedFriendRequests: updatedReceivedFriendRequests,
            sentFriendRequests: const KtList.empty(),
          );
          whenListen(
            mockFriendCubit,
            Stream.value(updatedFriendsState),
            initialState: updatedFriendsState,
          );
        },
        build: () => HomeBloc(
          mockUserCubit,
          mockFriendCubit,
          mockGameInvitationCubit,
        ),
        seed: () => HomeState.loadSuccess(
          user: initialUser,
          unreadGameInvitations: initialUnreadGameInvitations,
          unreadFriendRequests: initialUnreadFriendRequests,
        ),
        act: (bloc) => bloc.add(const HomeEvent.started()),
        wait: const Duration(milliseconds: 500),
        expect: () => [
          HomeState.loadSuccess(
            user: initialUser,
            unreadGameInvitations: initialUnreadGameInvitations,
            unreadFriendRequests: updatedUnreadFriendRequests,
          ),
        ],
      );
    });
  });
}
