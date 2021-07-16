import 'package:dart_counter/application/settings/change_password/change_password_bloc.dart';

import 'package:dart_counter/presentation/ios/main/settings/modals/change_password/change_password_flow.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class ChangePasswordInitialPage extends StatelessWidget {
  const ChangePasswordInitialPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChangePasswordBloc, ChangePasswordState>(
      listenWhen: (oldState, newState) =>
          newState.successful || newState.authFailure != null,
      listener: (context, state) {
        if (state.successful) {
          Navigator.pushReplacementNamed(context, ChangePasswordFlow.success);
          return;
        }
        state.authFailure?.maybeWhen(
          orElse: () => showToast(
            'AuthFailure happended',
          ), // TODO catch other errors also
        );
      },
      child: AppPage(
        onTap: () => FocusScope.of(context).unfocus(),
        child: const ChangePasswordInitialWidget(),
      ),
    );
  }
}
