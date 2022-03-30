import 'package:dart_counter/application/unauthenticated/forgot_password/forgot_password_bloc.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/modals/forgot_password/initial/initial_page.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../core/helpers/helpers.dart';
import '../../../../helpers/helpers.dart';

void main() {
  group('#ForgotPasswordInitialView#', () {
    late ForgotPasswordBloc forgotPasswordBloc;

    setUp(() {
      forgotPasswordBloc = MockForgotPasswordBloc();
      whenListenTo(
        forgotPasswordBloc,
        ForgotPasswordState.initial(
          email: EmailAddress.empty(),
          showErrorMessages: false,
        ),
      );
    });

    for (final phone in iPhones) {
      group('#${phone.name}#', () {
        testWidgets(
          'Renders logo.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);

            // Act
            const underTest = ForgotPasswordInitialView();
            await tester.pumpApp(
              BlocProvider.value(
                value: forgotPasswordBloc,
                child: underTest,
              ),
            );

            // Assert
            expect(
              find.byKey(ForgotPasswordInitialView.logoKey),
              findsOneWidget,
            );
          },
        );

        // TODO groupe locale tests?
        group('GIVEN locale is en', () {
          const locale = Locale('en');

          testWidgets(
            'THEN renders text "FORGOT PASSWORD?".',
            (tester) async {
              // Arrange
              await tester.binding.setSurfaceSize(phone.size);

              // Act
              const underTest = ForgotPasswordInitialView();
              await tester.pumpApp(
                BlocProvider.value(
                  value: forgotPasswordBloc,
                  child: underTest,
                ),
                locale,
              );

              // Assert
              expect(find.text('FORGOT PASSWORD?'), findsOneWidget);
            },
          );

          // TODO test other text of screen
          /**
           *   testWidgets(
            'THEN renders app text field with "EMAIL ADDRESS".',
            (tester) async {
              // Arrange
              await tester.binding.setSurfaceSize(phone.size);

              // Act
              const underTest = ForgotPasswordInitialView();
              await tester.pumpApp(
                BlocProvider.value(
                  value: forgotPasswordBloc,
                  child: underTest,
                ),
                locale,
              );

              // Assert
              final emailTextField = tester.widget(
                find.byKey(ForgotPasswordInitialView.emailTextFieldKey),
              ) as AppTextField;
              expect(emailTextField.placeholder, 'EMAIL ADDRESS');
            },
          );
           */
        });

        group('GIVEN locale is de', () {
          const locale = Locale('de');

          testWidgets(
            'THEN renders text "PASSWORT VERGESSEN?".',
            (tester) async {
              // Arrange
              await tester.binding.setSurfaceSize(phone.size);

              // Act
              const underTest = ForgotPasswordInitialView();
              await tester.pumpApp(
                BlocProvider.value(
                  value: forgotPasswordBloc,
                  child: underTest,
                ),
                locale,
              );

              // Assert
              expect(find.text('PASSWORT VERGESSEN?'), findsOneWidget);
            },
          );
          // TODO test other text of screen
          /**
           * testWidgets(
            'THEN renders app text field with "EMAIL ADRESSE".',
            (tester) async {
              // Arrange
              await tester.binding.setSurfaceSize(phone.size);

              // Act
              const underTest = ForgotPasswordInitialView();
              await tester.pumpApp(
                BlocProvider.value(
                  value: forgotPasswordBloc,
                  child: underTest,
                ),
                locale,
              );

              // Assert
              final emailTextField = tester.widget(
                find.byKey(ForgotPasswordInitialView.emailTextFieldKey),
              ) as AppTextField;
              expect(emailTextField.placeholder, 'EMAIL ADRESSE');
            },
          );
           */
        });

        testWidgets(
          'Adds EmailChanged when new email is entered.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);
            const newEmail = 'a';

            // Act
            const underTest = ForgotPasswordInitialView();
            await tester.pumpApp(
              BlocProvider.value(
                value: forgotPasswordBloc,
                child: underTest,
              ),
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
            const underTest = ForgotPasswordInitialView();
            await tester.pumpApp(
              BlocProvider.value(
                value: forgotPasswordBloc,
                child: underTest,
              ),
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
