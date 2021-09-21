import 'package:dart_counter/application/settings/change_email/change_email_bloc.dart';

import 'package:dart_counter/presentation/ios/main/settings/modals/change_email/change_email_flow.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class ChangeEmailInitialPage extends StatelessWidget {
  const ChangeEmailInitialPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChangeEmailBloc, ChangeEmailState>(
      listenWhen: (oldState, newState) =>
          newState.successful || newState.userFailure != null,
      listener: (context, state) {
        if (state.successful) {
          Navigator.pushReplacementNamed(context, ChangeEmailFlow.success);
          return;
        }
        state.userFailure?.maybeWhen(
          /* TODO
          invalidEmail: () => showToast(
            LocaleKeys.errorInvalidEmailAddress.tr().toUpperCase(),
          ),
          */
          orElse: () =>
              showToast('UserFailure happended'), // TODO catch other errors also
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
                child: const ChangeEmailInitialWidget(),
              ),
            );
          },
        ),
      ),
    );
  }
}
