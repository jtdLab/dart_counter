import 'package:dart_counter/domain/play/player_snapshot.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

import 'widgets/widgets.dart';

class StatsWidget extends StatelessWidget {
  final KtList<AbstractPlayerSnapshot> players;

  const StatsWidget({
    Key? key,
    required this.players,
  }) : super(key: key);

  // TODO use players

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
