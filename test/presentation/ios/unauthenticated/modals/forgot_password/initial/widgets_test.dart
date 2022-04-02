import 'package:dart_counter/application/unauthenticated/forgot_password/forgot_password_bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/modals/forgot_password/initial/initial_page.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../../../../helpers/helpers.dart';

void main() {
  group('#ForgotPasswordInitialView#', () {
    late ForgotPasswordBloc forgotPasswordBloc;

    late ForgotPasswordInitialView underTest;

    setUp(() {
      // Init dependencies
      forgotPasswordBloc = MockForgotPasswordBloc();
      whenListenTo(
        forgotPasswordBloc,
        ForgotPasswordState.initial(
          email: EmailAddress.empty(),
          showErrorMessages: false,
        ),
      );

      // Init widget under test
      underTest = const ForgotPasswordInitialView();
    });

    Widget bootstrap() => BlocProvider.value(
          value: forgotPasswordBloc,
          child: underTest,
        );

    testGoldens(
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
          widget: appWrapper(
            bootstrap(),
          ),
          name: 'ForgotPasswordInitialView',
        );
      await tester.pumpDeviceBuilder(builder);

      // Assert
      await screenMatchesGolden(tester, 'forgot_password_initial_view_mobile');
    });

    for (final phone in iPhones) {
      group('#${phone.name}#', () {
        testWidgets(
          'Renders logo.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);

            // Act
            await tester.pumpApp(
              bootstrap(),
            );

            // Assert
            expect(
              find.byKey(ForgotPasswordInitialView.logoKey),
              findsOneWidget,
            );
          },
        );

        testWidgets(
          'Renders forgot password text.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);

            // Act
            await tester.pumpApp(
              bootstrap(),
            );

            // Assert
            expect(
              find.byKey(ForgotPasswordInitialView.forgotPasswordTextKey),
              findsOneWidget,
            );
          },
        );

        testWidgets(
          'Renders email text field.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);

            // Act
            await tester.pumpApp(
              bootstrap(),
            );

            // Assert
            expect(
              find.byKey(ForgotPasswordInitialView.emailTextFieldKey),
              findsOneWidget,
            );
          },
        );

        testWidgets(
          'Renders confirm button.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);

            // Act
            await tester.pumpApp(
              bootstrap(),
            );

            // Assert
            expect(
              find.byKey(ForgotPasswordInitialView.confirmButtonKey),
              findsOneWidget,
            );
          },
        );

        group('GIVEN locale is en', () {
          const locale = Locale('en');

          testWidgets(
            'THEN renders text "FORGOT PASSWORD?".',
            (tester) async {
              // Arrange
              await tester.binding.setSurfaceSize(phone.size);

              // Act
              await tester.pumpApp(
                bootstrap(),
                locale: locale,
              );

              // Assert
              expect(find.text('FORGOT PASSWORD?'), findsOneWidget);
            },
          );

          testWidgets(
            'THEN renders text "EMAIL ADDRESS".',
            (tester) async {
              // Arrange
              await tester.binding.setSurfaceSize(phone.size);

              // Act
              await tester.pumpApp(
                bootstrap(),
                locale: locale,
              );

              // Assert
              expect(find.text('EMAIL ADDRESS'), findsOneWidget);
            },
          );

          testWidgets(
            'THEN renders text "CONFIRM".',
            (tester) async {
              // Arrange
              await tester.binding.setSurfaceSize(phone.size);

              // Act
              await tester.pumpApp(
                bootstrap(),
                locale: locale,
              );

              // Assert
              expect(find.text('CONFIRM'), findsOneWidget);
            },
          );
        });

        group('GIVEN locale is de', () {
          const locale = Locale('de');

          testWidgets(
            'THEN renders text "PASSWORT VERGESSEN?".',
            (tester) async {
              // Arrange
              await tester.binding.setSurfaceSize(phone.size);

              // Act
              await tester.pumpApp(
                bootstrap(),
                locale: locale,
              );

              // Assert
              expect(find.text('PASSWORT VERGESSEN?'), findsOneWidget);
            },
          );

          testWidgets(
            'THEN renders text "E-MAIL".',
            (tester) async {
              // Arrange
              await tester.binding.setSurfaceSize(phone.size);

              // Act
              await tester.pumpApp(
                bootstrap(),
                locale: locale,
              );

              // Assert
              expect(find.text('E-MAIL'), findsOneWidget);
            },
          );

          testWidgets(
            'THEN renders text "BESTÄTIGEN".',
            (tester) async {
              // Arrange
              await tester.binding.setSurfaceSize(phone.size);

              // Act
              await tester.pumpApp(
                bootstrap(),
                locale: locale,
              );

              // Assert
              expect(find.text('BESTÄTIGEN'), findsOneWidget);
            },
          );
        });

        testWidgets(
          'Adds EmailChanged when new email is entered.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);
            const newEmail = 'a';

            // Act
            await tester.pumpApp(
              bootstrap(),
            );
            await tester.enterText(
              find.byKey(ForgotPasswordInitialView.emailTextFieldKey),
              newEmail,
            );

            // Assert
            verify(
              () => forgotPasswordBloc.add(
                const ForgotPasswordEvent.emailChanged(newEmail: newEmail),
              ),
            ).called(1);
          },
        );

        testWidgets(
          'Adds ConfirmPressed when confirm button tapped.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);

            // Act
            await tester.pumpApp(
              bootstrap(),
            );
            await tester.tap(
              find.byKey(ForgotPasswordInitialView.confirmButtonKey),
            );

            // Assert
            verify(
              () => forgotPasswordBloc.add(
                const ForgotPasswordEvent.confirmPressed(),
              ),
            ).called(1);
          },
        );
      });
    }
  });
}
