import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/friends/friends_bloc.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/friend/friend_request.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockFriendService extends Mock implements IFriendService {}

void main() {
  late MockFriendService mockFriendService;

  setUpAll(() {
    // Mocktail related setup
    registerFallbackValue(FriendRequest.dummy());
  });

  setUp(() {
    mockFriendService = MockFriendService();
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test('Initial state set to FriendsInitial.', () {
        // Act
        final underTest = FriendsBloc(mockFriendService);

        // Assert
        expect(
          underTest.state,
          const FriendsState.initial(),
        );
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN FriendsBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(() => FriendsBloc.getIt(), throwsA(anything));
      });

      test(
          'GIVEN FriendsBloc is registered inside getIt '
          'THEN initial state set to FriendsInitial.', () {
        // Arrange
        getIt.registerFactoryParam(
          (param1, _) => FriendsBloc(mockFriendService),
        );

        // Act
        final underTest = FriendsBloc.getIt();

        // Assert
        expect(
          underTest.state,
          const FriendsState.initial(),
        );
      });

      test(
          'GIVEN FriendsBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = FriendsBloc(mockFriendService);
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = FriendsBloc.getIt();

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        await getIt.reset();
      });
    });
  });

  group('#Events#', () {
    group(
      '#Started#',
      () {
        blocTest<FriendsBloc, FriendsState>(
          'Mark received friend requests as read.',
          setUp: () {
            when(
              () => mockFriendService.markReceivedFriendRequestsAsRead(),
            ).thenAnswer((_) async => right(unit));
          },
          build: () => FriendsBloc(mockFriendService),
          act: (bloc) => bloc.add(const FriendsEvent.started()),
          verify: (_) {
            verify(
              () => mockFriendService.markReceivedFriendRequestsAsRead(),
            ).called(1);
          },
        );
      },
    );

    group(
      '#FriendSelected#',
      () {
        final selectedFriend = Friend.dummy();

        blocTest<FriendsBloc, FriendsState>(
          'Emit FriendsInitial with updated selectedFriend.',
          build: () => FriendsBloc(mockFriendService),
          act: (bloc) => bloc.add(
            FriendsEvent.friendSelected(friend: selectedFriend),
          ),
          expect: () => [
            FriendsState.initial(selectedFriend: selectedFriend),
          ],
        );
      },
    );

    group(
      '#FriendRequestAccepted#',
      () {
        final acceptedFriendRequest = FriendRequest.dummy();

        blocTest<FriendsBloc, FriendsState>(
          'Accept incoming friend request.',
          setUp: () {
            when(
              () => mockFriendService.acceptFriendRequest(
                friendRequest: any(named: 'friendRequest'),
              ),
            ).thenAnswer((_) async => right(unit));
          },
          build: () => FriendsBloc(mockFriendService),
          act: (bloc) => bloc.add(
            FriendsEvent.friendRequestAccepted(
              friendRequest: acceptedFriendRequest,
            ),
          ),
          verify: (_) {
            verify(
              () => mockFriendService.acceptFriendRequest(
                friendRequest: acceptedFriendRequest,
              ),
            ).called(1);
          },
        );
      },
    );

    group(
      '#FriendRequestDeclined#',
      () {
        final declinedFriendRequest = FriendRequest.dummy();

        blocTest<FriendsBloc, FriendsState>(
          'Decline incoming friend request.',
          setUp: () {
            when(
              () => mockFriendService.declineFriendRequest(
                friendRequest: any(named: 'friendRequest'),
              ),
            ).thenAnswer((_) async => right(unit));
          },
          build: () => FriendsBloc(mockFriendService),
          act: (bloc) => bloc.add(
            FriendsEvent.friendRequestDeclined(
              friendRequest: declinedFriendRequest,
            ),
          ),
          verify: (_) {
            verify(
              () => mockFriendService.declineFriendRequest(
                friendRequest: declinedFriendRequest,
              ),
            ).called(1);
          },
        );
      },
    );
  });
}
