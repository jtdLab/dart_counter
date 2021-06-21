import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/ios/core/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';

import 'widgets/widgets.dart';

class StatsDisplayer extends StatelessWidget {
  const StatsDisplayer({Key? key}) : super(key: key);

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
        StatsItem(
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
