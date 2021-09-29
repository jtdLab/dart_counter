// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/core/auth/auth_bloc.dart';
import 'package:dart_counter/application/sign_in/sign_in_bloc.dart';

// MODALS
import 'modals/forgot_password/forgot_password_modal.dart';

// SHARED WIDGETS
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_link_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_primary_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_text_field/app_text_field.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/logo_displayer.dart';

// LOCAL WIDGETS
part 'widgets.dart';

// TODO doc
class SignInPage extends StatelessWidget {
  // TODO provide it and dont pass it via constructor ?
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
              if (state is Authenticated) {
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
                  child: _SignInWidget(
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
