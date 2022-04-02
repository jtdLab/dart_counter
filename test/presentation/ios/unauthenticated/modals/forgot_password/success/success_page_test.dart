import 'package:dart_counter/presentation/ios/unauthenticated/modals/forgot_password/success/success_page.dart';

import '../../../../helpers/helpers.dart';

void main() {
  group('#ForgotPasswordSuccessPage#', () {
    // Bootstrap the widget under test and pump it using tester.
    Future<void> bootstrap(WidgetTester tester) async {
      await tester.pumpWidget(const ForgotPasswordSuccessPage());
    }

    testWidgets(
      'Renders ForgotPasswordSuccessView.',
      (tester) async {
        // Act
        await bootstrap(tester);
        tester.takeException();

        // Assert
        expect(find.byType(ForgotPasswordSuccessView), findsOneWidget);
      },
    );
  });
}
