import 'package:auto_size_text/auto_size_text.dart';
import 'package:dart_counter/domain/play/player.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card/app_card.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_card/widgets/app_card_item.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/app_action_button.dart';

import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:kt_dart/kt.dart';

import 'widgets/dartbot_item.dart';
import 'widgets/player_item.dart';

class PlayerCard extends StatelessWidget {
  final KtList<Player> players;
  final VoidCallback onAddPlayer;
  final Function(int, int) onReorderPlayer;

  const PlayerCard({
    Key? key,
    required this.players,
    required this.onAddPlayer,
    required this.onReorderPlayer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      middle: AutoSizeText(
        LocaleKeys.player.tr().toUpperCase(),
        minFontSize: 8,
        maxFontSize: 14,
        maxLines: 1,
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: [
        AppCardItem.large(
          content: PlayerItem(),
        ),
        AppCardItem.large(
          content: DartBotItem(),
        ),
        AppActionButton.small(
          onPressed: () {},
          text: LocaleKeys.addPlayer.tr().toUpperCase(),
        ),
      ],
    );
  }
}
