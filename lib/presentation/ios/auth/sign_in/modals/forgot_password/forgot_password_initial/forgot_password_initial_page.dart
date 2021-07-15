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
        print(state.successful);
        if (state.successful) {
          Navigator.pushReplacementNamed(context, ForgotPasswordFlow.success);
          return;
        }
        state.authFailure?.maybeWhen(
          invalidEmail: () => showToast(
            LocaleKeys.errorInvalidEmailAddress.tr().toUpperCase(),
          ),
          orElse: () => showToast('AutFailure happended'), // TODO
        );
      },
      child: AppPage(
        onTap: () => FocusScope.of(context).unfocus(),
        child: const ForgotPasswordInitialWidget(),
      ),
    );
  }
}
