import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/app_navigation_bar/widgets/app_navigation_bar_button.dart';
import 'package:dart_counter/presentation/ios/core/app_page.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/layout/app_column.dart';
import 'package:dart_counter/presentation/ios/core/widgets/rounded_image.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
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
          const RoundedImage.extraLarge(
              imageName: AppImages.photo_placeholder_new),
          const Spacer(),
          AppColumn(
            spacing: size6(context),
            children: [
              _careerStatsItem(
                context,
                title: LocaleKeys.averrage.tr().toUpperCase(),
                value: '75.36',
                trend: Trend.up,
              ),
              _careerStatsItem(
                context,
                title: LocaleKeys.checkoutPercentageShort.tr().toUpperCase(),
                value: '31.47',
                trend: Trend.down,
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
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _careerStatsItem(BuildContext context,
          {required String title,
          required String value,
          Trend trend = Trend.none}) =>
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
                      if (trend != Trend.none)
                        _trendDisplayer(context, trend: trend),
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

  Widget _trendDisplayer(BuildContext context, {Trend trend = Trend.none}) {
    if (trend == Trend.up) {
      return Image.asset(AppImages.trend_up_new);
    } else if (trend == Trend.down) {
      return Image.asset(AppImages.trend_down_new);
    } else {
      return Container();
    }
  }
}
