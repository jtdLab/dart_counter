import 'package:dart_counter/application/core/user/user_bloc.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/ios/core/errors.dart';
import 'package:dart_counter/presentation/ios/core/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/widgets.dart';

class CareerStatsDisplayer extends StatelessWidget {
  const CareerStatsDisplayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return state.maybeMap(
          loadSuccess: (success) {
            final careerStatsOnline = success.user.careerStatsOnline;

            return AppColumn(
              spacing: size6(context),
              children: [
                CareerStatsItem(
                  title: LocaleKeys.averrage.tr().toUpperCase(),
                  value: careerStatsOnline.average.toStringAsFixed(2),
                  trend: careerStatsOnline.averageTrend,
                ),
                CareerStatsItem(
                  title: LocaleKeys.checkoutPercentageShort.tr().toUpperCase(),
                  value:
                      careerStatsOnline.checkoutPercentage.toStringAsFixed(2),
                  trend: careerStatsOnline.checkoutPercentageTrend,
                ),
                CareerStatsItem(
                  value: careerStatsOnline.firstNine.toStringAsFixed(2),
                  title: LocaleKeys.firstNine.tr().toUpperCase(),
                  trend: careerStatsOnline.firstNineTrend,
                ),
                CareerStatsItem(
                  value: '19',
                  title: LocaleKeys.dartsPerLeg.tr().toUpperCase(),
                ),
                const CareerStatsItem(
                  title: '180s',
                  value: '156',
                ),
                CareerStatsItem(
                  value: careerStatsOnline.games.toString(),
                  title: LocaleKeys.games.tr().toUpperCase(),
                ),
                CareerStatsItem(
                  value: careerStatsOnline.wins.toString(),
                  title: LocaleKeys.wins.tr().toUpperCase(),
                ),
                CareerStatsItem(
                  value: careerStatsOnline.defeats.toString(),
                  title: LocaleKeys.defeats.tr().toUpperCase(),
                ),
              ],
            );
          },
          orElse: () => throw UnexpectedStateError(),
        );
      },
    );
  }
}
