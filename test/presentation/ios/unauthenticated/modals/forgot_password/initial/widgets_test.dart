import 'package:dart_counter/application/unauthenticated/forgot_password/forgot_password_bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/modals/forgot_password/initial/initial_page.dart';

import '../../../../helpers/helpers.dart';

void main() {
  group('#ForgotPasswordInitialView#', () {
    late ForgotPasswordBloc forgotPasswordBloc;

    setUp(() {
      // Init dependencies + mock default behaviour
      forgotPasswordBloc = MockForgotPasswordBloc();
      whenListenTo(
        forgotPasswordBloc,
        ForgotPasswordState.initial(
          email: EmailAddress.empty(),
          showErrorMessages: false,
        ),
      );
    });

    // Bootstrap the widget under test and pump it using tester.
    Future<void> bootstrap(
      WidgetTester tester, {
      Locale? locale,
    }) async {
      await tester.pumpApp(
        BlocProvider.value(
          value: forgotPasswordBloc,
          child: const ForgotPasswordInitialView(),
        ),
        locale: locale,
      );
    }

    // TODO golden
    /*  testGoldens(
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
          widget: appWrapper(const ForgotPasswordInitialView()),
          name: 'ForgotPasswordInitialView',
        );
      await tester.pumpDeviceBuilder(builder);

      // Assert
      await screenMatchesGolden(tester, 'forgot_password_initial_view_mobile');
    });
 */

    for (final phone in iPhones) {
      group('#${phone.name}#', () {
        testWidgets(
          'Renders logo.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);

            // Act
            await bootstrap(tester);

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
            await bootstrap(tester);

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
            await bootstrap(tester);

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
            await bootstrap(tester);

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
              await bootstrap(tester, locale: locale);

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
              await bootstrap(tester, locale: locale);

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
              await bootstrap(tester, locale: locale);

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
              await bootstrap(tester, locale: locale);

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
              await bootstrap(tester, locale: locale);

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
              await bootstrap(tester, locale: locale);

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
            await bootstrap(tester);
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
            await bootstrap(tester);
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
