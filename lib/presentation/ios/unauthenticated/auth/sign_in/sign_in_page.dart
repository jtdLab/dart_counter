// CORE
import 'package:dart_counter/application/unauthenticated/sign_in/sign_in_bloc.dart';
// BLOCS
import 'package:dart_counter/application/shared/auth/auth_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

part 'widgets.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInBloc.getIt(),
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) => state.mapOrNull(
              authenticated: (_) => _onAuthenticated(context),
            ),
          ),
          BlocListener<SignInBloc, SignInState>(
            listenWhen: (_, current) => current is SignInLoadFailure,
            listener: (context, state) => state.mapOrNull(
              loadFailure: (failure) => _onLoadFailure(context, failure),
            ),
          ),
        ],
        child: const SignInView(),
      ),
    );
  }

  void _onAuthenticated(BuildContext context) {
    context.router.replace(const AuthenticatedFlowRoute());
  }

  void _onLoadFailure(BuildContext context, SignInLoadFailure failure) {
    failure.failure.maybeWhen(
      // TODO show server error feels not perfect
      serverError: () => context.showToast(
        context.l10n.errorServer.toUpperCase(),
      ),
      invalidEmailAndPasswordCombination: () => context.showToast(
        context.l10n.errorInvalidEmailAndPasswordCombination.toUpperCase(),
      ),
      // TODO display other errors better
      orElse: () => context.showToast(
        context.l10n.errorUnexpected.toUpperCase(),
      ),
    );
  }
}
