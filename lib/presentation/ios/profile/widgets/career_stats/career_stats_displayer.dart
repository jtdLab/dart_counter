import 'package:dart_counter/application/profile/profile_bloc.dart';
import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:dart_counter/presentation/ios/profile/widgets/career_stats/career_stats_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CareerStatsDisplayer extends StatelessWidget {
  final CareerStats? careerStats;

  const CareerStatsDisplayer({Key? key, required this.careerStats})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) => Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CareerStatsCard(
                    title: LocaleKeys.averrage.tr(),
                    value: state.map(
                      noData: (_) => '--',
                      data: (e) => e.average.toStringAsFixed(2),
                    ),
                    trend: state.map(
                        noData: (_) => Trend.none, data: (e) => e.averageTrend),
                  ),
                ),
                SizedBox(
                  width: responsiveDouble(
                    context: context,
                    mobile:
                        ResponsiveDouble(normal: 4, large: 4, extraLarge: 6),
                  ),
                ),
                Expanded(
                  child: CareerStatsCard(
                    title: LocaleKeys.checkoutPercentageShort.tr(),
                    value: state.map(
                      noData: (_) => '--',
                      data: (e) => e.checkoutPercentage.toStringAsFixed(2),
                    ),
                    trend: state.map(
                        noData: (_) => Trend.none,
                        data: (e) => e.checkoutPercentageTrend),
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
                    value: state.map(
                      noData: (_) => '--',
                      data: (e) => e.firstNine.toStringAsFixed(2),
                    ),
                    trend: state.map(
                        noData: (_) => Trend.none,
                        data: (e) => e.firstNineTrend),
                  ),
                ),
                SizedBox(
                  width: responsiveDouble(
                    context: context,
                    mobile:
                        ResponsiveDouble(normal: 4, large: 4, extraLarge: 6),
                  ),
                ),
                Expanded(
                  child: CareerStatsCard(
                    title: LocaleKeys.games.tr(),
                    value: state.map(
                      noData: (_) => '--',
                      data: (e) => e.games.toString(),
                    ),
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
                    value: state.map(
                      noData: (_) => '--',
                      data: (e) => e.wins.toString(),
                    ),
                  ),
                ),
                SizedBox(
                  width: responsiveDouble(
                    context: context,
                    mobile:
                        ResponsiveDouble(normal: 4, large: 4, extraLarge: 6),
                  ),
                ),
                Expanded(
                  child: CareerStatsCard(
                    title: LocaleKeys.defeats.tr(),
                    value: state.map(
                      noData: (_) => '--',
                      data: (e) => e.defeats.toString(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
