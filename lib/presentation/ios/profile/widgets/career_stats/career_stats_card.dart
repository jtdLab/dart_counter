import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/domain/careerStats/career_stats.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card.dart';
import 'package:flutter/cupertino.dart';

class CareerStatsCard extends StatelessWidget {
  final String title;
  final num value;
  final Trend trend;

  const CareerStatsCard(
      {required this.title, required this.value, this.trend = Trend.none});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      middle: AutoSizeText(
        title,
        minFontSize: 8,
        maxLines: 1,
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.white),
      ),
      body: Row(
        children: [
          const Spacer(),
          Visibility(
              visible: trend != Trend.none,
              child: Row(
                children: [
                  Image.asset(
                    trend == Trend.up ? AppImages.trendUp : AppImages.trendDown,
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                ],
              )),
          AutoSizeText(
            value.toString(),
            maxLines: 1,
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
