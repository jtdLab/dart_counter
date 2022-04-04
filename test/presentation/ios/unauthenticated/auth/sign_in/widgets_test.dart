import 'package:dart_counter/application/unauthenticated/sign_in/sign_in_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/auth/sign_in/sign_in_page.dart';

import '../../../helpers/helpers.dart';

void main() {
  group('#SignInView#', () {
    late Router router;
    late SignInBloc signInBloc;

    setUp(() {
      // Init dependencies + mock default behaviour
      router = MockRouter();
      signInBloc = MockSignInBloc();
      // TODO
      //whenListenTo(signInBloc, SignInState.initial(email: null, password: null));
    });

    // Wraps the widget under test with a testable environment.
    Widget wrappedUnderTest({Locale? locale}) {
      return appWrapper(
        routableWrapper(
          Provider.value(
            value: signInBloc,
            child: const SignInView(),
          ),
          router,
        ),
        locale: locale,
      );
    }

    testWidgets(
      'Render logo.',
      (tester) async {
        // Act
        await tester.pumpWidget(wrappedUnderTest());
        tester.takeException();

        // Assert
        expect(find.byKey(SignInView.logoKey), findsOneWidget);
      },
    );
  });
}
