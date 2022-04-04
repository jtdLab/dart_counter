import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/application/unauthenticated/sign_up/sign_up_bloc.dart';
import 'package:dart_counter/domain/auth/auth_failure.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/unauthenticated/auth/sign_up/sign_up_page.dart';

import '../../../helpers/helpers.dart';

void main() {
  group('#SignUpPage#', () {
    late Router router;
    late AppToast appToast;
    late AuthBloc authBloc;
    late SignUpBloc signUpBloc;

    setUp(() {
      // Init dependencies + mock default behaviour + register dependencies in DI-container
      router = MockRouter();
      appToast = MockAppToast();
      authBloc = MockAuthBloc();
      whenListenTo(authBloc, const AuthState.unauthenticated());
      signUpBloc = MockSignUpBloc();
      whenListenTo(signUpBloc, const SignUpState.loadInProgress());
      getIt.registerSingleton<SignUpBloc>(signUpBloc);
    });

    tearDown(() async {
      // Reset DI-container
      await getIt.reset();
    });

    // Wraps the widget under test with a testable environment.
    Widget wrappedUnderTest({Locale? locale}) {
      return appWrapper(
        routableWrapper(
          MultiProvider(
            providers: [
              Provider.value(value: appToast),
              BlocProvider.value(value: authBloc),
            ],
            child: const SignUpPage(),
          ),
          router,
        ),
        locale: locale,
      );
    }

    testWidgets(
      'Render SignUpView.',
      (tester) async {
        // Act
        await tester.pumpWidget(wrappedUnderTest());
        tester.takeException();

        // Assert
        expect(find.byType(SignUpView), findsOneWidget);
      },
    );

    testWidgets(
        'Inject sign up bloc that is registered inside DI-container '
        'into widget tree.', (tester) async {
      // Act
      await tester.pumpWidget(wrappedUnderTest());
      tester.takeException();

      // Assert
      final context = tester.element(find.byType(SignUpView));
      expect(context.read<SignUpBloc>(), signUpBloc);
    });

    testWidgets(
      'Calls replace with AuthenticatedFlow when authenticated.',
      (tester) async {
        // Arrange
        when(
          () => router.replace(const AuthenticatedFlowRoute()),
        ).thenAnswer((_) async => true);
        whenListenTo(authBloc, const AuthState.authenticated());

        // Act
        await tester.pumpWidget(wrappedUnderTest());
        tester.takeException();

        // Assert
        verify(
          () => router.replace(const AuthenticatedFlowRoute()),
        ).called(1);
      },
    );

    group('GIVEN locale is en', () {
      const locale = Locale('en');

      testWidgets(
        'Calls show toast when load fails with server error.',
        (tester) async {
          // Arrange
          whenListen(
            signUpBloc,
            Stream.value(
              const SignUpState.loadFailure(
                failure: AuthFailure.serverError(),
              ),
            ),
            initialState: const SignUpState.loadInProgress(),
          );

          // Act
          await tester.pumpWidget(wrappedUnderTest(locale: locale));
          tester.takeException();

          // Assert
          verify(() => appToast.show('SERVER ERROR')).called(1);
        },
      );

      testWidgets(
        'Calls show toast when submit fails with other error.',
        (tester) async {
          // Arrange
          whenListen(
            signUpBloc,
            Stream.value(
              const SignUpState.loadFailure(
                failure: AuthFailure.unexpected(),
              ),
            ),
            initialState: const SignUpState.loadInProgress(),
          );

          // Act
          await tester.pumpWidget(wrappedUnderTest(locale: locale));
          tester.takeException();

          // Assert
          verify(() => appToast.show('UNEXPECTED ERROR')).called(1);
        },
      );
    });

    group('GIVEN locale is de', () {
      const locale = Locale('de');

      testWidgets(
        'Calls show toast when load fails with server error.',
        (tester) async {
          // Arrange
          whenListen(
            signUpBloc,
            Stream.value(
              const SignUpState.loadFailure(
                failure: AuthFailure.serverError(),
              ),
            ),
            initialState: const SignUpState.loadInProgress(),
          );

          // Act
          await tester.pumpWidget(wrappedUnderTest(locale: locale));
          tester.takeException();

          // Assert
          verify(() => appToast.show('SERVER ERROR')).called(1);
        },
      );

      testWidgets(
        'Calls show toast when submit fails with other error.',
        (tester) async {
          // Arrange
          whenListen(
            signUpBloc,
            Stream.value(
              const SignUpState.loadFailure(
                failure: AuthFailure.unexpected(),
              ),
            ),
            initialState: const SignUpState.loadInProgress(),
          );

          // Act
          await tester.pumpWidget(wrappedUnderTest(locale: locale));
          tester.takeException();

          // Assert
          verify(() => appToast.show('UNERWARTETER FEHLER')).called(1);
        },
      );
    });
  });
}
