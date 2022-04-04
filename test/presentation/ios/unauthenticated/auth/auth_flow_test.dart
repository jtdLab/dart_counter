import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/application/unauthenticated/sign_in/sign_in_bloc.dart';
import 'package:dart_counter/application/unauthenticated/sign_up/sign_up_bloc.dart';
import 'package:dart_counter/presentation/core/page_view_page_route.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/auth/auth_flow.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/auth/sign_in/sign_in_page.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/auth/sign_up/sign_up_page.dart';

import '../../helpers/helpers.dart';

void main() {
  group('#AuthFlow#', () {
    late AutoRouteObserver observer;

    setUp(() {
      // Init dependencies
      observer = MockObserver();
    });

    tearDown(() async {
      // Reset DI-container
      await getIt.reset();
    });

    // Wraps the widget under test with a testable environment.
    Widget wrappedUnderTest() {
      final AuthBloc authBloc = MockAuthBloc();
      whenListenTo(authBloc, const AuthState.unauthenticated());

      final SignInBloc signInBloc = MockSignInBloc();
      whenListenTo(signInBloc, const SignInState.loadInProgress());
      getIt.registerSingleton<SignInBloc>(signInBloc);

      final SignUpBloc signUpBloc = MockSignUpBloc();
      whenListenTo(signUpBloc, const SignUpState.loadInProgress());
      getIt.registerSingleton<SignUpBloc>(signUpBloc);

      return appWrapper(
        routableWrapper(
          MultiBlocProvider(
            providers: [
              BlocProvider.value(value: authBloc),
              BlocProvider.value(value: signInBloc),
              BlocProvider.value(value: signUpBloc),
            ],
            child: const AuthFlow(),
          ),
          MockRouter(),
          observer,
        ),
      );
    }

    testWidgets('Render PageView.', (tester) async {
      // Act
      await tester.pumpWidget(wrappedUnderTest());
      tester.takeException();

      // Assert
      expect(find.byKey(AuthFlow.pageViewKey), findsOneWidget);
    });

    testWidgets('Render SignInPage.', (tester) async {
      // Act
      await tester.pumpWidget(wrappedUnderTest());
      tester.takeException();

      // Assert
      expect(find.byType(SignInPage), findsOneWidget);
    });

    testWidgets(
        'Inject page controller that is owned by the page view into widget tree.',
        (tester) async {
      // Act
      await tester.pumpWidget(wrappedUnderTest());
      tester.takeException();

      // Assert
      final pageView = tester.widget<PageView>(find.byType(PageView));
      final context = tester.element(find.byType(PageView));
      expect(context.read<PageController>(), pageView.controller);
    });

    testWidgets('Notify observer about did push SignInPage.', (tester) async {
      // Act
      await tester.pumpWidget(wrappedUnderTest());
      tester.takeException();

      // Assert
      verify(
        () => observer.didPush(PageViewRoute<SignInPage>(), null),
      ).called(1);
    });

    testWidgets(
        'GIVEN page view shows SignInPage '
        'WHEN user drags left '
        'THEN notify observer about did replace SignInPage with SignUpPage.',
        (tester) async {
      // Act
      await tester.pumpWidget(wrappedUnderTest());
      tester.takeException();
      await tester.dragUntilVisible(
        find.byType(SignUpView),
        find.byKey(AuthFlow.pageViewKey),
        const Offset(-250, 0),
      );
      tester.takeException();

      // Assert
      verify(
        () => observer.didReplace(
          oldRoute: PageViewRoute<SignInPage>(),
          newRoute: PageViewRoute<SignUpPage>(),
        ),
      ).called(1);
    });

    testWidgets(
        'GIVEN page view shows SignUpPage '
        'WHEN user drags right '
        'THEN notify observer about did replace SignUpPage with SignInPage.',
        (tester) async {
      // Arrange + Act
      await tester.pumpWidget(wrappedUnderTest());
      final pageView = tester.widget<PageView>(find.byType(PageView));
      pageView.controller.jumpToPage(1);

      await tester.dragUntilVisible(
        find.byType(SignInView),
        find.byKey(AuthFlow.pageViewKey),
        const Offset(250, 0),
      );
      tester.takeException();

      // Assert
      verify(
        () => observer.didReplace(
          oldRoute: PageViewRoute<SignUpPage>(),
          newRoute: PageViewRoute<SignInPage>(),
        ),
      ).called(1);
    });
  });
}
