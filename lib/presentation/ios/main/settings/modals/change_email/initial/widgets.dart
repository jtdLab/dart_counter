part of 'initial_page.dart';

// BODY
class _ChangeEmailInitialWidget extends StatelessWidget {
  const _ChangeEmailInitialWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Column(
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
          onChanged: (newEmailString) => context.read<ChangeEmailBloc>().add(
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
            final isSubmitting = state is ChangeEmailSubmitInProgress;

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
    );
  }
}
