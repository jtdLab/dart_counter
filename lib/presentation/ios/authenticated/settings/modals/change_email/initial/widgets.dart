part of 'initial_page.dart';

// BODY
class ChangeEmailInitialView extends StatelessWidget {
  const ChangeEmailInitialView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);

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
                        context.l10n.changeEmail.toUpperCase(),
                        maxLines: 1,
                        minFontSize: 8,
                        maxFontSize: maxFontSizeNormal(context),
                      ),
                    ),
                    AppTextField(
                      placeholder: context.l10n.email.toUpperCase(),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress,
                      onEditingComplete: () => node.unfocus(),
                      onChanged: (newEmailString) =>
                          context.read<ChangeEmailBloc>().add(
                                ChangeEmailEvent.newEmailChanged(
                                  newNewEmail: newEmailString,
                                ),
                              ),
                    ),
                    BlocBuilder<ChangeEmailBloc, ChangeEmailState>(
                      buildWhen: (_, newState) =>
                          newState is ChangeEmailInitial ||
                          newState is ChangeEmailSubmitInProgress ||
                          newState is ChangeEmailSubmitFailure,
                      builder: (context, state) {
                        final isSubmitting =
                            state is ChangeEmailSubmitInProgress;

                        return AppPrimaryButton(
                          isSubmitting: isSubmitting,
                          text: context.l10n.confirm.toUpperCase(),
                          onPressed: () => context
                              .read<ChangeEmailBloc>()
                              .add(const ChangeEmailEvent.confirmPressed()),
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
