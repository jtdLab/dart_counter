import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/core/injection.dart';
import 'package:dart_counter/presentation/android/app.dart' as android_app;
import 'package:dart_counter/presentation/android/core/router.dart'
    as android_router;
import 'package:dart_counter/presentation/core/app.dart';
import 'package:dart_counter/presentation/core/platform.dart';
import 'package:dart_counter/presentation/core/presentation_error.dart';
import 'package:dart_counter/presentation/ios/app.dart' as ios_app;
import 'package:dart_counter/presentation/ios/core/router.dart' as ios_router;
import 'package:flutter_test/flutter_test.dart';

import '../android/helpers/helpers.dart' as android_helpers;
import '../ios/helpers/helpers.dart' as ios_helpers;
import 'helpers/helpers.dart';

void main() {
  late Platform platform;
  late AuthBloc mockAuthBloc;

  setUp(() {
    // Register dependencies
    platform = MockPlatform();
    getIt.registerSingleton<Platform>(platform);
    mockAuthBloc = MockAuthBloc();
    getIt.registerSingleton<AuthBloc>(mockAuthBloc);

    // Config default behaviour of dependencies
    when(() => platform.isAndroid).thenReturn(false);
    when(() => platform.isIOS).thenReturn(false);
    whenListen(
      mockAuthBloc,
      Stream.value(const AuthState.unauthenticated()),
      initialState: const AuthState.unauthenticated(),
    );
  });

  tearDown(() async {
    await getIt.reset();
  });

  group('GIVEN platform is android ', () {
    late android_router.Router router;

    setUp(() {
      // Platform is android
      when(() => platform.isAndroid).thenReturn(true);

      router = android_helpers.MockRouter();
      getIt.registerSingleton<android_router.Router>(router);

      // Config default behaviour of dependencies
      when(() => router.defaultRouteParser())
          .thenReturn(MockDefaultRouteParser());
      when(
        () => router.delegate(
          initialRoutes: any(named: 'initialRoutes'),
          navigatorObservers: any(named: 'navigatorObservers'),
        ),
      ).thenReturn(MockAutoRouterDelegate());
    });

    testWidgets(
      'THEN contains android App.',
      (tester) async {
        // Act
        const App underTest = App();
        await tester.pumpWidget(underTest);

        // Assert
        expect(find.byType(android_app.App), findsOneWidget);
      },
    );
  });

  group('GIVEN platform is ios ', () {
    late ios_router.Router router;

    setUp(() {
      // Platform is ios
      when(() => platform.isIOS).thenReturn(true);

      router = ios_helpers.MockRouter();
      getIt.registerSingleton<ios_router.Router>(router);

      // Config default behaviour of dependencies
      when(() => router.defaultRouteParser())
          .thenReturn(MockDefaultRouteParser());
      when(
        () => router.delegate(
          initialRoutes: any(named: 'initialRoutes'),
          navigatorObservers: any(named: 'navigatorObservers'),
        ),
      ).thenReturn(MockAutoRouterDelegate());
    });

    testWidgets(
      'THEN contains ios App.',
      (tester) async {
        // Act
        const App underTest = App();
        await tester.pumpWidget(underTest);

        // Assert
        expect(find.byType(ios_app.App), findsOneWidget);
      },
    );
  });

  group('GIVEN platform is not android or ios', () {
    testWidgets(
      'THEN throw PlatformNotSupportedError.',
      (tester) async {
        // Act
        const App underTest = App();
        await tester.pumpWidget(underTest);

        // Assert
        expect(tester.takeException(), isA<PlatformNotSupportedError>());
      },
    );
  });
}
