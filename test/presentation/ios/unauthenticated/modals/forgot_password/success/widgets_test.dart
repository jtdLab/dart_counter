import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/modals/forgot_password/success/success_page.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../core/helpers/helpers.dart';
import '../../../../helpers/helpers.dart';

void main() {
  group('#ForgotPasswordSuccessView#', () {
    late Router router;

    setUp(() {
      router = MockRouter();
      when(() => router.pop()).thenAnswer((_) async => true);
    });

    for (final phone in iPhones) {
      group('#${phone.name}#', () {
        testWidgets(
          'Calls pop when go to sign in button is tapped.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);

            // Act
            const underTest = ForgotPasswordSuccessView();
            await tester.pumpApp(
              MockRouterProvider(router: router, child: underTest),
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
