import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/core/application_error.dart';
import 'package:dart_counter/application/main/friends/friends_bloc.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

class MockFriendService extends Mock implements IFriendService {}

void main() {
  late MockFriendService mockFriendService;

  final friends = KtList.from([Friend.dummy(), Friend.dummy()]);
  final receivedFriendRequests =
      KtList.from([FriendRequest.dummy(), FriendRequest.dummy()]);
  final sentFriendRequests =
      KtList.from([FriendRequest.dummy(), FriendRequest.dummy()]);

  final friendRequest = FriendRequest.dummy();

  setUpAll(() {
    registerFallbackValue(FriendRequest.dummy());
  });

  setUp(() {
    mockFriendService = MockFriendService();

    when(() => mockFriendService.getFriends()).thenReturn(right(friends));
    when(() => mockFriendService.getReceivedFriendRequests())
        .thenReturn(right(receivedFriendRequests));
    when(() => mockFriendService.getSentFriendRequests())
        .thenReturn(right(sentFriendRequests));
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test(
          'GIVEN data from friendService is available '
          'THEN initial state set to FriendsInitial.', () {
        // Act
        final underTest = FriendsBloc(
          mockFriendService,
        );

        // Assert
        expect(
          underTest.state,
          FriendsState.initial(
            friends: friends,
            receivedFriendRequests: receivedFriendRequests,
            sentFriendRequests: sentFriendRequests,
          ),
        );
      });

      test(
          'GIVEN friends is not available '
          'THEN throw ApplicationError.', () {
        // Arrange
        when(() => mockFriendService.getFriends())
            .thenReturn(left(const FriendFailure.unableToRead()));

        // Act & Assert
        expect(
          () => FriendsBloc(
            mockFriendService,
          ),
          throwsA(isA<ApplicationError>()),
        );
      });

      test(
          'GIVEN receivedFriendRequests is not available '
          'THEN throw ApplicationError.', () {
        // Arrange
        when(() => mockFriendService.getReceivedFriendRequests())
            .thenReturn(left(const FriendFailure.unableToRead()));

        // Act & Assert
        expect(
          () => FriendsBloc(
            mockFriendService,
          ),
          throwsA(isA<ApplicationError>()),
        );
      });

      test(
          'GIVEN sentFriendRequests is not available '
          'THEN throw ApplicationError.', () {
        // Arrange
        when(() => mockFriendService.getSentFriendRequests())
            .thenReturn(left(const FriendFailure.unableToRead()));

        // Act & Assert
        expect(
          () => FriendsBloc(
            mockFriendService,
          ),
          throwsA(isA<ApplicationError>()),
        );
      });
    });

    group('#GetIt#', () {});

    group('#Injectable#', () {});
  });

  group('#Events#', () {
    group(
      'Started',
      () {
        blocTest<FriendsBloc, FriendsState>(
          'Call markReceivedFriendRequestsAsRead.',
          setUp: () {
            when(() => mockFriendService.markReceivedFriendRequestsAsRead())
                .thenAnswer((_) async => right(unit));

            when(() => mockFriendService.watchFriends())
                .thenAnswer((_) => Stream.value(right(friends)));
            when(() => mockFriendService.watchReceivedFriendRequests())
                .thenAnswer((_) => Stream.value(right(receivedFriendRequests)));
            when(() => mockFriendService.watchSentFriendRequests())
                .thenAnswer((_) => Stream.value(right(sentFriendRequests)));
          },
          build: () => FriendsBloc(
            mockFriendService,
          ),
          act: (bloc) => bloc.add(const FriendsEvent.started()),
          verify: (_) {
            verify(() => mockFriendService.markReceivedFriendRequestsAsRead())
                .called(1);
          },
        );

        // TODO gar kein bock
        /**
      *  blocTest<FriendsBloc, FriendsState>(
        'emits TODO',
        build: () => FriendsBloc(
          mockFriendService,
        ),
      );
      */
      },
    );

    group(
      'FriendSelected',
      () {
        blocTest<FriendsBloc, FriendsState>(
          'Emit FriendsInitial with updated selectedFriend.',
          build: () => FriendsBloc(
            mockFriendService,
          ),
          act: (bloc) =>
              bloc.add(FriendsEvent.friendSelected(friend: friends.get(0))),
          expect: () => [
            FriendsState.initial(
              friends: friends,
              receivedFriendRequests: receivedFriendRequests,
              sentFriendRequests: sentFriendRequests,
              selectedFriend: friends.get(0),
            ),
          ],
        );
      },
    );

    group(
      'FriendRequestAccepted',
      () {
        blocTest<FriendsBloc, FriendsState>(
          'Call acceptFriendRequest with incoming friendRequest as param.',
          setUp: () {
            when(
              () => mockFriendService.acceptFriendRequest(
                friendRequest: any(named: 'friendRequest'),
              ),
            ).thenAnswer((_) async => right(unit));
          },
          build: () => FriendsBloc(
            mockFriendService,
          ),
          act: (bloc) => bloc.add(
            FriendsEvent.friendRequestAccepted(friendRequest: friendRequest),
          ),
          verify: (_) {
            verify(
              () => mockFriendService.acceptFriendRequest(
                friendRequest: friendRequest,
              ),
            ).called(1);
          },
        );
      },
    );

    group(
      'FriendRequestDeclined',
      () {
        blocTest<FriendsBloc, FriendsState>(
          'Call declineFriendRequest with incoming friendRequest as param.',
          setUp: () {
            when(
              () => mockFriendService.declineFriendRequest(
                friendRequest: any(named: 'friendRequest'),
              ),
            ).thenAnswer((_) async => right(unit));
          },
          build: () => FriendsBloc(
            mockFriendService,
          ),
          act: (bloc) => bloc.add(
            FriendsEvent.friendRequestDeclined(friendRequest: friendRequest),
          ),
          verify: (_) {
            verify(
              () => mockFriendService.declineFriendRequest(
                friendRequest: friendRequest,
              ),
            ).called(1);
          },
        );
      },
    );
  });
}
