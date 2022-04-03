import 'package:dart_counter/application/unauthenticated/forgot_password/forgot_password_bloc.dart';
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

    testWidgets('Render AutoRouter.', (tester) async {
      // Act
      await tester.pumpWidget(wrappedUnderTest());

      // Assert
      expect(find.byType(AutoRouter), findsOneWidget);
    });
  });

  group('#ForgotPasswordModal.wrappedRoute#', () {
    // Wraps the widget under test with a testable environment.
    Widget wrappedUnderTest() {
      return Builder(
        builder: (context) => const ForgotPasswordModal().wrappedRoute(context),
      );
    }

    testWidgets(
        'Inject forgot password bloc that is registered inside DI-container '
        'into widget tree.', (tester) async {
      // Arrange
      final forgotPasswordBloc = MockForgotPasswordBloc();
      getIt.registerSingleton<ForgotPasswordBloc>(forgotPasswordBloc);

      // Act
      await tester.pumpWidget(wrappedUnderTest());
      tester.takeException();

      // Assert
      final context = tester.element(find.byType(ForgotPasswordModal));
      expect(context.read<ForgotPasswordBloc>(), forgotPasswordBloc);
    });

    tearDown(() async {
      await getIt.reset();
    });
  });
}
