import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/modals/forgot_password/success/success_page.dart';

import '../../../../helpers/helpers.dart';

void main() {
  group('#ForgotPasswordSuccessView#', () {
    late Router router;

    setUp(() {
      // Init dependencies
      router = MockRouter();
    });

    // Wraps the widget under test with a testable environment
    Widget wrappedUnderTest({
      Locale? locale,
    }) {
      return appWrapper(
        routableWrapper(const ForgotPasswordSuccessView(), router),
        locale: locale,
      );
    }

    testGoldens('ForgotPasswordSuccessView should look correct on iPhones.',
        (tester) async {
      // Act
      final builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(devices: iPhones)
        ..addScenario(
          widget: wrappedUnderTest(),
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
          'Render logo.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);

            // Act
            await tester.pumpWidget(wrappedUnderTest());

            // Assert
            expect(
              find.byKey(ForgotPasswordSuccessView.logoKey),
              findsOneWidget,
            );
          },
        );

        testWidgets(
          'Render success email sent text.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);

            // Act
            await tester.pumpWidget(wrappedUnderTest());

            // Assert
            expect(
              find.byKey(ForgotPasswordSuccessView.emailSentTextKey),
              findsOneWidget,
            );
          },
        );

        testWidgets(
          'Render success icon.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);

            // Act
            await tester.pumpWidget(wrappedUnderTest());

            // Assert
            expect(
              find.byKey(ForgotPasswordSuccessView.successIconKey),
              findsOneWidget,
            );
          },
        );

        testWidgets(
          'Render go to sign in button.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);

            // Act
            await tester.pumpWidget(wrappedUnderTest());

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
            'THEN render text "EMAIL SENT!".',
            (tester) async {
              // Arrange
              await tester.binding.setSurfaceSize(phone.size);

              // Act
              await tester.pumpWidget(wrappedUnderTest(locale: locale));

              // Assert
              expect(find.text('EMAIL SENT!'), findsOneWidget);
            },
          );

          testWidgets(
            'THEN render text "SIGN IN".',
            (tester) async {
              // Arrange
              await tester.binding.setSurfaceSize(phone.size);

              // Act
              await tester.pumpWidget(wrappedUnderTest(locale: locale));

              // Assert
              expect(find.text('SIGN IN'), findsOneWidget);
            },
          );
        });

        group('GIVEN locale is de', () {
          const locale = Locale('de');

          testWidgets(
            'THEN render text "EMAIL GESENDET!".',
            (tester) async {
              // Arrange
              await tester.binding.setSurfaceSize(phone.size);

              // Act
              await tester.pumpWidget(wrappedUnderTest(locale: locale));

              // Assert
              expect(find.text('EMAIL GESENDET!'), findsOneWidget);
            },
          );

          testWidgets(
            'THEN render text "EINLOGGEN".',
            (tester) async {
              // Arrange
              await tester.binding.setSurfaceSize(phone.size);

              // Act
              await tester.pumpWidget(wrappedUnderTest(locale: locale));

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
            await tester.pumpWidget(wrappedUnderTest());
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
