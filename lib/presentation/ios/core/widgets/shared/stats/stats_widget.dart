import 'package:dart_counter/presentation/ios/core/core.dart';

import 'widgets/widgets.dart';

class StatsWidget extends StatelessWidget {
  const StatsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size12(context),
      children: const [
        GeneralStatsCard(),
        AverrageCard(),
        CheckoutCard(),
        TakesCard(),
      ],
    );
  }
}
