part of '../change_email_modal.dart';

// BODY
class _SuccessWidget extends StatelessWidget {
  const _SuccessWidget({
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
                LocaleKeys.emailChanged.tr().toUpperCase(),
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
          text: LocaleKeys.confirm.tr().toUpperCase(),
          onPressed: () => context.router.pop(),
        ),
        const Spacer(),
      ],
    );
  }
}
