// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/settings/change_password/change_password_bloc.dart';

// WIDGETS
part 'widgets.dart';

class ChangePasswordInitialPage extends StatelessWidget {
  const ChangePasswordInitialPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChangePasswordBloc, ChangePasswordState>(
      listenWhen: (_, newState) =>
          newState is ChangePasswordSubmitSuccess ||
          newState is ChangePasswordSubmitFailure,
      listener: (context, state) {
        if (state is ChangePasswordSubmitSuccess) {
          context.router.replace(const ChangePasswordSuccessPageRoute());
          return;
        }

        if (state is ChangePasswordSubmitFailure) {
          state.authFailure.maybeWhen(
            orElse: () => showToast(
              'AuthFailure happended',
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
                child: const _ChangePasswordInitialWidget(),
              ),
            );
          },
        ),
      ),
    );
  }
}
