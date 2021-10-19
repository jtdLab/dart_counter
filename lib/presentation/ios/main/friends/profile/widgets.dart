part of 'profile_page.dart';

// NAVBAR

class _NameDisplayer extends StatelessWidget {
  const _NameDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FriendsBloc, FriendsState>(
      builder: (context, state) {
        final username = state.selectedFriend!.profile.username.getOrCrash();

        return Text(
          username.toUpperCase(),
        );
      },
    );
  }
}

// BODY
class _FriendsProfileWidget extends StatelessWidget {
  const _FriendsProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FriendsBloc, FriendsState>(
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
              text: LocaleKeys.gameHistory.tr().toUpperCase(),
              onPressed: () => context.router.push(
                GameHistoryFlowRoute(
                  gameHistoryBloc: getIt<GameHistoryBloc>()
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
    );
  }
}

class _CareerStatsDisplayer extends StatelessWidget {
  const _CareerStatsDisplayer({
    Key? key,
  }) : super(key: key);

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
              title: LocaleKeys.averrage.tr().toUpperCase(),
              value: careerStatsOnline.average.toStringAsFixed(2),
              trend: careerStatsOnline.averageTrend,
            ),
            _CareerStatsItem(
              title: LocaleKeys.checkoutPercentageShort.tr().toUpperCase(),
              value: careerStatsOnline.checkoutPercentage.toStringAsFixed(2),
              trend: careerStatsOnline.checkoutPercentageTrend,
            ),
            _CareerStatsItem(
              value: careerStatsOnline.firstNine.toStringAsFixed(2),
              title: LocaleKeys.firstNine.tr().toUpperCase(),
              trend: careerStatsOnline.firstNineTrend,
            ),
            // TODO
            /**
            *  _CareerStatsItem(
              value: '19',
              title: LocaleKeys.dartsPerLeg.tr().toUpperCase(),
            ),
            const _CareerStatsItem(
              title: '180s',
              value: '156',
            ),
            */
            _CareerStatsItem(
              value: careerStatsOnline.games.toString(),
              title: LocaleKeys.games.tr().toUpperCase(),
            ),
            _CareerStatsItem(
              value: careerStatsOnline.wins.toString(),
              title: LocaleKeys.wins.tr().toUpperCase(),
            ),
            _CareerStatsItem(
              value: careerStatsOnline.defeats.toString(),
              title: LocaleKeys.defeats.tr().toUpperCase(),
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
