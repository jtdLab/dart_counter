part of 'initial_page.dart';

class _ChangeUsernameInitialWidget extends StatelessWidget {
  const _ChangeUsernameInitialWidget({
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
            context.l10n.changeUsername.toUpperCase(),
            maxLines: 1,
            minFontSize: 8,
            maxFontSize: maxFontSizeNormal(context),
          ),
        ),
        AppTextField(
          placeholder: context.l10n.newUsernane.toUpperCase(),
          textInputAction: TextInputAction.done,
          onEditingComplete: () => node.unfocus(),
          onChanged: (newUsernameString) =>
              context.read<ChangeUsernameBloc>().add(
                    ChangeUsernameEvent.newUsernameChanged(
                      newNewUsername: newUsernameString,
                    ),
                  ),
        ),
        BlocBuilder<ChangeUsernameBloc, ChangeUsernameState>(
          buildWhen: (_, newState) =>
              newState is ChangeUsernameInitial ||
              newState is ChangeUsernameSubmitInProgress ||
              newState is ChangeUsernameSubmitFailure,
          builder: (context, state) {
            final isSubmitting = state is ChangeUsernameSubmitInProgress;

            return AppPrimaryButton(
              isSubmitting: isSubmitting,
              text: context.l10n.confirm.toUpperCase(),
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
