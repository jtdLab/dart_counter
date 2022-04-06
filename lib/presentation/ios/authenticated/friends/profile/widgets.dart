part of 'profile_page.dart';

class FriendsProfileView extends StatelessWidget {
  const FriendsProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      navigationBar: const AppNavigationBar(
        leading: BackButton(),
        middle: _NameDisplayer(),
      ),
      child: SingleChildScrollView(
        child: BlocBuilder<FriendsBloc, FriendsState>(
          builder: (context, state) {
            final photoUrl = state.selectedFriend!.profile.photoUrl;
            final friendId = state.selectedFriend!.id;

            return Column(
              children: [
                SizedBox(
                  height: spacerLarge(context),
                ),
                ProfileImageDisplayer(
                  photoUrl: photoUrl,
                ),
                SizedBox(
                  height: spacerLarge(context),
                ),
                const _CareerStatsDisplayer(),
                SizedBox(
                  height: spacerNormal(context),
                ),
                AppActionButton.normal(
                  text: context.l10n.gameHistory.toUpperCase(),
                  onPressed: () => context.router.push(
                    GameHistoryFlowRoute(
                      gameHistoryBloc:
                          GameHistoryBloc.getIt(context.read<UserCubit>())
                            ..add(
                              GameHistoryEvent.fetchGameHistoryOnlineRequested(
                                userId: friendId,
                              ),
                            ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

// NAVBAR
class _NameDisplayer extends StatelessWidget {
  const _NameDisplayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FriendsBloc, FriendsState>(
      builder: (context, state) {
        final name = state.selectedFriend!.profile.name.getOrCrash();

        return Text(
          name.toUpperCase(),
        );
      },
    );
  }
}

// BODY
class _CareerStatsDisplayer extends StatelessWidget {
  const _CareerStatsDisplayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FriendsBloc, FriendsState>(
      builder: (context, state) {
        final careerStatsOnline =
            (state as FriendsInitial).selectedFriend!.profile.careerStatsOnline;

        return AppColumn(
          spacing: size6(context),
          children: [
            _CareerStatsItem(
              title: context.l10n.averrage.toUpperCase(),
              value: careerStatsOnline.average.toStringAsFixed(2),
              trend: careerStatsOnline.averageTrend,
            ),
            _CareerStatsItem(
              title: context.l10n.checkoutPercentageShort.toUpperCase(),
              value: careerStatsOnline.checkoutPercentage.toStringAsFixed(2),
              trend: careerStatsOnline.checkoutPercentageTrend,
            ),
            _CareerStatsItem(
              value: careerStatsOnline.firstNine.toStringAsFixed(2),
              title: context.l10n.firstNine.toUpperCase(),
              trend: careerStatsOnline.firstNineTrend,
            ),
            // TODO
            /**
            *  _CareerStatsItem(
              value: '19',
              title: context.l10n.dartsPerLeg.toUpperCase(),
            ),
            const _CareerStatsItem(
              title: '180s',
              value: '156',
            ),
            */
            _CareerStatsItem(
              value: careerStatsOnline.games.toString(),
              title: context.l10n.games.toUpperCase(),
            ),
            _CareerStatsItem(
              value: careerStatsOnline.wins.toString(),
              title: context.l10n.wins.toUpperCase(),
            ),
            _CareerStatsItem(
              value: careerStatsOnline.defeats.toString(),
              title: context.l10n.defeats.toUpperCase(),
            ),
          ],
        );
      },
    );
  }
}

class _CareerStatsItem extends StatelessWidget {
  final String title;
  final String value;
  final Trend trend;

  const _CareerStatsItem({
    Key? key,
    required this.title,
    required this.value,
    this.trend = Trend.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCardItem.normal(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    width: border4(context) / 2,
                  ),
                ),
              ),
              child: Center(
                child: Text(title),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    width: border4(context) / 2,
                  ),
                ),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (trend != Trend.none)
                      _TrendDisplayer(
                        trend: trend,
                      ),
                    Text(
                      value,
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .textStyle
                          .copyWith(fontSize: 28), // TODO
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TrendDisplayer extends StatelessWidget {
  final Trend trend;

  const _TrendDisplayer({
    Key? key,
    this.trend = Trend.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (trend == Trend.up) {
      return Image.asset(AppImages.trendUpNew);
    } else if (trend == Trend.down) {
      return Image.asset(AppImages.trendDownNew);
    } else {
      return Container();
    }
  }
}
