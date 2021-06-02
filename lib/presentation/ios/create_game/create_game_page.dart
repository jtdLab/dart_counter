import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/app_navigation_bar/widgets/app_navigation_bar_button.dart';
import 'package:dart_counter/presentation/ios/core/app_page.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_action_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/layout/app_spacer.dart';
import 'package:dart_counter/presentation/ios/create_game/widgets/game_settings_card.dart';
import 'package:dart_counter/presentation/ios/create_game/widgets/player_card/player_card.dart';
import 'package:dart_counter/presentation/ios/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:auto_route/auto_route.dart';

import 'widgets/dartbot_card.dart';

class CreateGamePage extends StatelessWidget {
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
          LocaleKeys.createGame.tr().toUpperCase(),
        ),
      ),
      child: Column(
        children: [
          const Spacer(),
          Visibility(
            child: DartBotCard(),
          ),
          const AppSpacer.large(),
          PlayerCard(),
          const AppSpacer.large(),
          GameSettingsCard(),
          const AppSpacer.normal(),
          _playButton(context),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _playButton(BuildContext context) => AppActionButton.large(
        onPressed: () => context.router.push(const InGamePageRoute()),
        icon: Image.asset(AppImages.target_new),
        text: LocaleKeys.play.tr().toUpperCase(),
      );
}
