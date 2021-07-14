import 'package:dart_counter/domain/play/game.dart';

import 'package:dart_counter/application/game_history/game_history_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/app_card.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_card/widgets/app_card_item.dart';

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
          '6 DAYS AGO', // TODO
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
            content: _content(context, game: game),
          )
        ],
      ),
    );
  }

  // TODO make responsive and in seperate file
  Widget _content(BuildContext context, {required Game game}) => Row(
        children: [
          const SizedBox(width: 6),
          Image.asset(AppImages.star_new),
          const Spacer(),
          Align(
            alignment: Alignment.centerRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 3,
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: AutoSizeText(
                        '${LocaleKeys.averrage.tr().toUpperCase()}:',
                        maxLines: 1,
                        maxFontSize: 14,
                        style: const TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: AutoSizeText(
                        game.players[0].stats.average.toString(), // TODO
                        maxLines: 1,
                        maxFontSize: 14,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: AutoSizeText(
                        '${LocaleKeys.checkoutPercentageShort.tr().toUpperCase()}:',
                        maxLines: 1,
                        maxFontSize: 14,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: AutoSizeText(
                        game.players[0].stats.checkoutPercentage
                            .toString(), // TODO
                        maxLines: 1,
                        maxFontSize: 14,
                      ),
                    )
                  ],
                ),
                const Spacer(
                  flex: 3,
                ),
              ],
            ),
          ),
          const Spacer(),
          Image.asset(AppImages.chevron_forward_new),
          const SizedBox(width: 6),
        ],
      );
}
