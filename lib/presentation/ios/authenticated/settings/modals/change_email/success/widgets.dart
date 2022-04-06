part of 'success_page.dart';

// BODY
class ChangeEmailSuccessView extends StatelessWidget {
  const ChangeEmailSuccessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      child: Column(
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
                  context.l10n.emailChanged.toUpperCase(),
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
            text: context.l10n.confirm.toUpperCase(),
            onPressed: () => context.router.pop(),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
