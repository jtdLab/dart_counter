import 'package:dart_counter/presentation/ios/auth/modals/forgot_password/success/success_page.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:flutter_test/flutter_test.dart';

// TODO embed into working cuprtino app setup
Widget embedd(Widget widget) {
  return CupertinoApp(
    home: widget,
  );
}

void main() {
  group('#Visual#', () {
    /**
     * testWidgets(
      'Contains ForgotPasswordSuccessView.',
      (tester) async {
        // Arrange
        const ForgotPasswordSuccessPage underTest = ForgotPasswordSuccessPage();
        await tester.pumpWidget(embedd(underTest));

        // Assert

        expect(find.byType(ForgotPasswordSuccessView), findsOneWidget);
      },
    );
     */
  });
}
