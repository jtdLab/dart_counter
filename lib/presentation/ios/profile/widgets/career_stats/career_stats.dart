import 'package:dart_counter/domain/careerStats/career_stats.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:dart_counter/presentation/ios/profile/widgets/career_stats/career_stats_card.dart';
import 'package:flutter/cupertino.dart';

class CareerStatsDisplayer extends StatelessWidget {

  final CareerStats careerStats;

  const CareerStatsDisplayer({Key? key, required this.careerStats}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: const CareerStatsCard(title: 'Average TODO', value: 75.36, trend: Trend.up,),
              ),
              SizedBox(
                width: responsiveDouble(
                  context: context,
                  mobile: ResponsiveDouble(normal: 4, large: 4, extraLarge: 6),
                ),
              ),
              Expanded(
                child: const CareerStatsCard(title: 'Doppel% TODO', value: 31.47, trend: Trend.up,),
              ),
            ],
          ),
        ),
        SizedBox(
          height: responsiveDouble(
            context: context,
            mobile: ResponsiveDouble(normal: 4, large: 4, extraLarge: 6),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: const CareerStatsCard(title: 'First9 TODO', value: 81.23, trend: Trend.down,),
              ),
              SizedBox(
                width: responsiveDouble(
                  context: context,
                  mobile: ResponsiveDouble(normal: 4, large: 4, extraLarge: 6),
                ),
              ),
              Expanded(
                child: const CareerStatsCard(title: 'Games TODO', value: 111,),
              ),
            ],
          ),
        ),
        SizedBox(
          height: responsiveDouble(
            context: context,
            mobile: ResponsiveDouble(normal: 4, large: 4, extraLarge: 6),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: const CareerStatsCard(title: 'Siege TODO', value: 75,),
              ),
              SizedBox(
                width: responsiveDouble(
                  context: context,
                  mobile: ResponsiveDouble(normal: 4, large: 4, extraLarge: 6),
                ),
              ),
              Expanded(
                child: const CareerStatsCard(title: 'Defeats TODO', value: 36,),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
