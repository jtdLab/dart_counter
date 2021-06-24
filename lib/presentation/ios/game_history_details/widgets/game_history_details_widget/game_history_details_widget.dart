import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class GameHistoryDetailsWidget extends StatelessWidget {
  const GameHistoryDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MainStatsCard(),
        AverrageCard(),
        CheckoutCard(),
        TakesCard(),
      ],
    );
  }
}
