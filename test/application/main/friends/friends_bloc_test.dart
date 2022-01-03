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

  setUp(() {
    mockFriendService = MockFriendService();

    when(() => mockFriendService.getFriends()).thenReturn(right(friends));
    when(() => mockFriendService.getReceivedFriendRequests())
        .thenReturn(right(receivedFriendRequests));
    when(() => mockFriendService.getSentFriendRequests())
        .thenReturn(right(sentFriendRequests));
  });

  test(
      'initial state is FriendsInitial '
      'when data from friendService is available', () {
    // Arrange & Act
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
      'throws ApplicationError '
      'when friends is not available', () {
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
      'throws ApplicationError '
      'when receivedFriendRequests is not available', () {
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
      'throws ApplicationError '
      'when sentFriendRequests is not available', () {
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

  group(
    'Started',
    () {
      blocTest<FriendsBloc, FriendsState>(
        'calls markReceivedFriendRequestsAsRead',
        setUp: () {
          when(() => mockFriendService.markReceivedFriendRequestsAsRead())
              .thenAnswer((_) async => right(unit));
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
        'emits FriendsInitial with updated selectedFriend',
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
        'calls acceptFriendRequest with incoming friendRequest as param ',
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
        'calls declineFriendRequest with incoming friendRequest as param ',
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
}
