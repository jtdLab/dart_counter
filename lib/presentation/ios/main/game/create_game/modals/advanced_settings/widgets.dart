part of 'advanced_settings_modal.dart';

// TODO refactor + responsive
class AdvancedSettingsWidget extends StatelessWidget {
  const AdvancedSettingsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white70,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: AppColumn(
          spacing: size6(context),
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            const AppSpacer.large(),
            AppCardItem.custom(
              height: size55(context),
              content: Center(
                child: Text(
                  LocaleKeys.advancedSettings.tr().toUpperCase(),
                ),
              ),
            ),
            AppCardItem.small(
              content: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size12(context),
                ),
                child: Row(
                  children: [
                    Text(
                      LocaleKeys.showCheckoutPercentage.tr().toUpperCase(),
                    ),
                    const Spacer(),
                    AppIconButton(
                      onPressed: () {}, // TODO
                      icon: Image.asset(AppImages.checkMarkDarkNew),
                    ),
                  ],
                ),
              ),
            ),
            AppCardItem.small(
              content: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size12(context),
                ),
                child: Row(
                  children: [
                    Text(
                      LocaleKeys.showAverrage.tr().toUpperCase(),
                    ),
                    const Spacer(),
                    AppIconButton(
                      onPressed: () {}, // TODO
                      icon: Image.asset(AppImages.checkMarkDarkNew),
                    ),
                  ],
                ),
              ),
            ),
            /**
            *  AppActionButton.normal(
                    onPressed: () {},
                    color: AppColors.red,
                    fontColor: AppColors.white,
                    text: LocaleKeys.removePlayer.tr().toUpperCase(),
                  ),
                  */
            AppActionButton.normal(
              onPressed: () => context.router.pop(),
              text: LocaleKeys.done.tr().toUpperCase(),
            ),
            const AppSpacer.custom(
              mobileSize: ResponsiveDouble(
                small: 40,
                normal: 50,
                large: 50,
                extraLarge: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
