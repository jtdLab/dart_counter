import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_navigation_bar/widgets/app_navigation_bar_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_page.dart';
import 'package:dart_counter/presentation/ios/game_history/widgets/game_history_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:auto_route/auto_route.dart';

class GameHistoryPage extends StatelessWidget {
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
          LocaleKeys.matchHistory.tr().toUpperCase(),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GameHistoryCard(game: Game.dummy()),
          GameHistoryCard(game: Game.dummy()),
          GameHistoryCard(game: Game.dummy()),
          GameHistoryCard(game: Game.dummy()),
        ],
      ),
    );
  }
}
