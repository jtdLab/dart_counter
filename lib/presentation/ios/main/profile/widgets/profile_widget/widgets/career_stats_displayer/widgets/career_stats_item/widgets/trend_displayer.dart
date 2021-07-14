import 'package:dart_counter/domain/user/career_stats.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';

class TrendDisplayer extends StatelessWidget {
  final Trend trend;

  const TrendDisplayer({
    Key? key,
    this.trend = Trend.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (trend == Trend.up) {
      return Image.asset(AppImages.trend_up_new);
    } else if (trend == Trend.down) {
      return Image.asset(AppImages.trend_down_new);
    } else {
      return Container();
    }
  }
}
