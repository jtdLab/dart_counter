import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/friends/friends_bloc.dart';
import 'package:dart_counter/application/main/friends/more/more_bloc.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

class MockFriendService extends Mock implements IFriendService {}

class MockFriendsBloc extends MockBloc<FriendsEvent, FriendsState>
    implements FriendsBloc {}

void main() {
  late MockFriendService mockFriendService;
  late MockFriendsBloc mockFriendsBloc;

  final friendToRemove = Friend.dummy();

  setUpAll(() {
    registerFallbackValue(friendToRemove);
  });

  setUp(() {
    mockFriendService = MockFriendService();
    mockFriendsBloc = MockFriendsBloc();

    when(
      () => mockFriendService.removeFriend(friend: any(named: 'friend')),
    ).thenAnswer((_) async => right(unit));
  });

  group('#Constructors#', () {
    group('#Standard#', () {
      test('Initial state set to MoreInitial.', () {
        // Arrange & Act
        final underTest = MoreBloc(
          mockFriendService,
          mockFriendsBloc,
        );

        // Assert
        expect(underTest.state, const MoreState.initial());
      });
    });

    group('#GetIt#', () {});

    group('#Injectable#', () {});
  });

  group('#Events#', () {
    group(
      'RemovePressed',
      () {
        blocTest<MoreBloc, MoreState>(
          'GIVEN selected friend is not null '
          'THEN call removeFriend with friendToRemove as param.',
          setUp: () {
            when(() => mockFriendsBloc.state).thenReturn(
              FriendsState.initial(
                friends: const KtList.empty(),
                receivedFriendRequests: const KtList.empty(),
                sentFriendRequests: const KtList.empty(),
                selectedFriend: friendToRemove,
              ),
            );
          },
          build: () => MoreBloc(
            mockFriendService,
            mockFriendsBloc,
          ),
          act: (bloc) => bloc.add(const MoreEvent.removePressed()),
          verify: (bloc) {
            verify(
              () => mockFriendService.removeFriend(friend: friendToRemove),
            ).called(1);
          },
        );

        blocTest<MoreBloc, MoreState>(
          'GIVEN selected friend is null '
          'THEN do nothing.',
          setUp: () {
            when(() => mockFriendsBloc.state).thenReturn(
              const FriendsState.initial(
                friends: KtList.empty(),
                receivedFriendRequests: KtList.empty(),
                sentFriendRequests: KtList.empty(),
              ),
            );
          },
          build: () => MoreBloc(
            mockFriendService,
            mockFriendsBloc,
          ),
          act: (bloc) => bloc.add(const MoreEvent.removePressed()),
          verify: (bloc) {
            verifyNever(
              () => mockFriendService.removeFriend(friend: friendToRemove),
            );
          },
        );
      },
    );
  });
}
