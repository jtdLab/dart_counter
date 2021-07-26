import 'package:dart_counter/application/core/auth/auth_bloc.dart';
import 'package:dart_counter/application/sign_up/sign_up_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

// TODO fix bug on textfocus
class SignUpPage extends StatelessWidget {
  // TODO provide it and dont pass it via constructor ?
  final PageController pageController;

  const SignUpPage({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignUpBloc>(),
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is SignedIn) {
                context.router.replace(const MainFlowRoute());
              }
            },
          ),
          BlocListener<SignUpBloc, SignUpState>(
            listener: (context, state) {
              state.authFailure?.maybeWhen(
                serverError: () => showToast(LocaleKeys.errorServer.tr()),
                orElse: () {},
              );
            },
          ),
        ],
        child: AppPage(
          onTap: () => FocusScope.of(context).unfocus(),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final bottomInsets = MediaQuery.of(context).viewInsets.bottom;
              return SingleChildScrollView(
                physics: bottomInsets == 0
                    ? const NeverScrollableScrollPhysics()
                    : null,
                child: ConstrainedBox(
                  constraints: constraints.copyWith(
                    maxHeight: constraints.maxHeight + bottomInsets,
                  ),
                  child: SignUpWidget(
                    pageController: pageController,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
