import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/modals/forgot_password/forgot_password_modal.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../core/helpers/helpers.dart';

void main() {
  group('#ForgotPasswordModal#', () {
    late ForgotPasswordModal underTest;

    setUp(() {
      underTest = const ForgotPasswordModal();
    });

    Widget bootstrap() => routableWrapper(underTest, MockRouter());

    // TODO test wrapped route

    testWidgets('Renders AutoRouter.', (tester) async {
      // Act
      await tester.pumpWidget(bootstrap());

      // Assert
      expect(find.byType(AutoRouter), findsOneWidget);
    });
  });
}
