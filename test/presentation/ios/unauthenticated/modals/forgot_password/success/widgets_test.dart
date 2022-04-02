import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/modals/forgot_password/success/success_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../../../../helpers/helpers.dart';

void main() {
  group('#ForgotPasswordSuccessView#', () {
    late Router router;

    late ForgotPasswordSuccessView underTest;

    setUp(() {
      // Init dependencies
      router = MockRouter();

      // Init widget under test
      underTest = const ForgotPasswordSuccessView();
    });

    Widget bootstrap() => Container(); // TODO

    testGoldens('ForgotPasswordSuccessView should look correct on iPhones.',
        (tester) async {
      // Act
      final builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(devices: iPhones)
        ..addScenario(
          widget: appWrapper(underTest),
          name: 'ForgotPasswordSuccessView',
        );
      await tester.pumpDeviceBuilder(builder);

      // Assert
      await screenMatchesGolden(
        tester,
        'forgot_password_success_view_mobile',
      );
    });

    for (final phone in iPhones) {
      group('#${phone.name}#', () {
        testWidgets(
          'Renders logo.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);

            // Act
            await tester.pumpApp(underTest);

            // Assert
            expect(
              find.byKey(ForgotPasswordSuccessView.logoKey),
              findsOneWidget,
            );
          },
        );

        testWidgets(
          'Renders success email sent text.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);

            // Act
            await tester.pumpApp(underTest);

            // Assert
            expect(
              find.byKey(ForgotPasswordSuccessView.emailSentTextKey),
              findsOneWidget,
            );
          },
        );

        testWidgets(
          'Renders success icon.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);

            // Act
            await tester.pumpApp(underTest);

            // Assert
            expect(
              find.byKey(ForgotPasswordSuccessView.successIconKey),
              findsOneWidget,
            );
          },
        );

        testWidgets(
          'Renders go to sign in button.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);

            // Act
            await tester.pumpApp(underTest);

            // Assert
            expect(
              find.byKey(ForgotPasswordSuccessView.goToSignInButtonKey),
              findsOneWidget,
            );
          },
        );

        group('GIVEN locale is en', () {
          const locale = Locale('en');

          testWidgets(
            'THEN renders text "EMAIL SENT!".',
            (tester) async {
              // Arrange
              await tester.binding.setSurfaceSize(phone.size);

              // Act
              await tester.pumpApp(underTest, locale: locale);

              // Assert
              expect(find.text('EMAIL SENT!'), findsOneWidget);
            },
          );

          testWidgets(
            'THEN renders text "SIGN IN".',
            (tester) async {
              // Arrange
              await tester.binding.setSurfaceSize(phone.size);

              // Act
              await tester.pumpApp(underTest, locale: locale);

              // Assert
              expect(find.text('SIGN IN'), findsOneWidget);
            },
          );
        });

        group('GIVEN locale is de', () {
          const locale = Locale('de');

          testWidgets(
            'THEN renders text "EMAIL GESENDET!".',
            (tester) async {
              // Arrange
              await tester.binding.setSurfaceSize(phone.size);

              // Act
              await tester.pumpApp(underTest, locale: locale);

              // Assert
              expect(find.text('EMAIL GESENDET!'), findsOneWidget);
            },
          );

          testWidgets(
            'THEN renders text "EINLOGGEN".',
            (tester) async {
              // Arrange
              await tester.binding.setSurfaceSize(phone.size);

              // Act
              await tester.pumpApp(underTest, locale: locale);

              // Assert
              expect(find.text('EINLOGGEN'), findsOneWidget);
            },
          );
        });

        testWidgets(
          'Calls pop when go to sign in button is tapped.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);
            when(() => router.pop()).thenAnswer((_) async => true);

            // Act
            await tester.pumpApp(
              routableWrapper(underTest, router),
            );
            await tester.tap(
              find.byKey(ForgotPasswordSuccessView.goToSignInButtonKey),
            );

            // Assert
            verify(() => router.pop()).called(1);
          },
        );
      });
    }
  });
}
