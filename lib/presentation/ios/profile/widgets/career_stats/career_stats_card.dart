import 'package:dart_counter/domain/user/career_stats.dart';
import 'package:flutter/cupertino.dart';

class CareerStatsCard extends StatelessWidget {
  final String title;
  final String value;
  final Trend trend;

  const CareerStatsCard(
      {required this.title, required this.value, this.trend = Trend.none});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
