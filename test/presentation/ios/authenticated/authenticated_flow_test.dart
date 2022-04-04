import 'package:dart_counter/application/authenticated/core/friends/friends_cubit.dart';
import 'package:dart_counter/application/authenticated/core/game_invitations/game_invitations_cubit.dart';
import 'package:dart_counter/application/authenticated/core/user/user_cubit.dart';
import 'package:dart_counter/presentation/ios/authenticated/authenticated_flow.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

import '../helpers/helpers.dart';

void main() {
  group('#AuthenticatedFlow#', () {
    // Wraps the widget under test with a testable environment
    Widget wrappedUnderTest() {
      return routableWrapper(const AuthenticatedFlow(), MockRouter());
    }

    testWidgets('Render AutoRouter.', (tester) async {
      // Act
      await tester.pumpWidget(wrappedUnderTest());

      // Assert
      expect(find.byType(AutoRouter), findsOneWidget);
    });
  });

  group('#AuthenticatedFlow.wrappedRoute#', () {
    // Wraps the widget under test with a testable environment.
    Widget wrappedUnderTest() {
      return Builder(
        builder: (context) => const AuthenticatedFlow().wrappedRoute(context),
      );
    }

    testWidgets(
        'Inject user cubit that is registered inside DI-container '
        'into widget tree.', (tester) async {
      // Arrange
      final userCubit = MockUserCubit();
      getIt.registerSingleton<UserCubit>(userCubit);

      // Act
      await tester.pumpWidget(wrappedUnderTest());
      tester.takeException();

      // Assert
      final context = tester.element(find.byType(AuthenticatedFlow));
      expect(context.read<UserCubit>(), userCubit);
    });

    testWidgets(
        'Inject friends cubit that is registered inside DI-container '
        'into widget tree.', (tester) async {
      // Arrange
      final friendsCubit = MockFriendsCubit();
      getIt.registerSingleton<FriendsCubit>(friendsCubit);

      // Act
      await tester.pumpWidget(wrappedUnderTest());
      tester.takeException();

      // Assert
      final context = tester.element(find.byType(AuthenticatedFlow));
      expect(context.read<FriendsCubit>(), friendsCubit);
    });

    testWidgets(
        'Inject game invitations cubit that is registered inside DI-container '
        'into widget tree.', (tester) async {
      // Arrange
      final gameInvitationsCubit = MockGameInvitationsCubit();
      getIt.registerSingleton<GameInvitationsCubit>(gameInvitationsCubit);

      // Act
      await tester.pumpWidget(wrappedUnderTest());
      tester.takeException();

      // Assert
      final context = tester.element(find.byType(AuthenticatedFlow));
      expect(context.read<GameInvitationsCubit>(), gameInvitationsCubit);
    });

    tearDown(() async {
      // Reset DI-container
      await getIt.reset();
    });
  });
}
