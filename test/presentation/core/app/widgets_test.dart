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
    late AppToast appToast;
    late AuthBloc authBloc;

    setUpAll(() {
      // Init dependencies + register dependencies in DI-container
      router = MockRouter();
      app = MockPlatformApp();
      appToast = MockAppToast();
      authBloc = MockAuthBloc();
      getIt.registerSingleton<AppToast>(appToast);
      getIt.registerSingleton<AuthBloc>(authBloc);
    });

    tearDownAll(() async {
      // Reset DI-container
      await getIt.reset();
    });

    // Wraps the widget under test with a testable environment
    Widget wrappedUnderTest() {
      return AppScope(router: router, app: app);
    }

    testWidgets(
      'Inject the router passed via constructor into widget tree.',
      (tester) async {
        // Act
        await tester.pumpWidget(wrappedUnderTest());
        tester.takeException();

        // Assert
        final context = tester.element(find.byType(MockPlatformApp));
        expect(context.read<PlatformRouter>(), router);
      },
    );

    testWidgets(
      'Inject the app toast that is registered inside DI-container '
      'into widget tree.',
      (tester) async {
        // Act
        await tester.pumpWidget(wrappedUnderTest());
        tester.takeException();

        // Assert
        final context = tester.element(find.byType(MockPlatformApp));
        expect(context.read<AppToast>(), appToast);
      },
    );

    testWidgets(
      'Inject the auth bloc that is registered inside DI-container '
      'into widget tree and add Started.',
      (tester) async {
        // Act
        await tester.pumpWidget(wrappedUnderTest());
        tester.takeException();

        // Assert
        final context = tester.element(find.byType(MockPlatformApp));
        expect(context.read<AuthBloc>(), authBloc);
        verify(() => authBloc.add(const AuthEvent.started())).called(1);
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
