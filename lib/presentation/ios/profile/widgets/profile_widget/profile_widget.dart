import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

import 'widgets/widgets.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
