// CORE
import 'package:dart_counter/application/unauthenticated/sign_up/sign_up_bloc.dart';
// BLOCS
import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

part 'widgets.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpBloc.getIt(),
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) => state.mapOrNull(
              authenticated: (_) => _onAuthenticated(context),
            ),
          ),
          BlocListener<SignUpBloc, SignUpState>(
            listenWhen: (_, current) => current is SignUpLoadFailure,
            listener: (context, state) => state.mapOrNull(
              loadFailure: (failure) => _onLoadFailure(context, failure),
            ),
          ),
        ],
        child: const SignUpView(),
      ),
    );
  }

  void _onAuthenticated(BuildContext context) {
    context.router.replace(const AuthenticatedFlowRoute());
  }

  void _onLoadFailure(BuildContext context, SignUpLoadFailure failure) {
    failure.failure.maybeWhen(
      // TODO show server error feels not perfect
      serverError: () =>
          context.showToast(context.l10n.errorServer.toUpperCase()),
      // TODO display other errors better
      orElse: () => context.showToast(
        context.l10n.errorUnexpected.toUpperCase(),
      ),
    );
  }
}
