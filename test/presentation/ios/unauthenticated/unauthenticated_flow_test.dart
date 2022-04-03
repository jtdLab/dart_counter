import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/unauthenticated_flow.dart';

import '../helpers/helpers.dart';

void main() {
  group('#UnauthenticatedFlow#', () {
    // Wraps the widget under test with a testable environment
    Widget wrappedUnderTest() {
      return routableWrapper(const UnauthenticatedFlow(), MockRouter());
    }

    testWidgets('Render AutoRouter.', (tester) async {
      // Act
      await tester.pumpWidget(wrappedUnderTest());

      // Assert
      expect(find.byType(AutoRouter), findsOneWidget);
    });
  });
}
