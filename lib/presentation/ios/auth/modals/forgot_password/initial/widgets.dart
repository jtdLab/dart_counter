part of 'initial_page.dart';

class _ForgotPasswordInitialWidget extends StatelessWidget {
  const _ForgotPasswordInitialWidget({
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
            LocaleKeys.forgotPassword.tr().toUpperCase(),
            maxLines: 1,
            minFontSize: 8,
            maxFontSize: maxFontSizeNormal(context),
          ),
        ),
        AppTextField(
          placeholder: LocaleKeys.email.tr(),
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => node.unfocus(),
          onChanged: (emailString) => context
              .read<ForgotPasswordBloc>()
              .add(ForgotPasswordEvent.emailChanged(newEmail: emailString)),
        ),
        BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
          buildWhen: (_, newState) =>
              newState is ForgotPasswordInitial ||
              newState is ForgotPasswordSubmitInProgress ||
              newState is ForgotPasswordSubmitFailure,
          builder: (context, state) {
            final isSubmitting = state is ForgotPasswordSubmitInProgress;

            return AppPrimaryButton(
              isSubmitting: isSubmitting,
              text: LocaleKeys.confirm.tr(),
              onPressed: () => context
                  .read<ForgotPasswordBloc>()
                  .add(const ForgotPasswordEvent.confirmPressed()),
            );
          },
        ),
        const Spacer(),
      ],
    );
  }
}
