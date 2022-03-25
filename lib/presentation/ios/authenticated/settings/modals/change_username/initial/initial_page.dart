// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/settings/change_username/change_username_bloc.dart';

// WIDGETS
part 'widgets.dart';

class ChangeUsernameInitialPage extends StatelessWidget {
  const ChangeUsernameInitialPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChangeUsernameBloc, ChangeUsernameState>(
      listenWhen: (_, newState) =>
          newState is ChangeUsernameSubmitSuccess ||
          newState is ChangeUsernameSubmitFailure,
      listener: (context, state) {
        if (state is ChangeUsernameSubmitSuccess) {
          context.router.replace(const ChangeUsernameSuccessPageRoute());
          return;
        }

        if (state is ChangeUsernameSubmitFailure) {
          state.userFailure.maybeWhen(
            invalidUsername: () => showToast(
              context.l10n.errorInvalidUsername.toUpperCase(),
            ),
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
                child: const _ChangeUsernameInitialWidget(),
              ),
            );
          },
        ),
      ),
    );
  }
}
