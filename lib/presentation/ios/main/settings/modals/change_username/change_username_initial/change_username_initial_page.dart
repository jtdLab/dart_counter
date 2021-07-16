import 'package:dart_counter/application/settings/change_username/change_username_bloc.dart';

import 'package:dart_counter/presentation/ios/main/settings/modals/change_password/change_password_flow.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class ChangeUsernameInitialPage extends StatelessWidget {
  const ChangeUsernameInitialPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChangeUsernameBloc, ChangeUsernameState>(
      listenWhen: (oldState, newState) =>
          newState.successful || newState.userFailure != null,
      listener: (context, state) {
        if (state.successful) {
          Navigator.pushReplacementNamed(context, ChangePasswordFlow.success);
          return;
        }
        state.userFailure?.maybeWhen(
          invalidUsername: () => showToast(
            LocaleKeys.errorInvalidUsername.tr().toUpperCase(),
          ),
          orElse: () => showToast(
            'UserFailure happended',
          ), // TODO catch other errors also
        );
      },
      child: AppPage(
        onTap: () => FocusScope.of(context).unfocus(),
        child: const ChangeUsernameInitialWidget(),
      ),
    );
  }
}
