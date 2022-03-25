import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/authenticated/friends/search_user/search_user_bloc.dart';
import 'package:dart_counter/domain/friend/friend_failure.dart';
import 'package:dart_counter/domain/friend/i_friend_service.dart';
import 'package:dart_counter/domain/friend/user_snapshot.dart';
import 'package:dart_counter/injection.dart';
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

  group('#Constructors#', () {
    group('#Standard', () {
      test('Initial state set to SearchUserInitial', () {
        // Arrange & Act
        final underTest = SearchUserBloc(
          mockFriendService,
        );

        // Assert
        expect(underTest.state, const SearchUserState.initial());
      });
    });

    group('#GetIt#', () {
      test(
          'GIVEN SearchUserBloc is not registered inside getIt '
          'THEN throw error.', () {
        // Act & Assert
        expect(() => SearchUserBloc.getIt(), throwsA(anything));
      });

      test(
          'GIVEN SearchUserBloc is registered inside getIt '
          'THEN initial state set to SearchUserInitial.', () {
        // Arrange
        getIt.registerFactoryParam(
          (param1, _) => SearchUserBloc(mockFriendService),
        );

        // Act
        final underTest = SearchUserBloc.getIt();

        // Assert
        expect(
          underTest.state,
          const SearchUserState.initial(),
        );
      });

      test(
          'GIVEN SearchUserBloc is registered inside getIt '
          'THEN return the registered instance.', () {
        // Arrange
        final registeredInstance = SearchUserBloc(mockFriendService);
        getIt.registerFactoryParam((param1, _) => registeredInstance);

        // Act
        final underTest = SearchUserBloc.getIt();

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
      '#SearchStringChanged#',
      () {
        final searchResults1 =
            KtList.from([UserSnapshot.dummy(), UserSnapshot.dummy()]);

        final searchResults2 =
            KtList.from([UserSnapshot.dummy(), UserSnapshot.dummy()]);

        blocTest<SearchUserBloc, SearchUserState>(
          'GIVEN newSearchString is empty string '
          'THEN emit SearchUserInitial.',
          build: () => SearchUserBloc(mockFriendService),
          act: (bloc) => bloc.add(
            const SearchUserEvent.searchStringChanged(newSearchString: ''),
          ),
          wait: const Duration(milliseconds: 300),
          expect: () => [const SearchUserState.initial()],
        );

        blocTest<SearchUserBloc, SearchUserState>(
          'GIVEN newSearchString is not empty string '
          'and searchUserByUsername returns failure '
          'THEN emit [SearchUserLoadInProgress, SearchUserLoadFailure].',
          setUp: () {
            when(
              () => mockFriendService.searchUserByUsername(
                username: 'username',
              ),
            ).thenAnswer((_) async => left(const FriendFailure.unableToRead()));
          },
          build: () => SearchUserBloc(mockFriendService),
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
          'GIVEN newSearchString is not empty string '
          'and searchUserByUsername returns results '
          'THEN emit [SearchUserLoadInProgress, SearchUserLoadSuccess].',
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
          'Emit throttled states with a delay of 300ms ignore other event meanwhile.',
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
      '#ClearPressed#',
      () {
        blocTest<SearchUserBloc, SearchUserState>(
          'Emit SearchUserInitial.',
          build: () => SearchUserBloc(mockFriendService),
          act: (bloc) => bloc.add(const SearchUserEvent.clearPressed()),
          expect: () => [
            const SearchUserState.initial(),
          ],
        );
      },
    );
  });
}
