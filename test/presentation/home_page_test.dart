void main() {
  // TODO
}

/**
 * import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/main/core/friends/friends_cubit.dart';
import 'package:dart_counter/application/main/core/game_invitations/game_invitations_cubit.dart';
import 'package:dart_counter/application/main/core/user/user_cubit.dart';
import 'package:dart_counter/application/main/home/create_online_game/create_online_game_cubit.dart';
import 'package:dart_counter/application/main/home/home_bloc.dart';
import 'package:dart_counter/domain/user/user.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/main/home/home_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockingjay/mockingjay.dart';

class MockUserCubit extends MockCubit<UserState> implements UserCubit {}

class MockFriendsCubit extends MockCubit<FriendsState> implements FriendsCubit {
}

class MockGameInvitationsCubit extends MockCubit<GameInvitationsState>
    implements GameInvitationsCubit {}

class MockHomeBloc extends MockBloc<HomeEvent, HomeState> implements HomeBloc {}

class MockCreateOnlineGameCubit extends MockCubit<CreateOnlineGameState>
    implements CreateOnlineGameCubit {}

void main() {
  late MockNavigator mockNavigator;
  late MockUserCubit mockUserCubit;
  late MockFriendsCubit mockFriendsCubit;
  late MockGameInvitationsCubit mockGameInvitationsCubit;
  late MockHomeBloc mockHomeBloc;
  late MockCreateOnlineGameCubit mockCreateOnlineGameCubit;

  setUpAll(() {
    EasyLocalization.logger.enableBuildModes = [];
  });

  setUp(() async {
    mockNavigator = MockNavigator();
    mockUserCubit = MockUserCubit();
    mockFriendsCubit = MockFriendsCubit();
    mockGameInvitationsCubit = MockGameInvitationsCubit();
    mockHomeBloc = MockHomeBloc();
    whenListen(
      mockHomeBloc,
      const Stream<HomeState>.empty(),
      initialState: const HomeState.loadInProgress(),
    );
    mockCreateOnlineGameCubit = MockCreateOnlineGameCubit();
    whenListen(
      mockCreateOnlineGameCubit,
      const Stream<CreateOnlineGameState>.empty(),
      initialState: const CreateOnlineGameState.initial(),
    );

    await GetIt.instance.reset();
    GetIt.instance.registerFactory<UserCubit>(() => mockUserCubit);
    GetIt.instance.registerFactory<FriendsCubit>(() => mockFriendsCubit);
    GetIt.instance.registerFactory<GameInvitationsCubit>(
      () => mockGameInvitationsCubit,
    );
    GetIt.instance.registerFactory<HomeBloc>(() => mockHomeBloc);
    GetIt.instance.registerFactory<CreateOnlineGameCubit>(
      () => mockCreateOnlineGameCubit,
    );
  });

  Widget getEmbeddedWidget({
    required Widget underTest,
  }) {
    return CupertinoApp(
      home: MockNavigatorProvider(
        navigator: mockNavigator,
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => UserCubit.getIt()),
            BlocProvider(create: (context) => FriendsCubit.getIt()),
            BlocProvider(create: (context) => GameInvitationsCubit.getIt()),
          ],
          child: underTest,
        ),
      ),
    );
  }

  group('HomePage', () {
    group('UI', () {
      testWidgets(
        'GIVEN load data is in progress '
        'THEN dont show navigation bar.',
        (tester) async {
          // Arrange
          final HomePage underTest = HomePage();
          await tester.pumpWidget(getEmbeddedWidget(underTest: underTest));

          // Assert
          final page =
              tester.widget<AppPage>(find.byKey(const Key('home_page')));
          expect(page.navigationBar, isNull);
        },
      );

      testWidgets(
        'GIVEN load data succeeded '
        'THEN show navigation bar.',
        (tester) async {
          // Arrange
          whenListen(
            mockHomeBloc,
            const Stream<HomeState>.empty(),
            initialState: HomeState.loadSuccess(
              user: User.dummy(),
              unreadGameInvitations: 0,
              unreadFriendRequests: 0,
            ),
          );
          final HomePage underTest = HomePage();
          await tester.pumpWidget(getEmbeddedWidget(underTest: underTest));

          // Assert
          final page =
              tester.widget<AppPage>(find.byKey(const Key('home_page')));
          expect(page.navigationBar, isNotNull);
        },
      );

      testWidgets(
        'GIVEN load data failed '
        'THEN dont show navigation bar.',
        (tester) async {
          // Arrange
          whenListen(
            mockHomeBloc,
            const Stream<HomeState>.empty(),
            initialState: const HomeState.loadFailure(),
          );
          final HomePage underTest = HomePage();
          await tester.pumpWidget(getEmbeddedWidget(underTest: underTest));

          // Assert
          final page =
              tester.widget<AppPage>(find.byKey(const Key('home_page')));
          expect(page.navigationBar, isNull);
        },
      );
    });

    group('Navigaton', () {
      // TODO
      testWidgets(
        'GIVEN create online game succeeded '
        'THEN go to play online flow.',
        (tester) async {
          // Arrange
          when(() => mockNavigator.pushReplacement(any())).thenAnswer(
            (_) async {},
          );

          final HomePage underTest = HomePage();
          await tester.pumpWidget(getEmbeddedWidget(underTest: underTest));

          // Assert
          final page =
              tester.widget<AppPage>(find.byKey(const Key('home_page')));
          expect(page.navigationBar, isNull);
        },
      );
    });
  });
}

 */