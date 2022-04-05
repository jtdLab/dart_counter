import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/core/core.dart';
import 'package:dart_counter/presentation/core/app_toast.dart';
import 'package:dart_counter/presentation/my_page.dart';
import 'package:dart_counter/presentation/widgets.dart';
import 'package:provider/provider.dart';
import 'core/helpers/helpers.dart';
import 'ios/helpers/helpers.dart';

// Snippets
// Page Test -> pt
// Page Test Wrapped Under Test -> ptwut
// Page Test Injects Group -> ptig
// Page Test Injects Register Dependency -> ptird
// Page Test Injects Test -> ptit
// Page Test Bloc Group ->  ptbg
// Page Test Bloc Group Setup ->  ptbgs
// Page Test Param Group ->  ptpg
// Page Test Bloc Test Calls ->  ptbtc
// Page Test Bloc Test Never Calls ->  ptbtnc
// Page Test Renders View -> ptrv

// pt
void main() {
  group('MyPage', () {
    // Dependencies
    late AppToast appToast;
    late AuthBloc authBloc;

    /// ...

    setUp(() {
      // Init dependencies
      appToast = MockAppToast();
      authBloc = MockAuthBloc();

      /// ...

      // Mock default behaviour
      whenListenTo(authBloc, const AuthState.unauthenticated());

      /// ...
    });

    // ptwut
    // Returns the widget under test wrapped into a testable environment
    // that provides all dependencies needed.
    Widget wrappedUnderTest() {
      return appWrapper(
        MultiProvider(
          providers: [
            Provider.value(value: appToast),
            BlocProvider.value(value: authBloc),
          ],
          child: const MyPage(),
        ),
      );
    }

    // ptig
    group('Injects', () {
      setUp(() {
        // Register dependency in DI-container
        // pgird
        getIt.registerSingleton<AuthBloc>(authBloc);

        /// ...
      });

      tearDown(() async {
        // Reset DI-container
        await getIt.reset();
      });

      // Returns the widget under test wrapped into a testable environment
      // that provides all dependencies needed.
      Widget wrappedUnderTest() {
        return appWrapper(
          Provider.value(
            value: appToast,
            child: Builder(
              builder: (context) => const MyPage().wrappedRoute(context),
            ),
          ),
        );
      }

      // pgit
      testWidgets(
        'the instance of AuthBloc that is registered inside DI-container '
        'into the widget tree.',
        (tester) async {
          // Act
          await tester.pumpWidget(wrappedUnderTest());
          tester.takeException();

          // Assert
          final context = tester.element(find.byType(MyPage));
          expect(context.read<AuthBloc>(), authBloc);
        },
      );

      /// ...
    });

    // ptbg
    group('GIVEN state of AuthBloc is', () {
      group('Authenticated', () {
        // ptpg
        group('with param1 = value1, ...', () {
          // ptbgs
          setUp(() {
            // Mock bloc state
            whenListenTo(authBloc, const AuthState.authenticated());
          });

          // ptbtc
          testWidgets('THEN calls app toast show with msg = "abc".',
              (tester) async {
            // Arrange
            when(() => appToast.show('abc')).thenReturn(null);

            // Act
            await tester.pumpWidget(wrappedUnderTest());

            // Assert
            verify(() => appToast.show('abc')).called(1);
          });

          /// ...

          // ptbtnc
          testWidgets('THEN never calls app toast show with msg = "efg".',
              (tester) async {
            // Arrange
            when(() => appToast.show('efg')).thenReturn(null);

            // Act
            await tester.pumpWidget(wrappedUnderTest());

            // Assert
            verifyNever(() => appToast.show('efg'));
          });

          /// ...
        });

        /// ...
      });

      /// ...
    });

    /// ...

    // ptrv
    testWidgets('Renders MyView.', (tester) async {
      // Act
      await tester.pumpWidget(wrappedUnderTest());

      // Assert
      expect(find.byType(MyView), findsOneWidget);
    });
  });
}
