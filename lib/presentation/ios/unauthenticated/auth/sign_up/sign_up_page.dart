// CORE
import 'package:dart_counter/application/unauthenticated/sign_up/sign_up_bloc.dart';
// BLOCS
import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

part 'widgets.dart';

class SignUpPage extends StatelessWidget implements AutoRouteWrapper {
  const SignUpPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpBloc.getIt(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.whenOrNull(
              authenticated: () =>
                  context.router.replace(const AuthenticatedFlowRoute()),
            );
          },
        ),
        BlocListener<SignUpBloc, SignUpState>(
          listenWhen: (_, next) => next is SignUpLoadFailure,
          listener: (context, state) {
            state.mapOrNull(
              loadFailure: (signInLoadFailure) {
                signInLoadFailure.failure.whenOrNull(
                  serverError: () => showToast(context.l10n.errorServer),
                );
              },
            );
          },
        ),
      ],
      child: const SignUpView(),
    );
  }
}
