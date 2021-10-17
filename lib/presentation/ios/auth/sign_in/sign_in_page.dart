// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/core/auth/auth_bloc.dart';
import 'package:dart_counter/application/sign_in/sign_in_bloc.dart';

// MODALS
import 'modals/forgot_password/forgot_password_modal.dart';

// LOCAL WIDGETS
part 'widgets.dart';

// TODO doc
class SignInPage extends StatelessWidget {
  const SignInPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInBloc>(),
      child: MultiBlocListener(
        listeners: [
          BlocListener<SignInBloc, SignInState>(
            listener: (context, state) {
              if (state.isSignedIn) {
                context.router.replace(const MainFlowRoute());
                return;
              }

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
                  child: const _SignInWidget(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
