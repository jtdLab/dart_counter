part of './overview_page.dart';

class _OverviewWidget extends StatelessWidget {
  const _OverviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameHistoryBloc, GameHistoryState>(
      builder: (context, state) {
        return state.map(
          loadInProgress: (_) => const LoadingWidget(),
          loadSuccess: (loadSucess) {
            final games = loadSucess.gameHistory.getOrCrash();

            if (games.size == 0) {
              return Center(
                child: Text(LocaleKeys.noGamesFound.tr().toUpperCase()),
              );
            }

            return AppColumn(
              spacing: size12(context),
              children: [
                for (final game in games.iter) _GameHistoryCard(game: game),
              ],
            );
          },
          loadFailure: (_) {
            // TODO real error displayer
            return const Center(
              child: Text('Could not load games.'),
            );
          },
        );
      },
    );
  }
}

// TODO only display game owners stats here atm the game owner is assumed to be players[0]
class _GameHistoryCard extends StatelessWidget {
  final Game game;

  const _GameHistoryCard({
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
        context.router.push(const DetailsPageRoute());
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
          timeago.format(
            game.createdAt,
            locale: context.locale.languageCode,
          ),
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
