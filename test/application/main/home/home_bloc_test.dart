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
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

class MockUserCubit extends MockCubit<UserState> implements UserCubit {}

class MockFriendCubit extends MockCubit<FriendsState> implements FriendsCubit {}

class MockGameInvitationCubit extends MockCubit<GameInvitationsState>
    implements GameInvitationsCubit {}

void main() {
  late MockUserCubit mockUserCubit;
  late MockFriendCubit mockFriendCubit;
  late MockGameInvitationCubit mockGameInvitationCubit;

  // photoUrl has to be null because bloc loads url in background // TODO should be in infra
  final initialUser = User.dummy().copyWith.profile(photoUrl: null);
  final updatedUser = User.dummy().copyWith.profile(photoUrl: null);
  final initialReceivedGameInvitations =
      KtList.from(List.generate(3, (index) => GameInvitation.dummy()));
  // the same as initial but with inverted read. To ensure bloc emits
  final updatedReceivedGameInvitations = initialReceivedGameInvitations
      .map((element) => element.copyWith(read: !element.read));
  final initialReceivedFriendRequests =
      KtList.from(List.generate(3, (index) => FriendRequest.dummy()));
  // the same as initial but with inverted read. To ensure bloc emits
  final updatedReceivedFriendRequests = initialReceivedFriendRequests
      .map((element) => element.copyWith(read: !element.read));

  setUp(() {
    mockUserCubit = MockUserCubit();
    mockGameInvitationCubit = MockGameInvitationCubit();
    mockFriendCubit = MockFriendCubit();
  });

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

  group('Started', () {
    blocTest<HomeBloc, HomeState>(
      'GIVEN current state is HomeLoadInProgress '
      'WHEN user failure arrives '
      'THEN emit [HomeLoadFailure].',
      setUp: () {
        const userState =
            UserState.loadFailure(failure: UserFailure.noNetworkAccess());
        whenListen(
          mockUserCubit,
          Stream.value(userState),
          initialState: userState,
        );

        const invitationState = GameInvitationsState.loadSuccess(
          receivedGameInvitations: KtList.empty(),
          sentGameInvitations: KtList.empty(),
        );
        whenListen(
          mockGameInvitationCubit,
          Stream.value(invitationState),
          initialState: invitationState,
        );

        const friendsState = FriendsState.loadSuccess(
          friends: KtList.empty(),
          receivedFriendRequests: KtList.empty(),
          sentFriendRequests: KtList.empty(),
        );
        whenListen(
          mockFriendCubit,
          Stream.value(friendsState),
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
      expect: () => <HomeState>[
        const HomeState.loadFailure(),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'GIVEN current state is HomeLoadInProgress '
      'WHEN game invitation failure arrives '
      'THEN emit [HomeLoadFailure].',
      setUp: () {
        final userState = UserState.loadSuccess(user: User.dummy());
        whenListen(
          mockUserCubit,
          Stream.value(userState),
          initialState: userState,
        );

        const invitationState = GameInvitationsState.loadFailure(
          failure: GameInvitationFailure.noNetworkAccess(),
        );
        whenListen(
          mockGameInvitationCubit,
          Stream.value(invitationState),
          initialState: invitationState,
        );

        const friendsState = FriendsState.loadSuccess(
          friends: KtList.empty(),
          receivedFriendRequests: KtList.empty(),
          sentFriendRequests: KtList.empty(),
        );
        whenListen(
          mockFriendCubit,
          Stream.value(friendsState),
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
      expect: () => <HomeState>[
        const HomeState.loadFailure(),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'GIVEN current state is HomeLoadInProgress '
      'WHEN friend failure arrives '
      'THEN emit [HomeLoadFailure].',
      setUp: () {
        final userState = UserState.loadSuccess(user: User.dummy());
        whenListen(
          mockUserCubit,
          Stream.value(userState),
          initialState: userState,
        );

        const invitationState = GameInvitationsState.loadSuccess(
          receivedGameInvitations: KtList.empty(),
          sentGameInvitations: KtList.empty(),
        );
        whenListen(
          mockGameInvitationCubit,
          Stream.value(invitationState),
          initialState: invitationState,
        );

        const friendsState =
            FriendsState.loadFailure(failure: FriendFailure.noNetworkAccess());
        whenListen(
          mockFriendCubit,
          Stream.value(friendsState),
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
      expect: () => <HomeState>[
        const HomeState.loadFailure(),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'GIVEN all data arrived '
      'THEN emit [HomeLoadSuccess].',
      setUp: () {
        final userState = UserState.loadSuccess(user: initialUser);
        whenListen(
          mockUserCubit,
          Stream.value(userState),
          initialState: userState,
        );

        final invitationState = GameInvitationsState.loadSuccess(
          receivedGameInvitations: initialReceivedGameInvitations,
          sentGameInvitations: const KtList.empty(),
        );
        whenListen(
          mockGameInvitationCubit,
          Stream.value(invitationState),
          initialState: invitationState,
        );

        final friendsState = FriendsState.loadSuccess(
          friends: const KtList.empty(),
          receivedFriendRequests: initialReceivedFriendRequests,
          sentFriendRequests: const KtList.empty(),
        );
        whenListen(
          mockFriendCubit,
          Stream.value(friendsState),
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
      expect: () => <HomeState>[
        HomeState.loadSuccess(
          user: initialUser,
          unreadGameInvitations:
              initialReceivedGameInvitations.count((element) => !element.read),
          unreadFriendRequests:
              initialReceivedFriendRequests.count((element) => !element.read),
        ),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'GIVEN no user arrived '
      'THEN emit [HomeLoadInProgress].',
      setUp: () {
        const userState = UserState.loadInProgress();
        whenListen(
          mockUserCubit,
          const Stream<UserState>.empty(),
          initialState: userState,
        );

        const invitationState = GameInvitationsState.loadSuccess(
          receivedGameInvitations: KtList.empty(),
          sentGameInvitations: KtList.empty(),
        );
        whenListen(
          mockGameInvitationCubit,
          Stream.value(invitationState),
          initialState: invitationState,
        );

        const friendsState = FriendsState.loadSuccess(
          friends: KtList.empty(),
          receivedFriendRequests: KtList.empty(),
          sentFriendRequests: KtList.empty(),
        );
        whenListen(
          mockFriendCubit,
          Stream.value(friendsState),
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
      expect: () => <HomeState>[
        const HomeState.loadInProgress(),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'WHEN no reveived game invitations arrived '
      'THEN emit [HomeLoadInProgress].',
      setUp: () {
        final userState = UserState.loadSuccess(user: User.dummy());
        whenListen(
          mockUserCubit,
          Stream.value(userState),
          initialState: userState,
        );

        const invitationState = GameInvitationsState.loadInProgress();
        whenListen(
          mockGameInvitationCubit,
          const Stream<GameInvitationsState>.empty(),
          initialState: invitationState,
        );

        const friendsState = FriendsState.loadSuccess(
          friends: KtList.empty(),
          receivedFriendRequests: KtList.empty(),
          sentFriendRequests: KtList.empty(),
        );
        whenListen(
          mockFriendCubit,
          Stream.value(friendsState),
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
      expect: () => <HomeState>[
        const HomeState.loadInProgress(),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'WHEN no reveived friend requests arrived '
      'THEN emit [HomeLoadInProgress].',
      setUp: () {
        final userState = UserState.loadSuccess(user: User.dummy());
        whenListen(
          mockUserCubit,
          Stream.value(userState),
          initialState: userState,
        );

        const invitationState = GameInvitationsState.loadSuccess(
          receivedGameInvitations: KtList.empty(),
          sentGameInvitations: KtList.empty(),
        );
        whenListen(
          mockGameInvitationCubit,
          Stream.value(invitationState),
          initialState: invitationState,
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
      expect: () => <HomeState>[
        const HomeState.loadInProgress(),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'THEN emit [HomeLoadSuccess, HomeLoadSuccess, ...] after each arrived new user.',
      setUp: () {
        final userState = UserState.loadSuccess(user: initialUser);
        final updatedUserState = UserState.loadSuccess(user: updatedUser);
        whenListen(
          mockUserCubit,
          Stream.fromIterable([userState, updatedUserState]),
          initialState: userState,
        );

        final invitationState = GameInvitationsState.loadSuccess(
          receivedGameInvitations: initialReceivedGameInvitations,
          sentGameInvitations: const KtList.empty(),
        );
        whenListen(
          mockGameInvitationCubit,
          Stream.value(invitationState),
          initialState: invitationState,
        );

        final friendsState = FriendsState.loadSuccess(
          friends: const KtList.empty(),
          receivedFriendRequests: initialReceivedFriendRequests,
          sentFriendRequests: const KtList.empty(),
        );
        whenListen(
          mockFriendCubit,
          Stream.value(friendsState),
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
      expect: () => <HomeState>[
        HomeState.loadSuccess(
          user: initialUser,
          unreadGameInvitations:
              initialReceivedGameInvitations.count((element) => !element.read),
          unreadFriendRequests:
              initialReceivedFriendRequests.count((element) => !element.read),
        ),
        HomeState.loadSuccess(
          user: updatedUser,
          unreadGameInvitations:
              initialReceivedGameInvitations.count((element) => !element.read),
          unreadFriendRequests:
              initialReceivedFriendRequests.count((element) => !element.read),
        ),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'Emit [HomeLoadSuccess, HomeLoadSuccess, ...] after each arrived new received game invitations.',
      setUp: () {
        final userState = UserState.loadSuccess(user: initialUser);
        whenListen(
          mockUserCubit,
          Stream.value(userState),
          initialState: userState,
        );

        final invitationState = GameInvitationsState.loadSuccess(
          receivedGameInvitations: initialReceivedGameInvitations,
          sentGameInvitations: const KtList.empty(),
        );
        final updatedInvitationState = GameInvitationsState.loadSuccess(
          receivedGameInvitations: updatedReceivedGameInvitations,
          sentGameInvitations: const KtList.empty(),
        );
        whenListen(
          mockGameInvitationCubit,
          Stream.fromIterable([invitationState, updatedInvitationState]),
          initialState: invitationState,
        );

        final friendsState = FriendsState.loadSuccess(
          friends: const KtList.empty(),
          receivedFriendRequests: initialReceivedFriendRequests,
          sentFriendRequests: const KtList.empty(),
        );
        whenListen(
          mockFriendCubit,
          Stream.value(friendsState),
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
      expect: () => <HomeState>[
        HomeState.loadSuccess(
          user: initialUser,
          unreadGameInvitations:
              initialReceivedGameInvitations.count((element) => !element.read),
          unreadFriendRequests:
              initialReceivedFriendRequests.count((element) => !element.read),
        ),
        HomeState.loadSuccess(
          user: initialUser,
          unreadGameInvitations:
              updatedReceivedGameInvitations.count((element) => !element.read),
          unreadFriendRequests:
              initialReceivedFriendRequests.count((element) => !element.read),
        ),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'Emit [HomeLoadSuccess, HomeLoadSuccess, ...] after each arrived new received friend requests.',
      setUp: () {
        final userState = UserState.loadSuccess(user: initialUser);
        whenListen(
          mockUserCubit,
          Stream.value(userState),
          initialState: userState,
        );

        final invitationState = GameInvitationsState.loadSuccess(
          receivedGameInvitations: initialReceivedGameInvitations,
          sentGameInvitations: const KtList.empty(),
        );
        whenListen(
          mockGameInvitationCubit,
          Stream.value(invitationState),
          initialState: invitationState,
        );

        final friendsState = FriendsState.loadSuccess(
          friends: const KtList.empty(),
          receivedFriendRequests: initialReceivedFriendRequests,
          sentFriendRequests: const KtList.empty(),
        );
        final updatedFriendsState = FriendsState.loadSuccess(
          friends: const KtList.empty(),
          receivedFriendRequests: updatedReceivedFriendRequests,
          sentFriendRequests: const KtList.empty(),
        );
        whenListen(
          mockFriendCubit,
          Stream.fromIterable([friendsState, updatedFriendsState]),
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
      expect: () => <HomeState>[
        HomeState.loadSuccess(
          user: initialUser,
          unreadGameInvitations:
              initialReceivedGameInvitations.count((element) => !element.read),
          unreadFriendRequests:
              initialReceivedFriendRequests.count((element) => !element.read),
        ),
        HomeState.loadSuccess(
          user: initialUser,
          unreadGameInvitations:
              initialReceivedGameInvitations.count((element) => !element.read),
          unreadFriendRequests:
              updatedReceivedFriendRequests.count((element) => !element.read),
        ),
      ],
    );
  });
}
