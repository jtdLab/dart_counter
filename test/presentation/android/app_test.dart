import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/presentation/android/app.dart';
import 'package:dart_counter/presentation/android/core/core.dart';
import 'package:flutter_test/flutter_test.dart';

import '../core/helpers/helpers.dart';

void main() {
  group('#App#', () {
    late Router router;
    late AuthBloc authBloc;

    late App underTest;

    setUp(() {
      // Init dependencies
      router = Router();
      authBloc = MockAuthBloc();
      whenListenTo(authBloc, const AuthState.unauthenticated());

      // Init widget under test
      underTest = const App();
    });

    Widget bootstrap() {
      return MultiProvider(
        providers: [
          ListenableProvider.value(value: router),
          BlocProvider.value(value: authBloc),
        ],
        child: underTest,
      );
    }

    // TODO test that material app is has correct params

    testWidgets('Render MaterialApp.', (tester) async {
      // Act
      await tester.pumpWidget(bootstrap());

      // Assert
      expect(find.byType(MaterialApp), findsOneWidget);
    });
  });
}
