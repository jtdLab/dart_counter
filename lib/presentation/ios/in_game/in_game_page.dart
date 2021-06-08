import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/app_navigation_bar/widgets/app_navigation_bar_button.dart';
import 'package:dart_counter/presentation/ios/core/app_page.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/input_area/input_area.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/player_displayer/player_displayer.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';

class InGamePage extends StatelessWidget {
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
          PlayerDisplayer(),
          // TODO
          InputArea(
            onCheckPressed: () {},
            onDigitPressed: (digit) {},
            onDoPressed: () {},
            onEreasePressed: () {},
            onUndoPressed: () {},
          ),
        ],
      ),
    );
  }
}
