part of 'initial_page.dart';

class ChangeUsernameInitialView extends StatelessWidget {
  const ChangeUsernameInitialView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);

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
      child: AppPageScaffold(
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
                child: Column(
                  children: [
                    SizedBox(
                      height: modalLogoMarginTop(context),
                    ),
                    const LogoDisplayer(),
                    SizedBox(
                      height: modalLogoMarginBottom(context),
                    ),
                    SizedBox(
                      height: 3 * (size40(context) + size12(context)),
                      child: AutoSizeText(
                        context.l10n.changeUsername.toUpperCase(),
                        maxLines: 1,
                        minFontSize: 8,
                        maxFontSize: maxFontSizeNormal(context),
                      ),
                    ),
                    AppTextField(
                      placeholder: context.l10n.newUsernane.toUpperCase(),
                      textInputAction: TextInputAction.done,
                      onEditingComplete: () => node.unfocus(),
                      onChanged: (newUsernameString) =>
                          context.read<ChangeUsernameBloc>().add(
                                ChangeUsernameEvent.newUsernameChanged(
                                  newNewUsername: newUsernameString,
                                ),
                              ),
                    ),
                    BlocBuilder<ChangeUsernameBloc, ChangeUsernameState>(
                      buildWhen: (_, newState) =>
                          newState is ChangeUsernameInitial ||
                          newState is ChangeUsernameSubmitInProgress ||
                          newState is ChangeUsernameSubmitFailure,
                      builder: (context, state) {
                        final isSubmitting =
                            state is ChangeUsernameSubmitInProgress;

                        return AppPrimaryButton(
                          isSubmitting: isSubmitting,
                          text: context.l10n.confirm.toUpperCase(),
                          onPressed: () => context
                              .read<ChangeUsernameBloc>()
                              .add(const ChangeUsernameEvent.confirmPressed()),
                        );
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
