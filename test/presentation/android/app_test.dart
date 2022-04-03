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

    // Wraps the widget under test with a testable environment
    Widget wrappedUnderTest() {
      return MultiProvider(
        providers: [
          ListenableProvider.value(value: router),
          BlocProvider.value(value: authBloc),
        ],
        child: const App(),
      );
    }

    // TODO test that material app is has correct params

    testWidgets('Render MaterialApp.', (tester) async {
      // Act
      await tester.pumpWidget(wrappedUnderTest());

      // Assert
      expect(find.byType(MaterialApp), findsOneWidget);
    });
  });
}
