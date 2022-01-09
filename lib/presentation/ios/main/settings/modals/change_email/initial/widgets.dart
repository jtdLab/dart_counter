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
            LocaleKeys.changeEmail.tr().toUpperCase(),
            maxLines: 1,
            minFontSize: 8,
            maxFontSize: maxFontSizeNormal(context),
          ),
        ),
        AppTextField(
          placeholder: LocaleKeys.email.tr().toUpperCase(),
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
              text: LocaleKeys.confirm.tr().toUpperCase(),
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
