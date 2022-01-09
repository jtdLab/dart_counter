import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/friends/search_user/search_user_bloc.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dart_counter/domain/friend/user_snapshot.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

class MockFriendService extends Mock implements IFriendService {}

void main() {
  late MockFriendService mockFriendService;

  setUp(() {
    mockFriendService = MockFriendService();
  });

  test('initial state is SearchUserInitial', () {
    // Arrange & Act
    final underTest = SearchUserBloc(
      mockFriendService,
    );

    // Assert
    expect(underTest.state, const SearchUserState.initial());
  });

  group(
    'SearchStringChanged',
    () {
      final searchResults1 =
          KtList.from([UserSnapshot.dummy(), UserSnapshot.dummy()]);

      final searchResults2 =
          KtList.from([UserSnapshot.dummy(), UserSnapshot.dummy()]);

      blocTest<SearchUserBloc, SearchUserState>(
        'emits SearchUserInitial '
        'when newSearchString is empty string',
        build: () => SearchUserBloc(
          mockFriendService,
        ),
        act: (bloc) => bloc.add(
          const SearchUserEvent.searchStringChanged(newSearchString: ''),
        ),
        wait: const Duration(milliseconds: 300),
        expect: () => [const SearchUserState.initial()],
      );

      blocTest<SearchUserBloc, SearchUserState>(
        'emits [SearchUserLoadInProgress, SearchUserLoadFailure] '
        'when newSearchString is not empty string '
        'and searchUserByUsername returns failure',
        setUp: () {
          when(
            () => mockFriendService.searchUserByUsername(
              username: 'username',
            ),
          ).thenAnswer((_) async => left(const FriendFailure.unableToRead()));
        },
        build: () => SearchUserBloc(
          mockFriendService,
        ),
        act: (bloc) => bloc.add(
          const SearchUserEvent.searchStringChanged(
            newSearchString: 'username',
          ),
        ),
        wait: const Duration(milliseconds: 300),
        expect: () => [
          const SearchUserState.loadInProgress(),
          const SearchUserState.loadFailure(),
        ],
      );

      blocTest<SearchUserBloc, SearchUserState>(
        'emits [SearchUserLoadInProgress, SearchUserLoadSuccess] '
        'when newSearchString is not empty string '
        'and searchUserByUsername returns results',
        setUp: () {
          when(
            () => mockFriendService.searchUserByUsername(
              username: 'username',
            ),
          ).thenAnswer((_) async => right(searchResults1));
        },
        build: () => SearchUserBloc(
          mockFriendService,
        ),
        act: (bloc) => bloc.add(
          const SearchUserEvent.searchStringChanged(
            newSearchString: 'username',
          ),
        ),
        wait: const Duration(milliseconds: 300),
        expect: () => [
          const SearchUserState.loadInProgress(),
          SearchUserState.loadSuccess(searchResults: searchResults1),
        ],
      );

      blocTest<SearchUserBloc, SearchUserState>(
        'emits throttled states with a delay of 300ms',
        setUp: () {
          when(
            () => mockFriendService.searchUserByUsername(
              username: 'username1',
            ),
          ).thenAnswer((_) async => right(searchResults1));
          when(
            () => mockFriendService.searchUserByUsername(
              username: 'username2',
            ),
          ).thenAnswer((_) async => right(searchResults2));
        },
        build: () => SearchUserBloc(
          mockFriendService,
        ),
        act: (bloc) async {
          bloc.add(
            const SearchUserEvent.searchStringChanged(
              newSearchString: 'username1',
            ),
          );
          bloc.add(
            const SearchUserEvent.searchStringChanged(newSearchString: 'aa'),
          );
          await Future.delayed(const Duration(milliseconds: 300));
          bloc.add(
            const SearchUserEvent.searchStringChanged(
              newSearchString: 'username2',
            ),
          );
        },
        expect: () => [
          const SearchUserState.loadInProgress(),
          SearchUserState.loadSuccess(searchResults: searchResults1),
          const SearchUserState.loadInProgress(),
          SearchUserState.loadSuccess(searchResults: searchResults2),
        ],
      );
    },
  );

  group(
    'ClearPressed',
    () {
      blocTest<SearchUserBloc, SearchUserState>(
        'emits SearchUserInitial',
        build: () => SearchUserBloc(
          mockFriendService,
        ),
        act: (bloc) => bloc.add(const SearchUserEvent.clearPressed()),
        expect: () => [const SearchUserState.initial()],
      );
    },
  );
}
