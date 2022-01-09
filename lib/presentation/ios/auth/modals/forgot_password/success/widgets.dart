part of 'success_page.dart';

class _ForgotPasswordSuccessWidget extends StatelessWidget {
  const _ForgotPasswordSuccessWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          height: 4 * (size40(context) + size12(context)),
          child: Column(
            children: [
              AutoSizeText(
                LocaleKeys.emailSent.tr().toUpperCase(),
                maxLines: 1,
                minFontSize: 8,
                maxFontSize: maxFontSizeNormal(context),
              ),
              SizedBox(
                height: spacerLarge(context),
              ),
              Image.asset(AppImages.checkmarkNew)
            ],
          ),
        ),
        AppPrimaryButton(
          text: LocaleKeys.signIn.tr(),
          onPressed: () => context.router.pop(),
        ),
        const Spacer(),
      ],
    );
  }
}
