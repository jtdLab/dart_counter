import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/unauthenticated_flow.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../core/helpers/helpers.dart';
import '../helpers/helpers.dart';

void main() {
  group('#UnauthenticatedFlow#', () {
    late UnauthenticatedFlow underTest;

    setUp(() {
      // Init widget under test
      underTest = const UnauthenticatedFlow();
    });

    Widget bootstrap() => routableWrapper(underTest, MockRouter());

    testWidgets('Renders AutoRouter.', (tester) async {
      // Act
      await tester.pumpWidget(bootstrap());

      // Assert
      expect(find.byType(AutoRouter), findsOneWidget);
    });
  });
}
