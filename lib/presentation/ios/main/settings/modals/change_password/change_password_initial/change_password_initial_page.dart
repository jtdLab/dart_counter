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
          newState.successful || newState.userFailure!= null,
      listener: (context, state) {
        if (state.successful) {
          Navigator.pushReplacementNamed(context, ChangePasswordFlow.success);
          return;
        }
        state.userFailure?.maybeWhen(
          orElse: () => showToast(
            'AuthFailure happended',
          ), // TODO catch other errors also
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
                child: const ChangePasswordInitialWidget(),
              ),
            );
          },
        ),
      ),
    );
  }
}
