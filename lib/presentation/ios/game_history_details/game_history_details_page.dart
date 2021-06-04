import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/app_navigation_bar/widgets/app_navigation_bar_button.dart';
import 'package:dart_counter/presentation/ios/core/app_page.dart';
import 'package:dart_counter/presentation/ios/game_history_details/widgets/average_card.dart';
import 'package:dart_counter/presentation/ios/game_history_details/widgets/checkout_card.dart';
import 'package:dart_counter/presentation/ios/game_history_details/widgets/main_stats_card.dart';
import 'package:dart_counter/presentation/ios/game_history_details/widgets/takes_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';

class GameHistoryDetailsPage extends StatelessWidget {
  final Game game;

  const GameHistoryDetailsPage({Key? key, required this.game})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
      navigationBar: AppNavigationBar(
        leading: AppNavigationBarButton(
          onPressed: () => context.router.pop(),
          child: Image.asset(
            AppImages.chevron_back_new,
          ),
        ),
        middle: Text(
          'Best of 5 Legs'.toUpperCase(),
        ),
        trailing: AppNavigationBarButton(
          onPressed: () {},
          child: Image.asset(
            AppImages.stats_new,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MainStatsCard(),
          AverrageCard(),
          CheckoutCard(),
          TakesCard(),
        ],
      ),
    );
  }
}
