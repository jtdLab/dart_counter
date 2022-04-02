import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/unauthenticated_flow.dart';

import '../helpers/helpers.dart';

void main() {
  group('#UnauthenticatedFlow#', () {
    // Bootstrap the widget under test and pump it using tester.
    Future<void> bootstrap(WidgetTester tester) async {
      await tester.pumpWidget(
        routableWrapper(const UnauthenticatedFlow(), MockRouter()),
      );
    }

    testWidgets('Renders AutoRouter.', (tester) async {
      // Act
      await bootstrap(tester);

      // Assert
      expect(find.byType(AutoRouter), findsOneWidget);
    });
  });
}
