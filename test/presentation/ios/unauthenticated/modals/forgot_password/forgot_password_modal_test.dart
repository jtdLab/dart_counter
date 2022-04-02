import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/modals/forgot_password/forgot_password_modal.dart';

import '../../../helpers/helpers.dart';

void main() {
  group('#ForgotPasswordModal#', () {
    // Bootstrap the widget under test and pump it using tester.
    Future<void> bootstrap(WidgetTester tester) async {
      await tester.pumpWidget(
        routableWrapper(const ForgotPasswordModal(), MockRouter()),
      );
    }

    // TODO test wrapped route

    testWidgets('Renders AutoRouter.', (tester) async {
      // Act
      await bootstrap(tester);

      // Assert
      expect(find.byType(AutoRouter), findsOneWidget);
    });
  });
}
