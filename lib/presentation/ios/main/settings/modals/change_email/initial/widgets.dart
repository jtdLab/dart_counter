part of '../change_email_modal.dart';

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
          height: 3 * (size40(context) + size12(context)),
          child: Text(
            LocaleKeys.changeEmail.tr().toUpperCase(),
          ),
        ),
        AppTextField(
          placeholder: LocaleKeys.email.tr().toUpperCase(),
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => node.unfocus(),
          onChanged: (newEmailString) => context.read<ChangeEmailBloc>().add(
                ChangeEmailEvent.newEmailChanged(
                  newEmailString: newEmailString,
                ),
              ),
        ),
        BlocBuilder<ChangeEmailBloc, ChangeEmailState>(
          builder: (context, state) {
            final isSubmitting = state.isSubmitting;

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
