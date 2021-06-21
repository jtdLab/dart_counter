import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_navigation_bar/widgets/app_navigation_bar_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_page.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_column.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_rounded_image.dart';
import 'package:dart_counter/presentation/ios/profile/widgets/career_stats_item/career_stats_item.dart';
import 'package:dart_counter/presentation/ios/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:easy_localization/easy_localization.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      navigationBar: AppNavigationBar(
        leading: AppNavigationBarButton(
          onPressed: () => context.router.pop(),
          child: Image.asset(
            AppImages.chevron_back_new,
          ),
        ),
        middle: Text(
          'Sebi Abi 69'.toUpperCase(),
        ),
        trailing: AppNavigationBarButton(
          onPressed: () => context.router.push(const GameHistoryPageRoute()),
          child: Image.asset(
            AppImages.clock_new,
          ),
        ),
      ),
      child: Column(
        children: [
          const Spacer(),
          const AppRoundedImage.extraLarge(
              imageName: AppImages.photo_placeholder_new),
          const Spacer(),
          AppColumn(
            spacing: size6(context),
            children: [
              CareerStatsItem(
                title: LocaleKeys.averrage.tr().toUpperCase(),
                value: '75.36',
                trend: Trend.up,
              ),
              CareerStatsItem(
                title: LocaleKeys.checkoutPercentageShort.tr().toUpperCase(),
                value: '31.47',
                trend: Trend.down,
              ),
              CareerStatsItem(
                value: '81.23',
                title: LocaleKeys.firstNine.tr().toUpperCase(),
              ),
              CareerStatsItem(
                value: '19',
                title: LocaleKeys.dartsPerLeg.tr().toUpperCase(),
              ),
              const CareerStatsItem(
                title: '180',
                value: '156',
              ),
              CareerStatsItem(
                value: '111',
                title: LocaleKeys.games.tr().toUpperCase(),
              ),
              CareerStatsItem(
                value: '36',
                title: LocaleKeys.wins.tr().toUpperCase(),
              ),
              CareerStatsItem(
                value: '75',
                title: LocaleKeys.defeats.tr().toUpperCase(),
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
