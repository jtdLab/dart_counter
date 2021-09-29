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
        // TODO  size for diffrent size classes
        const AppSpacer.custom(
          mobileSize: ResponsiveDouble(
            small: 50,
            normal: 60,
            large: 69,
            extraLarge: 78,
          ),
        ),
        const LogoDisplayer(),
        // TODO  size for diffrent size classes
        const AppSpacer.custom(
          mobileSize: ResponsiveDouble(
            small: 96,
            normal: 110,
            large: 123,
            extraLarge: 140,
          ),
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
        AppPrimaryButton(
          text: LocaleKeys.confirm.tr(),
          onPressed: () => context
              .read<ForgotPasswordBloc>()
              .add(const ForgotPasswordEvent.confirmPressed()),
        ),
        const Spacer(),
      ],
    );
  }
}
