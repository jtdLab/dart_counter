import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/modals/forgot_password/forgot_password_modal.dart';

import '../../../helpers/helpers.dart';

void main() {
  group('#ForgotPasswordModal#', () {
    // Wraps the widget under test with a testable environment
    //
    // and injects dependencies when needed.
    Widget wrappedUnderTest() {
      return routableWrapper(const ForgotPasswordModal(), MockRouter());
    }

    // TODO test wrapped route

    testWidgets('Renders AutoRouter.', (tester) async {
      // Act
      await tester.pumpWidget(wrappedUnderTest());

      // Assert
      expect(find.byType(AutoRouter), findsOneWidget);
    });
  });
}
