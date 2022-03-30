import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/modals/forgot_password/success/success_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../../../../helpers/helpers.dart';

void main() {
  group('#ForgotPasswordSuccessPage#', () {
    group('#Golden#', () {
      testGoldens('ForgotPasswordSuccessPage should look correct on iPhones.',
          (tester) async {
        // Act
        const underTest = ForgotPasswordSuccessPage();
        final builder = DeviceBuilder()
          ..overrideDevicesForAllScenarios(devices: iPhones)
          ..addScenario(
            widget: appWrapper(underTest),
            name: 'ForgotPasswordSuccessPage',
          );
        await tester.pumpDeviceBuilder(builder);

        // Assert
        await screenMatchesGolden(
          tester,
          'forgot_password_success_page_mobile',
        );
      });
    });

    for (final phone in iPhones) {
      group('#${phone.name}#', () {
        testWidgets(
          'Contains ForgotPasswordSuccessView.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);

            // Act
            const underTest = ForgotPasswordSuccessPage();
            await tester.pumpApp(underTest);

            // Assert
            expect(find.byType(ForgotPasswordSuccessView), findsOneWidget);
          },
        );
      });
    }
  });
}
