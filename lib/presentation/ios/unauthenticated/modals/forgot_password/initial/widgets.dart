part of 'initial_page.dart';

class ForgotPasswordInitialView extends StatelessWidget {
  // Keys for widget-testing
  static const Key logoKey = Key('logo');
  static const Key forgotPasswordTextKey = Key('forgot_password_text');
  static const Key emailTextFieldKey = Key('email_text_field');
  static const Key confirmButtonKey = Key('confirm_button');

  const ForgotPasswordInitialView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);

    return AppPage(
      onTap: () => FocusScope.of(context).unfocus(),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final bottomInsets = MediaQuery.of(context).viewInsets.bottom;

          return SingleChildScrollView(
            physics:
                bottomInsets == 0 ? const NeverScrollableScrollPhysics() : null,
            child: ConstrainedBox(
              constraints: constraints.copyWith(
                maxHeight: constraints.maxHeight + bottomInsets,
              ),
              child: Column(
                children: [
                  SizedBox(height: modalLogoMarginTop(context)),
                  const LogoDisplayer(key: logoKey),
                  SizedBox(height: modalLogoMarginBottom(context)),
                  SizedBox(
                    height: 3 * (size40(context) + size12(context)),
                    child: AutoSizeText(
                      context.l10n.forgotPassword.toUpperCase(),
                      key: forgotPasswordTextKey,
                      maxLines: 1,
                      minFontSize: 8,
                      maxFontSize: maxFontSizeNormal(context),
                    ),
                  ),
                  AppTextField(
                    key: emailTextFieldKey,
                    placeholder: context.l10n.email,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.emailAddress,
                    onEditingComplete: () => node.unfocus(),
                    onChanged: (emailString) => _onEmailChanged(
                      context,
                      emailString,
                    ),
                  ),
                  BlocSelector<ForgotPasswordBloc, ForgotPasswordState, bool>(
                    selector: (state) =>
                        state is ForgotPasswordSubmitInProgress,
                    builder: (context, isSubmitting) {
                      return AppPrimaryButton(
                        key: confirmButtonKey,
                        isSubmitting: isSubmitting,
                        text: context.l10n.confirm,
                        onPressed: () => _onConfirmPressed(context),
                      );
                    },
                  ),
                  const Spacer(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _onEmailChanged(BuildContext context, String newEmail) {
    context.read<ForgotPasswordBloc>().add(
          ForgotPasswordEvent.emailChanged(newEmail: newEmail),
        );
  }

  void _onConfirmPressed(BuildContext context) {
    context
        .read<ForgotPasswordBloc>()
        .add(const ForgotPasswordEvent.confirmPressed());
  }
}
