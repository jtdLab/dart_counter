import 'package:bloc_test/bloc_test.dart';
import 'package:dart_counter/application/unauthenticated/forgot_password/forgot_password_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/modals/forgot_password/forgot_password_modal.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/helpers.dart';

class MockForgotPasswordBloc
    extends MockBloc<ForgotPasswordEvent, ForgotPasswordState>
    implements ForgotPasswordBloc {}

void main() {
  late ForgotPasswordBloc mockForgotPasswordBloc;

  setUp(() async {
    mockForgotPasswordBloc = MockForgotPasswordBloc();
    await getIt.reset();
    getIt.registerFactory<ForgotPasswordBloc>(() => mockForgotPasswordBloc);
  });

  group('#Visual#', () {
    for (final phone in iPhones) {
      group('#${phone.name}#', () {
        testWidgets(
          'Contains ForgotPasswordSuccessView.',
          (tester) async {
            // Arrange
            await tester.binding.setSurfaceSize(phone.size);

            // Act
            const ForgotPasswordModal underTest = ForgotPasswordModal();
            await tester.pumpApp(underTest);

            // Assert
            expect(find.byType(AutoRouter), findsOneWidget);
          },
        );
      });
    }
  });
}
