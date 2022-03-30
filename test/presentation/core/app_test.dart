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

import 'helpers/helpers.dart';

void main() {
  group('#App#', () {
    late Platform platform;

    setUp(() {
      // Register dependencies
      platform = MockPlatform();
      getIt.registerSingleton<Platform>(platform);

      // Config default behaviour of dependencies
      when(() => platform.isAndroid).thenReturn(false);
      when(() => platform.isIOS).thenReturn(false);
    });

    tearDown(() async {
      await getIt.reset();
    });

    group('GIVEN platform is android', () {
      late AuthBloc authBloc;
      late android_router.Router router;

      setUp(() {
        // Platform is android
        when(() => platform.isAndroid).thenReturn(true);

        authBloc = MockAuthBloc();
        getIt.registerSingleton<AuthBloc>(authBloc);
        whenListenTo(authBloc, const AuthState.unauthenticated());

        router = android_router.Router();
        getIt.registerSingleton<android_router.Router>(router);
      });

      testWidgets(
        'THEN contains android App.',
        (tester) async {
          // Act
          const underTest = App();
          await tester.pumpWidget(underTest);

          // Assert
          expect(find.byType(android_app.App), findsOneWidget);
        },
      );
    });

    group('GIVEN platform is ios', () {
      late AuthBloc authBloc;
      late ios_router.Router router;

      setUp(() {
        // Platform is ios
        when(() => platform.isIOS).thenReturn(true);

        authBloc = MockAuthBloc();
        getIt.registerSingleton<AuthBloc>(authBloc);
        whenListenTo(authBloc, const AuthState.unauthenticated());

        router = ios_router.Router();
        getIt.registerSingleton<ios_router.Router>(router);
      });

      testWidgets(
        'THEN contains ios App.',
        (tester) async {
          // Act
          const underTest = App();
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
          const underTest = App();
          await tester.pumpWidget(underTest);

          // Assert
          expect(tester.takeException(), isA<PlatformNotSupportedError>());
        },
      );
    });
  });
}
