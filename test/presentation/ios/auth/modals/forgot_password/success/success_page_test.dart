import 'package:dart_counter/presentation/ios/auth/modals/forgot_password/success/success_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../../../../../flutter_test_config.dart';

void main() {
  group('#Golden#', () {
    testGoldens('ForgotPasswordSuccessPage should look correct on iPhones.',
        (tester) async {
      // Act
      const ForgotPasswordSuccessPage underTest = ForgotPasswordSuccessPage();
      final builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(devices: iPhones)
        ..addScenario(
          widget: cupertinoAppWrapper(underTest),
          name: 'ForgotPasswordSuccessPage',
        );
      await tester.pumpDeviceBuilder(builder);

      // Assert
      await screenMatchesGolden(tester, 'forgot_password_success_page_mobile');
    });
  });

  group('#Visual#', () {
    for (final phone in iPhones) {
      testWidgets(
        'Contains ForgotPasswordSuccessView on ${phone.name}.',
        (tester) async {
          // Arrange
          await tester.binding.setSurfaceSize(phone.size);

          // Act
          const ForgotPasswordSuccessPage underTest =
              ForgotPasswordSuccessPage();
          await tester.pumpWidget(cupertinoAppWrapper(underTest));

          // Assert
          expect(find.byType(ForgotPasswordSuccessView), findsOneWidget);
        },
      );
    }
  });
}
