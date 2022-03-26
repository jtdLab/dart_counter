import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/unauthenticated/forgot_password/forgot_password_bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/presentation/core/core.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/modals/forgot_password/initial/initial_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../../../../flutter_test_config.dart';
import '../../../../helpers/helpers.dart';

class MockForgotPasswordBloc
    extends MockBloc<ForgotPasswordEvent, ForgotPasswordState>
    implements ForgotPasswordBloc {}

void main() {
  late ForgotPasswordBloc mockForgotPasswordBloc;

  setUp(() {
    mockForgotPasswordBloc = MockForgotPasswordBloc();
  });

  group('#Golden#', () {
    testGoldens(
        'GIVEN empty email '
        'GIVEN showErrorMessages is false '
        'THEN ForgotPasswordInitialPage should look correct on iPhones.',
        (tester) async {
      // Arrange
      final email = EmailAddress.empty();
      const showErrorMessages = false;
      final state = ForgotPasswordState.initial(
        email: email,
        showErrorMessages: showErrorMessages,
      );
      whenListen(
        mockForgotPasswordBloc,
        Stream.value(state),
        initialState: state,
      );

      // Act
      const ForgotPasswordInitialPage underTest = ForgotPasswordInitialPage();
      final builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(devices: iPhones)
        ..addScenario(
          widget: cupertinoAppWrapper(
            BlocProvider(
              create: (context) => mockForgotPasswordBloc,
              child: underTest,
            ),
          ),
          name: 'ForgotPasswordInitialPage',
        );
      await tester.pumpDeviceBuilder(builder);

      // Assert
      await screenMatchesGolden(tester, 'forgot_password_initial_page_mobile');
    });
  });
  group('#Visual#', () {
    for (final phone in iPhones) {
      group('#${phone.name}#', () {
        testWidgets(
          'Contains ForgotPasswordInitialView.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);

            final email = EmailAddress.empty();
            const showErrorMessages = false;
            final state = ForgotPasswordState.initial(
              email: email,
              showErrorMessages: showErrorMessages,
            );
            whenListen(
              mockForgotPasswordBloc,
              Stream.value(state),
              initialState: state,
            );

            // Act
            const ForgotPasswordInitialPage underTest =
                ForgotPasswordInitialPage();
            await tester.pumpApp(underTest);
            await tester.pumpWidget(
              BlocProvider(
                create: (context) => mockForgotPasswordBloc,
                child: underTest,
              ),
            );

            // Assert
            expect(find.byType(ForgotPasswordInitialView), findsOneWidget);
          },
        );
      });
    }
  });
}
