import 'package:dart_counter/application/career_stats/career_stats_watcher/career_stats_watcher_bloc.dart';
import 'package:dart_counter/domain/careerStats/career_stats.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:dart_counter/presentation/ios/profile/widgets/career_stats/career_stats_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CareerStatsDisplayer extends StatelessWidget {
  final CareerStats careerStats;

  const CareerStatsDisplayer({Key? key, required this.careerStats})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CareerStatsWatcherBloc, CareerStatsWatcherState>(
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CareerStatsCard(
                      title: LocaleKeys.averrage.tr(),
                      value: state.maybeMap(
                        loadSuccess: (state) =>
                            state.careerStats.average.toStringAsFixed(2),
                        orElse: () => '--',
                      ),
                      trend: state.maybeMap(
                        loadSuccess: (state) => state.careerStats.averageTrend,
                        orElse: () => Trend.none,
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
                      title: LocaleKeys.checkoutPercentageShort.tr(),
                      value: state.maybeMap(
                        loadSuccess: (state) => state
                            .careerStats.checkoutPercentage
                            .toStringAsFixed(2),
                        orElse: () => '--',
                      ),
                      trend: state.maybeMap(
                        loadSuccess: (state) =>
                            state.careerStats.checkoutPercentageTrend,
                        orElse: () => Trend.none,
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
                      title: LocaleKeys.firstNine.tr(),
                      value: state.maybeMap(
                        loadSuccess: (state) =>
                            state.careerStats.firstNine.toStringAsFixed(2),
                        orElse: () => '--',
                      ),
                      trend: state.maybeMap(
                        loadSuccess: (state) =>
                            state.careerStats.firstNineTrend,
                        orElse: () => Trend.none,
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
                      title: LocaleKeys.games.tr(),
                      value: state.maybeMap(
                        loadSuccess: (state) =>
                            state.careerStats.games.toString(),
                        orElse: () => '--',
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
                      value: state.maybeMap(
                        loadSuccess: (state) =>
                            state.careerStats.wins.toString(),
                        orElse: () => '--',
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
                      value: state.maybeMap(
                        loadSuccess: (state) =>
                            state.careerStats.defeats.toString(),
                        orElse: () => '--',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
