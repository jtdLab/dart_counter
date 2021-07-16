import 'package:dart_counter/domain/play/game.dart';

import 'package:dart_counter/application/game_history/game_history_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/app_card.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';

// TODO only display game owners stats here atm the game owner is assumed to be players[0]
class GameHistoryCard extends StatelessWidget {
  final Game game;

  const GameHistoryCard({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        context
            .read<GameHistoryBloc>()
            .add(GameHistoryEvent.gameSelected(game: game));
        context.router.push(const GameHistoryDetailsPageRoute());
      },
      child: AppCard(
        headerBodySpacing: size6(context),
        leading: AutoSizeText(
          game.description().toUpperCase(),
          minFontSize: 8,
          maxFontSize: 14,
          maxLines: 1,
          style: CupertinoTheme.of(context)
              .textTheme
              .textStyle
              .copyWith(color: AppColors.white),
        ),
        trailing: AutoSizeText(
          '6 DAYS AGO', // TODO real date
          maxLines: 1,
          minFontSize: 6,
          maxFontSize: 10,
          style: CupertinoTheme.of(context)
              .textTheme
              .textStyle
              .copyWith(color: AppColors.white),
        ),
        children: [
          AppCardItem.large(
            content: Row(
              children: [
                const AppSpacer.normal(
                  orientation: Orientation.horizontal,
                ),
                Image.asset(AppImages.starNew),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(
                      flex: 3,
                    ),
                    Row(
                      children: [
                        AutoSizeText(
                          '${LocaleKeys.averrage.tr().toUpperCase()}:',
                          maxLines: 1,
                          minFontSize: 8,
                          maxFontSize: 14,
                          style: const TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        AutoSizeText(
                          game.players[0].stats.average.toStringAsFixed(2),
                          maxLines: 1,
                          minFontSize: 8,
                          maxFontSize: 14,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        AutoSizeText(
                          '${LocaleKeys.checkoutPercentageShort.tr().toUpperCase()}:',
                          maxLines: 1,
                          minFontSize: 8,
                          maxFontSize: 14,
                        ),
                        AutoSizeText(
                          game.players[0].stats.checkoutPercentage
                              .toStringAsFixed(2),
                          maxLines: 1,
                          minFontSize: 8,
                          maxFontSize: 14,
                        ),
                      ],
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                  ],
                ),
                const Spacer(),
                Image.asset(AppImages.chevronForwardNew),
                const AppSpacer.normal(
                  orientation: Orientation.horizontal,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
