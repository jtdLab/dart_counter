import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/friends/friends_bloc.dart';
import 'package:dart_counter/application/authenticated/friends/more/more_bloc.dart';
import 'package:dart_counter/domain/friend/friend.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockFriendService extends Mock implements IFriendService {}

class MockFriendsBloc extends MockBloc<FriendsEvent, FriendsState>
    implements FriendsBloc {}

void main() {
  late MockFriendService mockFriendService;
  late MockFriendsBloc mockFriendsBloc;

  setUp(() {
    mockFriendService = MockFriendService();
    mockFriendsBloc = MockFriendsBloc();
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

    group('#GetIt#', () {
      test(
          'GIVEN MoreBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(() => MoreBloc.getIt(mockFriendsBloc), throwsA(anything));
      });

      test(
          'GIVEN MoreBloc is registered inside getIt '
          'THEN initial state set to MoreInitial.', () {
        // Arrange
        getIt.registerFactoryParam(
          (param1, _) => MoreBloc.injectable(
            mockFriendService,
            [
              mockFriendsBloc,
            ],
          ),
        );

        // Act
        final underTest = MoreBloc.getIt(mockFriendsBloc);

        // Assert
        expect(
          underTest.state,
          const MoreState.initial(),
        );
      });

      test(
          'GIVEN MoreBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = MoreBloc.injectable(
          mockFriendService,
          [
            mockFriendsBloc,
          ],
        );
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = MoreBloc.getIt(mockFriendsBloc);

        // Assert
        expect(underTest, registeredInstance);
      });

      tearDown(() async {
        // Reset DI-container
        await getIt.reset();
      });
    });

    group('#Injectable#', () {
      test(
          'GIVEN otherDependencies is not [FriendsBloc] '
          'THEN throw error.', () {
        // Arrange
        final otherDependencies = ['Hallo'];

        // Act & Assert
        expect(
          () => MoreBloc.injectable(mockFriendService, otherDependencies),
          throwsA(anything),
        );
      });

      test(
          'GIVEN otherDependencies is [FriendsBloc] '
          'THEN initial state set to MoreInitial.', () {
        // Arrange
        final otherDependencies = [
          mockFriendsBloc,
        ];

        // Act
        final underTest =
            MoreBloc.injectable(mockFriendService, otherDependencies);

        // Assert
        expect(underTest.state, const MoreState.initial());
      });
    });
  });

  group('#Events#', () {
    group(
      '#RemovePressed#',
      () {
        final friendToRemove = Friend.dummy();

        blocTest<MoreBloc, MoreState>(
          'GIVEN selected friend is not null '
          'THEN remove incoming friend.',
          setUp: () {
            when(
              () => mockFriendService.removeFriend(friend: friendToRemove),
            ).thenAnswer((_) async => right(unit));
            when(() => mockFriendsBloc.state).thenReturn(
              FriendsState.initial(selectedFriend: friendToRemove),
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
          'GIVEN friendsBloc has state FriendsInitial with selectedFriend null '
          'THEN do nothing.',
          setUp: () {
            when(() => mockFriendsBloc.state).thenReturn(
              const FriendsState.initial(),
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
