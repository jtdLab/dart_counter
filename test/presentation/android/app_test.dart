import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/presentation/android/app.dart';
import 'package:dart_counter/presentation/android/core/core.dart';

import '../core/helpers/helpers.dart';

void main() {
  group('#App#', () {
    late Router router;
    late AuthBloc authBloc;

    setUp(() {
      // Init dependencies + mock default behaviour
      router = Router();
      authBloc = MockAuthBloc();
      whenListenTo(authBloc, const AuthState.unauthenticated());
    });

    // Bootstrap the widget under test and pump it using tester.
    Future<void> bootstrap(WidgetTester tester) async {
      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ListenableProvider.value(value: router),
            BlocProvider.value(value: authBloc),
          ],
          child: const App(),
        ),
      );
    }

    // TODO test that material app is has correct params

    testWidgets('Render MaterialApp.', (tester) async {
      // Act
      await bootstrap(tester);

      // Assert
      expect(find.byType(MaterialApp), findsOneWidget);
    });
  });
}
