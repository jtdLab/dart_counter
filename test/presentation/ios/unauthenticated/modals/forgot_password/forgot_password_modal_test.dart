void main() {} // TODO

/**
 * import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/unauthenticated/forgot_password/forgot_password_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/modals/forgot_password/forgot_password_modal.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../core/helpers/helpers.dart';
import '../../../helpers/helpers.dart';

void main() {
  group('#ForgotPasswordModal#', () {
    late Router router;
    late ForgotPasswordBloc forgotPasswordBloc;

    setUp(() async {
      router = MockRouter();

      /**
      *  when(() => router.routeData).thenReturn(
        RouteData(
          route: route,
          router: router,
          pendingChildren: pendingChildren,
        ),
      );
      */
      forgotPasswordBloc = MockForgotPasswordBloc();
      getIt.registerSingleton<ForgotPasswordBloc>(forgotPasswordBloc);
    });

    tearDown(() async {
      await getIt.reset();
    });

    for (final phone in iPhones) {
      group('#${phone.name}#', () {
        testWidgets(
          'Contains ForgotPasswordSuccessView.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);

            // Act
            const ForgotPasswordModal underTest = ForgotPasswordModal();
            await tester.pumpApp(
              MockRouterProvider(
                router: router,
                child: underTest,
              ),
            );

            // Assert
            expect(find.byType(AutoRouter), findsOneWidget);
          },
        );
      });
    }
  });
}

 */