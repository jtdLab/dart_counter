import 'package:dart_counter/presentation/ios/unauthenticated/modals/forgot_password/success/success_page.dart';

import '../../../../helpers/helpers.dart';

void main() {
  group('#ForgotPasswordSuccessPage#', () {
    // Wraps the widget under test with a testable environment
    //
    // and injects dependencies when needed.
    Widget wrappedUnderTest() {
      return const ForgotPasswordSuccessPage();
    }

    testWidgets(
      'Renders ForgotPasswordSuccessView.',
      (tester) async {
        // Act
        await tester.pumpWidget(wrappedUnderTest());
        tester.takeException();

        // Assert
        expect(find.byType(ForgotPasswordSuccessView), findsOneWidget);
      },
    );
  });
}
