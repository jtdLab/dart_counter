part of '../change_username_modal.dart';

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
          child: AutoSizeText(
            LocaleKeys.changeUsername.tr().toUpperCase(),
            maxLines: 1,
            minFontSize: 8,
            maxFontSize: maxFontSizeNormal(context),
          ),
        ),
        AppTextField(
          placeholder: LocaleKeys.newUsernane.tr().toUpperCase(),
          textInputAction: TextInputAction.done,
          onEditingComplete: () => node.unfocus(),
          onChanged: (newUsernameString) =>
              context.read<ChangeUsernameBloc>().add(
                    ChangeUsernameEvent.newUsernameChanged(
                      newUsernameString: newUsernameString,
                    ),
                  ),
        ),
        BlocBuilder<ChangeUsernameBloc, ChangeUsernameState>(
          builder: (context, state) {
            final isSubmitting = state.isSubmitting;

            return AppPrimaryButton(
              isSubmitting: isSubmitting,
              text: LocaleKeys.confirm.tr().toUpperCase(),
              onPressed: () => context
                  .read<ChangeUsernameBloc>()
                  .add(const ChangeUsernameEvent.confirmPressed()),
            );
          },
        ),
        const Spacer(),
      ],
    );
  }
}
