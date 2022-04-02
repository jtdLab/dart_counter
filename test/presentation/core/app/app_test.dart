import 'package:dart_counter/core/injection.dart';
import 'package:dart_counter/core/platform.dart';
import 'package:dart_counter/presentation/android/app.dart' as android;
import 'package:dart_counter/presentation/android/core/router.dart' as android;
import 'package:dart_counter/presentation/core/app/app.dart';
import 'package:dart_counter/presentation/core/presentation_error.dart';
import 'package:dart_counter/presentation/ios/app.dart' as ios;
import 'package:dart_counter/presentation/ios/core/router.dart' as ios;
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

import '../helpers/helpers.dart';

void main() {
  group('#App#', () {
    late Platform platform;

    setUp(() {
      // Init dependencies + mock default behaviour
      platform = MockPlatform();
      when(() => platform.isAndroid).thenReturn(false);
      when(() => platform.isIOS).thenReturn(false);
    });

    // Bootstrap the widget under test and pumps it using tester.
    Future<void> bootstrap(WidgetTester tester) async {
      await tester.pumpWidget(
        Provider.value(
          value: platform,
          child: const App(),
        ),
      );
    }

    testWidgets(
      'GIVEN android router '
      'WHEN platform is android '
      'THEN render AppScope with the given router and the android app.',
      (tester) async {
        // Arrange
        final router = android.Router();
        getIt.registerSingleton(router);

        when(() => platform.isAndroid).thenReturn(true);

        // Act
        await bootstrap(tester);
        tester.takeException();

        // Assert
        final appScope =
            tester.firstWidget<AppScope>(find.byType(AppScope<android.Router>));
        expect(appScope.router, router);
        expect(appScope.app, isA<android.App>());

        addTearDown(() {
          getIt.unregister(instance: router);
        });
      },
    );

    testWidgets(
      'GIVEN ios router '
      'WHEN platform is ios '
      'THEN render AppScope with the given router and the ios app.',
      (tester) async {
        // Arrange
        final router = ios.Router();
        getIt.registerSingleton(router);

        when(() => platform.isIOS).thenReturn(true);

        // Act
        await bootstrap(tester);
        tester.takeException();

        // Assert
        final appScope =
            tester.firstWidget<AppScope>(find.byType(AppScope<ios.Router>));
        expect(appScope.router, router);
        expect(appScope.app, isA<ios.App>());

        addTearDown(() {
          getIt.unregister(instance: router);
        });
      },
    );

    testWidgets(
      'WHEN platform is not android or ios '
      'THEN throw PlatformNotSupportedError.',
      (tester) async {
        // Arrange
        when(() => platform.isAndroid).thenReturn(false);
        when(() => platform.isIOS).thenReturn(false);

        // Act
        await bootstrap(tester);

        // Assert
        expect(tester.takeException(), isA<PlatformNotSupportedError>());
      },
    );
  });
}
