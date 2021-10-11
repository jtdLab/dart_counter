part of '../forgot_password_modal.dart';

class _InitialWidget extends StatelessWidget {
  const _InitialWidget({
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
          child: Text(
            LocaleKeys.forgotPassword.tr().toUpperCase(),
          ),
        ),
        AppTextField(
          placeholder: LocaleKeys.email.tr(),
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => node.unfocus(),
          onChanged: (emailString) => context
              .read<ForgotPasswordBloc>()
              .add(ForgotPasswordEvent.emailChanged(emailString: emailString)),
        ),
        BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
          builder: (context, state) {
            final isSubmitting = state.isSubmitting;

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
