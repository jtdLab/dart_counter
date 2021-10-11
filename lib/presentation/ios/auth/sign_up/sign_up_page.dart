// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/core/auth/auth_bloc.dart';
import 'package:dart_counter/application/sign_up/sign_up_bloc.dart';

// LOCAL WIDGETS
part 'widgets.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignUpBloc>(),
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is Authenticated) {
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
                  child: const _SignUpWidget(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
