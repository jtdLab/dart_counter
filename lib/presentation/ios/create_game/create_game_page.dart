import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_navigation_bar/widgets/app_navigation_bar_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_page.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_spacer.dart';
import 'package:dart_counter/presentation/ios/create_game/widgets/game_settings_card.dart';
import 'package:dart_counter/presentation/ios/create_game/widgets/play_button.dart';
import 'package:dart_counter/presentation/ios/create_game/widgets/player_card/player_card.dart';
import 'package:dart_counter/presentation/ios/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/dartbot_card.dart';

class CreateGamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayBloc, PlayState>(
      builder: (context, state) {
        return AppPage(
          maxHeight: 806, // TODO
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
          child: _CreateGameWidget(
            game: Game.dummy(),
          ),
        );
      },
    );
  }
}

class _CreateGameWidget extends StatelessWidget {
  final Game game;

  const _CreateGameWidget({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: game.hasDartBot(),
          child: DartBotCard(
            onPressed: () {},
          ),
        ),
        const AppSpacer.large(),
        PlayerCard(
          onAddPlayer: () {},
          onReorderPlayer: (oldPos, newPos) {},
          players: game.players,
        ),
        const AppSpacer.large(),
        GameSettingsCard(
          startingPoints: game.startingPoints,
          onStartingPointsChanged: (newStartingPoints) {},
          mode: game.mode,
          onModeChanged: (newMode) {},
          size: game.size,
          onSizeChanged: (newSize) {},
          type: game.type,
          onTypeChanged: (newType) {},
        ),
        const AppSpacer.normal(),
        PlayButton(
          onPressed: () {
            context.router.replace(const InGamePageRoute());
          },
        ),
      ],
    );
  }
}
