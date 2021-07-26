import 'package:dart_counter/application/sign_in/forgot_password/forgot_password_bloc.dart';

import 'package:dart_counter/presentation/ios/auth/sign_in/modals/forgot_password/forgot_password_flow.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class ForogotPasswordInitialPage extends StatelessWidget {
  const ForogotPasswordInitialPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
      listenWhen: (oldState, newState) =>
          newState.successful || newState.authFailure != null,
      listener: (context, state) {
        if (state.successful) {
          Navigator.pushReplacementNamed(context, ForgotPasswordFlow.success);
          return;
        }
        state.authFailure?.maybeWhen(
          invalidEmail: () => showToast(
            LocaleKeys.errorInvalidEmailAddress.tr().toUpperCase(),
          ),
          orElse: () =>
              showToast('AutFailure happended'), // TODO catch other errors also
        );
      },
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
                child: const ForgotPasswordInitialWidget(),
              ),
            );
          },
        ),
      ),
    );
  }
}
