part of './overview_page.dart';

class GameHistoryOverviewView extends StatelessWidget {
  const GameHistoryOverviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      navigationBar: AppNavigationBar(
        leading: const BackButton(),
        middle: Text(
          context.l10n.gameHistory.toUpperCase(),
        ),
      ),
      child: SingleChildScrollView(
        child: BlocBuilder<GameHistoryBloc, GameHistoryState>(
          builder: (context, state) {
            return state.map(
              loadInProgress: (_) => const LoadingWidget(),
              loadSuccess: (loadSucess) {
                final games = loadSucess.gameHistory.getOrCrash();

                if (games.isEmpty()) {
                  return Center(
                    child: Text(context.l10n.noGamesFound.toUpperCase()),
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
        ),
      ),
    );
  }
}

// BODY
// TODO only display game owners stats here atm the game owner is assumed to be players[0]
class _GameHistoryCard extends StatelessWidget {
  final AbstractGame game;

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
        context.router.push(const GameHistoryDetailsPageRoute());
      },
      child: AppCard(
        headerBodySpacing: 0,
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
          // TODO works?
          timeago.format(game.createdAt, locale: context.l10n.localeName),
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
                SizedBox(
                  width: spacerNormal(context),
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
                          '${context.l10n.averrage.toUpperCase()}:',
                          maxLines: 1,
                          minFontSize: 8,
                          maxFontSize: 14,
                          style: const TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        AutoSizeText(
                          game.players[0].stats.average?.toStringAsFixed(2) ??
                              '-',
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
                          '${context.l10n.checkoutPercentageShort.toUpperCase()}:',
                          maxLines: 1,
                          minFontSize: 8,
                          maxFontSize: 14,
                        ),
                        AutoSizeText(
                          game.players[0].stats.checkoutPercentage != null
                              ? game.players[0].stats.checkoutPercentage!
                                  .toStringAsFixed(2)
                              : '-',
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
                SizedBox(
                  width: spacerNormal(context),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
