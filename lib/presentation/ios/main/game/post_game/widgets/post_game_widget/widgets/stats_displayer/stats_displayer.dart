import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

// TODO real data
class StatsDisplayer extends StatelessWidget {
  const StatsDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        StatsItem(
          title: LocaleKeys.averrage.tr().toUpperCase(),
          value: '75.36',
        ),
        StatsItem(
          title: LocaleKeys.checkoutPercentageShort.tr().toUpperCase(),
          value: '31.47',
        ),
        StatsItem(
          value: '81.23',
          title: LocaleKeys.firstNine.tr().toUpperCase(),
        ),
        StatsItem(
          value: '19',
          title: LocaleKeys.dartsPerLeg.tr().toUpperCase(),
        ),
        const StatsItem(
          title: '180',
          value: '156',
        ),
        StatsItem(
          value: '111',
          title: LocaleKeys.games.tr().toUpperCase(),
        ),
        StatsItem(
          value: '36',
          title: LocaleKeys.wins.tr().toUpperCase(),
        ),
        StatsItem(
          value: '75',
          title: LocaleKeys.defeats.tr().toUpperCase(),
        ),
      ],
    );
  }
}
