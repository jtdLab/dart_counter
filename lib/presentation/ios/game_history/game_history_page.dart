import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/generated/locale_keys.g.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/game_history/widgets/game_history_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';

class GameHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 20, 40, 40),
          child: Column(
            children: [
              Row(
                children: [
                  CupertinoButton(
                    onPressed: () {
                      context.router.pop();
                    },
                    child: Image.asset(AppImages.chevron_back_new),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Text(
                    LocaleKeys.matchHistory.tr().toUpperCase(),
                    style: const TextStyle(
                      color: AppColors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                ],
              ),
              SizedBox(
                height: responsiveDouble(
                  context: context,
                  mobile:
                      ResponsiveDouble(normal: 40, large: 50, extraLarge: 60),
                ),
              ),
              GameHistoryCard(game: Game.dummy()),
              const Spacer(),
              GameHistoryCard(game: Game.dummy()),
              const Spacer(),
              GameHistoryCard(game: Game.dummy()),
              const Spacer(),
              GameHistoryCard(game: Game.dummy()),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
