part of '../change_password_modal.dart';

// BODY
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
          height: size40(context) + size12(context),
          child: Text(
            LocaleKeys.changePassword.tr().toUpperCase(),
          ),
        ),
        AppTextField(
          placeholder: LocaleKeys.oldPassword.tr().toUpperCase(),
          textInputAction: TextInputAction.next,
          onEditingComplete: () => node.nextFocus(),
          obscureText: true,
          onChanged: (oldPasswordString) =>
              context.read<ChangePasswordBloc>().add(
                    ChangePasswordEvent.oldPasswordChanged(
                      oldPasswordString: oldPasswordString,
                    ),
                  ),
        ),
        AppTextField(
          placeholder: LocaleKeys.newPassword.tr().toUpperCase(),
          textInputAction: TextInputAction.next,
          onEditingComplete: () => node.nextFocus(),
          obscureText: true,
          onChanged: (newPasswordString) =>
              context.read<ChangePasswordBloc>().add(
                    ChangePasswordEvent.newPasswordChanged(
                      newPasswordString: newPasswordString,
                    ),
                  ),
        ),
        AppTextField(
          placeholder: LocaleKeys.newPasswordAgain.tr().toUpperCase(),
          textInputAction: TextInputAction.done,
          onEditingComplete: () => node.unfocus(),
          obscureText: true,
          onChanged: (newPasswordAgainString) =>
              context.read<ChangePasswordBloc>().add(
                    ChangePasswordEvent.newPasswordAgainChanged(
                      newPasswordAgainString: newPasswordAgainString,
                    ),
                  ),
        ),
        AppPrimaryButton(
          text: LocaleKeys.confirm.tr().toUpperCase(),
          onPressed: () => context
              .read<ChangePasswordBloc>()
              .add(const ChangePasswordEvent.confirmPressed()),
        ),
        const Spacer(),
      ],
    );
  }
}
