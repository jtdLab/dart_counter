import 'package:dart_counter/application/core/auth/auth_bloc.dart';
import 'package:dart_counter/injection.dart';

import 'package:dart_counter/application/sign_in/sign_in_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class SignInPage extends StatelessWidget {
  final PageController pageController;

  const SignInPage({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInBloc>(),
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is SignedIn) {
                context.router.replace(const MainFlowRoute());
              }
            },
          ),
          BlocListener<SignInBloc, SignInState>(
            listener: (context, state) {
              state.authFailure?.maybeWhen(
                serverError: () => showToast(LocaleKeys.errorServer.tr()),
                invalidEmailAndPasswordCombination: () => showToast(
                  LocaleKeys.errorInvalidEmailAndPasswordCombination.tr(),
                ),
                orElse: () {},
              );
            },
          ),
        ],
        child: AppPage(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SignInWidget(
            pageController: pageController,
          ),
        ),
      ),
    );
  }
}
