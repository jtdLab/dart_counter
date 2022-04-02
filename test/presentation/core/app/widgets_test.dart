import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/presentation/core/app/app.dart';
import 'package:dart_counter/presentation/core/core.dart';

import '../helpers/helpers.dart';

class MockRouter extends Mock implements PlatformRouter {}

class MockPlatformApp extends PlatformApp {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

void main() {
  group('#AppScope#', () {
    late PlatformRouter router;
    late PlatformApp app;

    setUpAll(() {
      // Init dependencies + register dependencies in DI-container
      router = MockRouter();
      app = MockPlatformApp();
      getIt.registerSingleton<AppToast>(MockAppToast());
      getIt.registerSingleton<AuthBloc>(MockAuthBloc());
    });

    tearDownAll(() async {
      // Reset DI-container
      await getIt.reset();
    });

    // Wraps the widget under test with a testable environment
    //
    // and injects dependencies when needed.
    Widget wrappedUnderTest() {
      return AppScope(router: router, app: app);
    }

    testWidgets(
      'Inject the router into widget tree.',
      (tester) async {
        // Act
        await tester.pumpWidget(wrappedUnderTest());
        tester.takeException();

        // Assert
        expect(find.byType(ListenableProvider<PlatformRouter>), findsOneWidget);
      },
    );

    testWidgets(
      'Inject the app toast into widget tree.',
      (tester) async {
        // Act
        await tester.pumpWidget(wrappedUnderTest());
        tester.takeException();

        // Assert
        expect(find.byType(Provider<AppToast>), findsOneWidget);
      },
    );

    testWidgets(
      'Inject the auth bloc into widget tree.',
      (tester) async {
        // Act
        await tester.pumpWidget(wrappedUnderTest());
        tester.takeException();

        // Assert
        expect(find.byType(BlocProvider<AuthBloc>), findsOneWidget);
      },
    );

    testWidgets(
      'Render the app.',
      (tester) async {
        // Act
        await tester.pumpWidget(wrappedUnderTest());
        tester.takeException();

        // Assert
        expect(find.byWidget(app), findsOneWidget);
      },
    );
  });
}
