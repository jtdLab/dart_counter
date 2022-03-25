part of 'success_page.dart';

class ForgotPasswordSuccessView extends StatelessWidget {
  // Keys for widget-testing
  static const Key logoKey = Key('logo');
  static const Key emailSentTextKey = Key('email_sent_text');
  static const Key successIconKey = Key('success_icon');
  static const Key goToSignInButtonKey = Key('go_to_sign_in_button');

  const ForgotPasswordSuccessView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
      child: Column(
        children: [
          SizedBox(height: modalLogoMarginTop(context)),
          const LogoDisplayer(key: logoKey),
          SizedBox(height: modalLogoMarginBottom(context)),
          SizedBox(
            height: 4 * (size40(context) + size12(context)),
            child: Column(
              children: [
                AutoSizeText(
                  context.l10n.emailSent.toUpperCase(),
                  key: emailSentTextKey,
                  maxLines: 1,
                  minFontSize: 8,
                  maxFontSize: maxFontSizeNormal(context),
                ),
                SizedBox(height: spacerLarge(context)),
                Image.asset(
                  AppImages.checkmarkNew,
                  key: successIconKey,
                )
              ],
            ),
          ),
          AppPrimaryButton(
            key: goToSignInButtonKey,
            text: context.l10n.signIn,
            onPressed: () => _onGoToSignInPressed(context),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  void _onGoToSignInPressed(BuildContext context) {
    context.router.pop();
  }
}
