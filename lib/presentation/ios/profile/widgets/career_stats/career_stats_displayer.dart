import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:dart_counter/presentation/ios/profile/widgets/career_stats/career_stats_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

class CareerStatsDisplayer extends StatelessWidget {
  final CareerStats? careerStats;

  const CareerStatsDisplayer({Key? key, required this.careerStats})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: CareerStatsCard(
                  title: LocaleKeys.averrage.tr(),
                  value: careerStats?.average.toStringAsFixed(2) ?? '--',
                  trend: careerStats?.averageTrend ?? Trend.none,
                ),
              ),
              SizedBox(
                width: responsiveDouble(
                  context: context,
                  mobile: ResponsiveDouble(normal: 4, large: 4, extraLarge: 6),
                ),
              ),
              Expanded(
                child: CareerStatsCard(
                  title: LocaleKeys.checkoutPercentageShort.tr(),
                  value: careerStats?.checkoutPercentage.toStringAsFixed(2) ??
                      '--',
                  trend: careerStats?.checkoutPercentageTrend ?? Trend.none,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: responsiveDouble(
            context: context,
            mobile: ResponsiveDouble(normal: 4, large: 4, extraLarge: 6),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: CareerStatsCard(
                  title: LocaleKeys.firstNine.tr(),
                  value: careerStats?.firstNine.toStringAsFixed(2) ?? '--',
                  trend: careerStats?.firstNineTrend ?? Trend.none,
                ),
              ),
              SizedBox(
                width: responsiveDouble(
                  context: context,
                  mobile: ResponsiveDouble(normal: 4, large: 4, extraLarge: 6),
                ),
              ),
              Expanded(
                child: CareerStatsCard(
                  title: LocaleKeys.games.tr(),
                  value: careerStats?.games.toString() ?? '--',
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: responsiveDouble(
            context: context,
            mobile: ResponsiveDouble(normal: 4, large: 4, extraLarge: 6),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: CareerStatsCard(
                  title: LocaleKeys.wins.tr(),
                  value: careerStats?.wins.toString() ?? '--',
                ),
              ),
              SizedBox(
                width: responsiveDouble(
                  context: context,
                  mobile: ResponsiveDouble(normal: 4, large: 4, extraLarge: 6),
                ),
              ),
              Expanded(
                child: CareerStatsCard(
                  title: LocaleKeys.defeats.tr(),
                  value: careerStats?.defeats.toString() ?? '--',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
