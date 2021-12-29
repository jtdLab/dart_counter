import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/home/home_bloc.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation.dart';
import 'package:dart_counter/domain/game_invitation/game_invitation_failure.dart';
import 'package:dart_counter/domain/game_invitation/i_game_invitation_service.dart';
import 'package:dart_counter/domain/user/i_user_service.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/domain/user/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

class MockUserService extends Mock implements IUserService {}

class MockGameInvitationService extends Mock implements IGameInvitationService {
}

class MockFriendService extends Mock implements IFriendService {}

void main() {
  late MockUserService mockUserService;
  late MockGameInvitationService mockGameInvitationService;
  late MockFriendService mockFriendService;

  // photoUrl has to be null becaus bloc loads url in background
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
    mockUserService = MockUserService();
    mockGameInvitationService = MockGameInvitationService();
    mockFriendService = MockFriendService();
  });

  test('initial state initialized correctly', () {
    // Arrange & Act
    final underTest = HomeBloc(
      mockUserService,
      mockGameInvitationService,
      mockFriendService,
    );

    // Assert
    expect(underTest.state, const HomeState.loadInProgress());
  });

  group('WatchDataStarted', () {
    blocTest<HomeBloc, HomeState>(
      'GIVEN current state is HomeLoadInProgress '
      'emits [HomeLoadInProgress, HomeLoadFailure] if user failure arrives '
      'after WatchDataStarted was added.',
      build: () {
        when<Stream<Either<UserFailure, User>>>(
          () => mockUserService.watchUser(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [left(const UserFailure.noNetworkAccess())],
          ),
        );
        when<Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>>(
          () => mockGameInvitationService.watchReceivedGameInvitations(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [right(initialReceivedGameInvitations)],
          ),
        );

        when<Stream<Either<FriendFailure, KtList<FriendRequest>>>>(
          () => mockFriendService.watchReceivedFriendRequests(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [right(initialReceivedFriendRequests)],
          ),
        );

        return HomeBloc(
          mockUserService,
          mockGameInvitationService,
          mockFriendService,
        );
      },
      act: (bloc) => bloc.add(const HomeEvent.started()),
      expect: () => <HomeState>[
        const HomeState.loadInProgress(),
        const HomeState.loadFailure(),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'GIVEN current state is HomeLoadInProgress '
      'emits [HomeLoadInProgress, HomeLoadFailure] if user game invitation failure arrives '
      'after WatchDataStarted was added.',
      build: () {
        when<Stream<Either<UserFailure, User>>>(
          () => mockUserService.watchUser(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [right(initialUser)],
          ),
        );
        when<Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>>(
          () => mockGameInvitationService.watchReceivedGameInvitations(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [left(const GameInvitationFailure.noNetworkAccess())],
          ),
        );

        when<Stream<Either<FriendFailure, KtList<FriendRequest>>>>(
          () => mockFriendService.watchReceivedFriendRequests(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [right(initialReceivedFriendRequests)],
          ),
        );

        return HomeBloc(
          mockUserService,
          mockGameInvitationService,
          mockFriendService,
        );
      },
      act: (bloc) => bloc.add(const HomeEvent.started()),
      expect: () => <HomeState>[
        const HomeState.loadInProgress(),
        const HomeState.loadFailure(),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'GIVEN current state is HomeLoadInProgress '
      'emits [HomeLoadInProgress, HomeLoadFailure] if friend failure arrives '
      'after WatchDataStarted was added.',
      build: () {
        when<Stream<Either<UserFailure, User>>>(
          () => mockUserService.watchUser(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [right(initialUser)],
          ),
        );
        when<Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>>(
          () => mockGameInvitationService.watchReceivedGameInvitations(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [right(initialReceivedGameInvitations)],
          ),
        );

        when<Stream<Either<FriendFailure, KtList<FriendRequest>>>>(
          () => mockFriendService.watchReceivedFriendRequests(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [left(const FriendFailure.noNetworkAccess())],
          ),
        );

        return HomeBloc(
          mockUserService,
          mockGameInvitationService,
          mockFriendService,
        );
      },
      act: (bloc) => bloc.add(const HomeEvent.started()),
      expect: () => <HomeState>[
        const HomeState.loadInProgress(),
        const HomeState.loadFailure(),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'emits [HomeLoadInProgress, HomeLoadSuccess] when all data arrived '
      'after WatchDataStarted was added.',
      build: () {
        when<Stream<Either<UserFailure, User>>>(
          () => mockUserService.watchUser(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [right(initialUser)],
          ),
        );
        when<Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>>(
          () => mockGameInvitationService.watchReceivedGameInvitations(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [right(initialReceivedGameInvitations)],
          ),
        );
        when<Stream<Either<FriendFailure, KtList<FriendRequest>>>>(
          () => mockFriendService.watchReceivedFriendRequests(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [right(initialReceivedFriendRequests)],
          ),
        );

        return HomeBloc(
          mockUserService,
          mockGameInvitationService,
          mockFriendService,
        );
      },
      act: (bloc) => bloc.add(const HomeEvent.started()),
      expect: () => <HomeState>[
        const HomeState.loadInProgress(),
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
      'emits [HomeLoadInProgress] when not all data arrived '
      'after WatchDataStarted was added.',
      build: () {
        when<Stream<Either<UserFailure, User>>>(
          () => mockUserService.watchUser(),
        ).thenAnswer(
          (_) => const Stream.empty(),
        );
        when<Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>>(
          () => mockGameInvitationService.watchReceivedGameInvitations(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [right(initialReceivedGameInvitations)],
          ),
        );
        when<Stream<Either<FriendFailure, KtList<FriendRequest>>>>(
          () => mockFriendService.watchReceivedFriendRequests(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [right(initialReceivedFriendRequests)],
          ),
        );

        return HomeBloc(
          mockUserService,
          mockGameInvitationService,
          mockFriendService,
        );
      },
      act: (bloc) => bloc.add(const HomeEvent.started()),
      expect: () => <HomeState>[
        const HomeState.loadInProgress(),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'emits [HomeLoadInProgress] when not all data arrived '
      'after WatchDataStarted was added.',
      build: () {
        when<Stream<Either<UserFailure, User>>>(
          () => mockUserService.watchUser(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [right(initialUser)],
          ),
        );
        when<Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>>(
          () => mockGameInvitationService.watchReceivedGameInvitations(),
        ).thenAnswer(
          (_) => const Stream.empty(),
        );
        when<Stream<Either<FriendFailure, KtList<FriendRequest>>>>(
          () => mockFriendService.watchReceivedFriendRequests(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [right(initialReceivedFriendRequests)],
          ),
        );

        return HomeBloc(
          mockUserService,
          mockGameInvitationService,
          mockFriendService,
        );
      },
      act: (bloc) => bloc.add(const HomeEvent.started()),
      expect: () => <HomeState>[
        const HomeState.loadInProgress(),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'emits [HomeLoadInProgress] when not all data arrived '
      'after WatchDataStarted was added.',
      build: () {
        when<Stream<Either<UserFailure, User>>>(
          () => mockUserService.watchUser(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [right(initialUser)],
          ),
        );
        when<Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>>(
          () => mockGameInvitationService.watchReceivedGameInvitations(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [right(initialReceivedGameInvitations)],
          ),
        );
        when<Stream<Either<FriendFailure, KtList<FriendRequest>>>>(
          () => mockFriendService.watchReceivedFriendRequests(),
        ).thenAnswer(
          (_) => const Stream.empty(),
        );

        return HomeBloc(
          mockUserService,
          mockGameInvitationService,
          mockFriendService,
        );
      },
      act: (bloc) => bloc.add(const HomeEvent.started()),
      expect: () => <HomeState>[
        const HomeState.loadInProgress(),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'emits [HomeLoadInProgress, HomeLoadSuccess, HomeLoadSuccess, ...] after each arrived new user '
      'after WatchDataStarted was added.',
      build: () {
        when<Stream<Either<UserFailure, User>>>(
          () => mockUserService.watchUser(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [right(initialUser), right(updatedUser)],
          ),
        );
        when<Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>>(
          () => mockGameInvitationService.watchReceivedGameInvitations(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [right(initialReceivedGameInvitations)],
          ),
        );
        when<Stream<Either<FriendFailure, KtList<FriendRequest>>>>(
          () => mockFriendService.watchReceivedFriendRequests(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [right(initialReceivedFriendRequests)],
          ),
        );

        return HomeBloc(
          mockUserService,
          mockGameInvitationService,
          mockFriendService,
        );
      },
      act: (bloc) => bloc.add(const HomeEvent.started()),
      expect: () => <HomeState>[
        const HomeState.loadInProgress(),
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
      'emits [HomeLoadInProgress, HomeLoadSuccess, HomeLoadSuccess, ...] after each arrived new received game invitations '
      'after WatchDataStarted was added.',
      build: () {
        when<Stream<Either<UserFailure, User>>>(
          () => mockUserService.watchUser(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [right(initialUser)],
          ),
        );
        when<Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>>(
          () => mockGameInvitationService.watchReceivedGameInvitations(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [
              right(initialReceivedGameInvitations),
              right(updatedReceivedGameInvitations)
            ],
          ),
        );
        when<Stream<Either<FriendFailure, KtList<FriendRequest>>>>(
          () => mockFriendService.watchReceivedFriendRequests(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [right(initialReceivedFriendRequests)],
          ),
        );

        return HomeBloc(
          mockUserService,
          mockGameInvitationService,
          mockFriendService,
        );
      },
      act: (bloc) => bloc.add(const HomeEvent.started()),
      expect: () => <HomeState>[
        const HomeState.loadInProgress(),
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
      'emits [HomeLoadInProgress, HomeLoadSuccess, HomeLoadSuccess, ...] after each arrived new received friend requests '
      'after WatchDataStarted was added.',
      build: () {
        when<Stream<Either<UserFailure, User>>>(
          () => mockUserService.watchUser(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [right(initialUser)],
          ),
        );
        when<Stream<Either<GameInvitationFailure, KtList<GameInvitation>>>>(
          () => mockGameInvitationService.watchReceivedGameInvitations(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [right(initialReceivedGameInvitations)],
          ),
        );
        when<Stream<Either<FriendFailure, KtList<FriendRequest>>>>(
          () => mockFriendService.watchReceivedFriendRequests(),
        ).thenAnswer(
          (_) => Stream.fromIterable(
            [
              right(initialReceivedFriendRequests),
              right(updatedReceivedFriendRequests)
            ],
          ),
        );

        return HomeBloc(
          mockUserService,
          mockGameInvitationService,
          mockFriendService,
        );
      },
      act: (bloc) => bloc.add(const HomeEvent.started()),
      expect: () => <HomeState>[
        const HomeState.loadInProgress(),
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
