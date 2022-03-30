import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/unauthenticated/forgot_password/forgot_password_bloc.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/domain/core/value_objects.dart';
import 'package:dart_counter/presentation/core/app_toast.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/modals/forgot_password/initial/initial_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../../../../../core/helpers/helpers.dart';
import '../../../../helpers/helpers.dart';

void main() {
  late ForgotPasswordBloc forgotPasswordBloc;

  setUp(() {
    forgotPasswordBloc = MockForgotPasswordBloc();
  });

  group('#ForgotPasswordInitialPage#', () {
    group('#Golden#', () {
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
        const underTest = ForgotPasswordInitialPage();
        final builder = DeviceBuilder()
          ..overrideDevicesForAllScenarios(devices: iPhones)
          ..addScenario(
            widget: appWrapper(
              BlocProvider(
                create: (context) => forgotPasswordBloc,
                child: underTest,
              ),
            ),
            name: 'ForgotPasswordInitialPage',
          );
        await tester.pumpDeviceBuilder(builder);

        // Assert
        await screenMatchesGolden(
            tester, 'forgot_password_initial_page_mobile');
      });
    });

    for (final phone in iPhones) {
      group('#${phone.name}#', () {
        testWidgets(
          'Renders ForgotPasswordInitialView.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);

            whenListenTo(
              forgotPasswordBloc,
              ForgotPasswordState.initial(
                email: EmailAddress.empty(),
                showErrorMessages: false,
              ),
            );

            // Act
            const underTest = ForgotPasswordInitialPage();
            await tester.pumpApp(
              BlocProvider(
                create: (context) => forgotPasswordBloc,
                child: underTest,
              ),
            );

            // Assert
            expect(find.byType(ForgotPasswordInitialView), findsOneWidget);
          },
        );

        testWidgets(
          'Calls replace with ForgotPasswordSuccessPageRoute when submit succeeds.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);
            final router = MockRouter();
            when(
              () => router.replace(const ForgotPasswordSuccessPageRoute()),
            ).thenAnswer((_) async => null);

            whenListen(
              forgotPasswordBloc,
              Stream.value(const ForgotPasswordState.submitSuccess()),
              initialState: const ForgotPasswordState.submitInProgress(),
            );

            // Act
            const underTest = ForgotPasswordInitialPage();
            await tester.pumpApp(
              MockRouterProvider(
                router: router,
                child: BlocProvider(
                  create: (context) => forgotPasswordBloc,
                  child: underTest,
                ),
              ),
            );

            // Assert
            verify(
              () => router.replace(const ForgotPasswordSuccessPageRoute()),
            ).called(1);
          },
        );

        group('GIVEN locale is en', () {
          const locale = Locale('en');

          tearDown(() async {
            await getIt.reset();
          });

          testWidgets(
            'Calls show toast when submit fails with invalid email.',
            (tester) async {
              // Arrange
              await tester.binding.setSurfaceSize(phone.size);
              final appToast = MockAppToast();
              getIt.registerSingleton<AppToast>(appToast);

              whenListen(
                forgotPasswordBloc,
                Stream.value(
                  const ForgotPasswordState.submitFailure(
                    authFailure: AuthFailure.invalidEmail(),
                  ),
                ),
                initialState: const ForgotPasswordState.submitInProgress(),
              );

              // Act
              const underTest = ForgotPasswordInitialPage();
              await tester.pumpApp(
                BlocProvider(
                  create: (context) => forgotPasswordBloc,
                  child: underTest,
                ),
                locale,
              );

              // Assert
              verify(() => appToast.show('INVALID EMAIL')).called(1);
            },
          );

          testWidgets(
            'Calls show toast when submit fails with other error.',
            (tester) async {
              // Arrange
              await tester.binding.setSurfaceSize(phone.size);
              final appToast = MockAppToast();
              getIt.registerSingleton<AppToast>(appToast);

              whenListen(
                forgotPasswordBloc,
                Stream.value(
                  const ForgotPasswordState.submitFailure(
                    authFailure: AuthFailure.serverError(),
                  ),
                ),
                initialState: const ForgotPasswordState.submitInProgress(),
              );

              // Act
              const underTest = ForgotPasswordInitialPage();
              await tester.pumpApp(
                BlocProvider(
                  create: (context) => forgotPasswordBloc,
                  child: underTest,
                ),
                locale,
              );

              // Assert
              verify(() => appToast.show('UNEXPECTED ERROR')).called(1);
            },
          );
        });

        group('GIVEN locale is de', () {
          const locale = Locale('de');

          tearDown(() async {
            await getIt.reset();
          });

          testWidgets(
            'Calls show toast when submit fails with invalid email.',
            (tester) async {
              // Arrange
              await tester.binding.setSurfaceSize(phone.size);
              final appToast = MockAppToast();
              getIt.registerSingleton<AppToast>(appToast);

              whenListen(
                forgotPasswordBloc,
                Stream.value(
                  const ForgotPasswordState.submitFailure(
                    authFailure: AuthFailure.invalidEmail(),
                  ),
                ),
                initialState: const ForgotPasswordState.submitInProgress(),
              );

              // Act
              const underTest = ForgotPasswordInitialPage();
              await tester.pumpApp(
                BlocProvider(
                  create: (context) => forgotPasswordBloc,
                  child: underTest,
                ),
                locale,
              );

              // Assert
              verify(() => appToast.show('EMAIL-ADRESSE UNGÜLTIG')).called(1);
            },
          );

          testWidgets(
            'Calls show toast when submit fails with other error.',
            (tester) async {
              // Arrange
              await tester.binding.setSurfaceSize(phone.size);
              final appToast = MockAppToast();
              getIt.registerSingleton<AppToast>(appToast);

              whenListen(
                forgotPasswordBloc,
                Stream.value(
                  const ForgotPasswordState.submitFailure(
                    authFailure: AuthFailure.serverError(),
                  ),
                ),
                initialState: const ForgotPasswordState.submitInProgress(),
              );

              // Act
              const underTest = ForgotPasswordInitialPage();
              await tester.pumpApp(
                BlocProvider(
                  create: (context) => forgotPasswordBloc,
                  child: underTest,
                ),
                locale,
              );

              // Assert
              verify(() => appToast.show('UNERWARTETER FEHLER')).called(1);
            },
          );
        });
      });
    }
  });
}
