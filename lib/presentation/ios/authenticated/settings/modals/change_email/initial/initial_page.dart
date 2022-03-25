// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/authenticated/settings/change_email/change_email_bloc.dart';

// WIDGETS
part 'widgets.dart';

class ChangeEmailInitialPage extends StatelessWidget {
  const ChangeEmailInitialPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChangeEmailBloc, ChangeEmailState>(
      listenWhen: (_, newState) =>
          newState is ChangeEmailSubmitSuccess ||
          newState is ChangeEmailSubmitFailure,
      listener: (context, state) {
        if (state is ChangeEmailSubmitSuccess) {
          context.router.replace(const ChangeEmailSuccessPageRoute());
          return;
        }

        if (state is ChangeEmailSubmitFailure) {
          state.userFailure.maybeWhen(
            /* TODO
                      invalidEmail: () => showToast(
                        context.l10n.errorInvalidEmailAddress.toUpperCase(),
                      ),
                      */
            orElse: () => showToast(
              'UserFailure happended',
            ), // TODO catch other errors also
          );
        }
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
                child: const _ChangeEmailInitialWidget(),
              ),
            );
          },
        ),
      ),
    );
  }
}
