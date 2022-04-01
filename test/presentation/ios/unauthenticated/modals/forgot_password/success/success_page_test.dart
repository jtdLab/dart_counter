import 'package:dart_counter/presentation/ios/unauthenticated/modals/forgot_password/success/success_page.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../helpers/helpers.dart';

void main() {
  group('#ForgotPasswordSuccessPage#', () {
    late ForgotPasswordSuccessPage underTest;

    setUp(() {
      underTest = const ForgotPasswordSuccessPage();
    });

    testWidgets(
      'Renders ForgotPasswordSuccessView.',
      (tester) async {
        // Act
        await tester.pumpApp(underTest);
        tester.takeException();

        // Assert
        expect(find.byType(ForgotPasswordSuccessView), findsOneWidget);
      },
    );
  });
}
