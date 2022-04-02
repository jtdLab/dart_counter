part of 'initial_page.dart';

// BODY
class ChangePasswordInitialView extends StatelessWidget {
  const ChangePasswordInitialView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);

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
                      height: size40(context) + size12(context),
                      child: AutoSizeText(
                        context.l10n.changePassword.toUpperCase(),
                        maxLines: 1,
                        minFontSize: 8,
                        maxFontSize: maxFontSizeNormal(context),
                      ),
                    ),
                    AppTextField(
                      placeholder: context.l10n.oldPassword.toUpperCase(),
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () => node.nextFocus(),
                      obscureText: true,
                      onChanged: (oldPasswordString) =>
                          context.read<ChangePasswordBloc>().add(
                                ChangePasswordEvent.oldPasswordChanged(
                                  newOldPassword: oldPasswordString,
                                ),
                              ),
                    ),
                    AppTextField(
                      placeholder: context.l10n.newPassword.toUpperCase(),
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () => node.nextFocus(),
                      obscureText: true,
                      onChanged: (newPasswordString) =>
                          context.read<ChangePasswordBloc>().add(
                                ChangePasswordEvent.newPasswordChanged(
                                  newNewPassword: newPasswordString,
                                ),
                              ),
                    ),
                    AppTextField(
                      placeholder: context.l10n.newPasswordAgain.toUpperCase(),
                      textInputAction: TextInputAction.done,
                      onEditingComplete: () => node.unfocus(),
                      obscureText: true,
                      onChanged: (newPasswordAgainString) =>
                          context.read<ChangePasswordBloc>().add(
                                ChangePasswordEvent.newPasswordAgainChanged(
                                  newNewPasswordAgain: newPasswordAgainString,
                                ),
                              ),
                    ),
                    BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
                      buildWhen: (_, newState) =>
                          newState is ChangePasswordInitial ||
                          newState is ChangePasswordSubmitInProgress ||
                          newState is ChangePasswordSubmitFailure,
                      builder: (context, state) {
                        final isSubmitting =
                            state is ChangePasswordSubmitInProgress;

                        return AppPrimaryButton(
                          isSubmitting: isSubmitting,
                          text: context.l10n.confirm.toUpperCase(),
                          onPressed: () => context
                              .read<ChangePasswordBloc>()
                              .add(const ChangePasswordEvent.confirmPressed()),
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
