// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/auth/forgot_password/forgot_password_bloc.dart';

// WIDGETS
part 'widgets.dart';

class ForgotPasswordInitialPage extends StatelessWidget {
  const ForgotPasswordInitialPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
      listenWhen: (_, newState) =>
          newState is ForgotPasswordSubmitSuccess ||
          newState is ForgotPasswordSubmitFailure,
      listener: (context, state) => state.mapOrNull(
        submitSuccess: (_) =>
            context.router.replace(const ForgotPasswordSuccessPageRoute()),
        submitFailure: (submitFailure) => submitFailure.authFailure.maybeWhen(
          invalidEmail: () => showToast(
            LocaleKeys.errorInvalidEmailAddress.tr().toUpperCase(),
          ),
          // TODO display other errors better
          orElse: () => showToast(
            'AutFailure happended',
          ),
        ),
      ),
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
                child: const _ForgotPasswordInitialWidget(),
              ),
            );
          },
        ),
      ),
    );
  }
}
