import 'package:dart_counter/application/profile/profile_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class CareerStatsDisplayer extends StatelessWidget {
  const CareerStatsDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final careerStatsOnline = state.user.careerStatsOnline;

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
              value: careerStatsOnline.checkoutPercentage.toStringAsFixed(2),
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
    );
  }
}
