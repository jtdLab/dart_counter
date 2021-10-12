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
            LocaleKeys.changePassword.tr().toUpperCase(),
            maxLines: 1,
            minFontSize: 8,
            maxFontSize: maxFontSizeNormal(context),
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
        BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
          builder: (context, state) {
            final isSubmitting = state.isSubmitting;

            return AppPrimaryButton(
              isSubmitting: isSubmitting,
              text: LocaleKeys.confirm.tr().toUpperCase(),
              onPressed: () => context
                  .read<ChangePasswordBloc>()
                  .add(const ChangePasswordEvent.confirmPressed()),
            );
          },
        ),
        const Spacer(),
      ],
    );
  }
}
