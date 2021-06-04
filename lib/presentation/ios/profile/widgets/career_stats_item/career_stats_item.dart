import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/profile/widgets/career_stats_item/widgets/trend_displayer.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class CareerStatsItem extends StatelessWidget {
  final String title;
  final String value;
  final Trend trend;

  const CareerStatsItem({
    Key? key,
    required this.title,
    required this.value,
    this.trend = Trend.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCardItem.normal(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    width: border4(context) / 2,
                  ),
                ),
              ),
              child: Center(
                child: Text(title),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    width: border4(context) / 2,
                  ),
                ),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (trend != Trend.none)
                      TrendDisplayer(
                        trend: trend,
                      ),
                    Text(
                      value,
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .textStyle
                          .copyWith(fontSize: 28),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
