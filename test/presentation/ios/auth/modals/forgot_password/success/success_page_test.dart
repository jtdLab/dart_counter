import 'package:dart_counter/presentation/ios/auth/modals/forgot_password/success/success_page.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:flutter_test/flutter_test.dart';

// TODO embed into working cuprtino app setup
Widget embedd(Widget widget) {
  return CupertinoApp(
    home: Localizations(
      delegates: AppLocalizations.localizationsDelegates,
      locale: AppLocalizations.supportedLocales.first,
      child: widget,
    ),
  );
}

void main() {
  group('#Visual#', () {
    testWidgets(
      'Contains ForgotPasswordSuccessView.',
      (tester) async {
        // Arrange
        tester.binding.window.physicalSizeTestValue = const Size(414, 896);

        const ForgotPasswordSuccessPage underTest = ForgotPasswordSuccessPage();
        await tester.pumpWidget(embedd(underTest));

        // Assert
        expect(find.byType(ForgotPasswordSuccessView), findsOneWidget);
      },
    );
  });
}
