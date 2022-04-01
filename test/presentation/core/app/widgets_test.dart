import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/presentation/core/app/app.dart';
import 'package:dart_counter/presentation/core/core.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/helpers.dart';

void main() {
  group('#AppScope#', () {
    late PlatformRouter router;
    late PlatformApp app;

    late AppScope underTest;

    setUpAll(() {
      // Init dependencies
      router = MockRouter();
      app = MockPlatformApp();

      getIt.registerSingleton<AppToast>(MockAppToast());
      getIt.registerSingleton<AuthBloc>(MockAuthBloc());

      // Init widget under test
      underTest = AppScope(router: router, app: app);
    });

    tearDownAll(() async {
      await getIt.reset();
    });

    testWidgets(
      'Inject the router into widget tree.',
      (tester) async {
        // Act
        await tester.pumpWidget(underTest);
        tester.takeException();

        // Assert
        expect(find.byType(ListenableProvider<PlatformRouter>), findsOneWidget);
      },
    );

    testWidgets(
      'Inject the app toast into widget tree.',
      (tester) async {
        // Act
        await tester.pumpWidget(underTest);
        tester.takeException();

        // Assert
        expect(find.byType(Provider<AppToast>), findsOneWidget);
      },
    );

    testWidgets(
      'Inject the auth bloc into widget tree.',
      (tester) async {
        // Act
        await tester.pumpWidget(underTest);
        tester.takeException();

        // Assert
        expect(find.byType(BlocProvider<AuthBloc>), findsOneWidget);
      },
    );

    testWidgets(
      'Render the app.',
      (tester) async {
        // Act
        await tester.pumpWidget(underTest);
        tester.takeException();

        // Assert
        expect(find.byWidget(app), findsOneWidget);
      },
    );
  });
}
