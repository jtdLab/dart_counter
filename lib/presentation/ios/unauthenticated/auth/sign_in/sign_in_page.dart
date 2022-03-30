// CORE
import 'package:dart_counter/application/unauthenticated/sign_in/sign_in_bloc.dart';
// BLOCS
import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

part 'widgets.dart';

class SignInPage extends StatelessWidget implements AutoRouteWrapper {
  const SignInPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInBloc.getIt(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) => state.whenOrNull(
            authenticated: () =>
                context.router.replace(const AuthenticatedFlowRoute()),
          ),
        ),
        BlocListener<SignInBloc, SignInState>(
          listenWhen: (_, next) => next is SignInLoadFailure,
          listener: (context, state) => state.mapOrNull(
            loadFailure: (signInLoadFailure) {
              signInLoadFailure.failure.whenOrNull(
                // TODO show server error feels not perfect
                serverError: () => showToast(context.l10n.errorServer),
                invalidEmailAndPasswordCombination: () => showToast(
                  context.l10n.errorInvalidEmailAndPasswordCombination,
                ),
              );
            },
          ),
        ),
      ],
      child: const SignInView(),
    );
  }
}
