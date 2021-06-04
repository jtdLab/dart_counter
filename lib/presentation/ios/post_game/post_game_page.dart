import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/app_navigation_bar/widgets/app_navigation_bar_button.dart';
import 'package:dart_counter/presentation/ios/core/app_page.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_primary_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/layout/app_column.dart';
import 'package:dart_counter/presentation/ios/core/widgets/player_profile_image_and_name_displayer.dart';
import 'package:dart_counter/presentation/ios/core/widgets/rounded_image.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:auto_route/auto_route.dart';

class PostGamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      navigationBar: AppNavigationBar(
        leading: AppNavigationBarButton(
          onPressed: () {},
          child: Image.asset(
            AppImages.chevron_back_new,
          ),
        ),
        middle: Text(
          'Best of 5 Legs'.toUpperCase(),
        ),
        trailing: AppNavigationBarButton(
          onPressed: () {},
          child: Image.asset(
            AppImages.stats_new,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const PlayerProfileImageAndNameDisplayer(),
          _stats(context),
          AppPrimaryButton(
            onPressed: () => context.router.push(
              const HomePageRoute(),
            ),
            color: AppColors.red,
            text: 'Main Menu'.toUpperCase(),
          ),
        ],
      ),
    );
  }

// TODO take new design content this is only placeholder
  Widget _stats(BuildContext context) => AppColumn(
        spacing: size6(context),
        children: [
          _careerStatsItem(
            context,
            title: LocaleKeys.averrage.tr().toUpperCase(),
            value: '75.36',
          ),
          _careerStatsItem(
            context,
            title: LocaleKeys.checkoutPercentageShort.tr().toUpperCase(),
            value: '31.47',
          ),
          _careerStatsItem(
            context,
            value: '81.23',
            title: LocaleKeys.firstNine.tr().toUpperCase(),
          ),
          _careerStatsItem(
            context,
            value: '19',
            title: LocaleKeys.dartsPerLeg.tr().toUpperCase(),
          ),
          _careerStatsItem(
            context,
            title: '180',
            value: '156',
          ),
          _careerStatsItem(
            context,
            value: '111',
            title: LocaleKeys.games.tr().toUpperCase(),
          ),
          _careerStatsItem(
            context,
            value: '36',
            title: LocaleKeys.wins.tr().toUpperCase(),
          ),
          _careerStatsItem(
            context,
            value: '75',
            title: LocaleKeys.defeats.tr().toUpperCase(),
          ),
        ],
      );

  Widget _careerStatsItem(
    BuildContext context, {
    required String title,
    required String value,
  }) =>
      AppCardItem.normal(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      width: border4(context) / 2,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(title),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      width: border4(context) / 2,
                    ),
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        value,
                        style: CupertinoTheme.of(context)
                            .textTheme
                            .textStyle
                            .copyWith(fontSize: 28),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
