import 'package:dart_counter/application/unauthenticated/sign_in/sign_in_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/auth/sign_in/sign_in_page.dart';

import '../../../helpers/helpers.dart';

void main() {
  group('#SignInView#', () {
    late Router router;
    late SignInBloc signInBloc;

    setUp(() {
      // Init dependencies + mock default behaviour
      router = MockRouter();
      signInBloc = MockSignInBloc();
      whenListenTo(signInBloc, SignInState.empty());
    });

    // Wraps the widget under test with a testable environment.
    Widget wrappedUnderTest({Locale? locale}) {
      return appWrapper(
        routableWrapper(
          Provider.value(
            value: signInBloc,
            child: const SignInView(),
          ),
          router,
        ),
        locale: locale,
      );
    }

    // TODO golden
    /* testGoldens(
        'GIVEN empty email '
        'GIVEN showErrorMessages is false '
        'THEN ForgotPasswordInitialPage should look correct on iPhones.',
        (tester) async {
      // Arrange
      final email = EmailAddress.empty();
      const showErrorMessages = false;

      whenListenTo(
        forgotPasswordBloc,
        ForgotPasswordState.initial(
          email: email,
          showErrorMessages: showErrorMessages,
        ),
      );

      // Act
      final builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(devices: iPhones)
        ..addScenario(
          widget: wrappedUnderTest(),
          name: 'ForgotPasswordInitialView',
        );
      await tester.pumpDeviceBuilder(builder);

      // Assert
      await screenMatchesGolden(tester, 'forgot_password_initial_view_mobile');
    });
 */

    testWidgets(
      'Render logo.',
      (tester) async {
        // Act
        await tester.pumpWidget(wrappedUnderTest());
        tester.takeException();

        // Assert
        expect(find.byKey(SignInView.logoKey), findsOneWidget);
      },
    );
  });
}
