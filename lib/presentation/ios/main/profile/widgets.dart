part of './profile_page.dart';

// NAVBAR
class _NameDisplayer extends StatelessWidget {
  const _NameDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final username = state.user.profile.username.getOrCrash();

        return Text(
          username.toUpperCase(),
        );
      },
    );
  }
}

// BODY
class _ProfileWidget extends HookWidget {
  const _ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    // needed cause pageControllers page cant be accessed before pageview is initialized
    final pageIndex = useState(0); // TODO move this to profile bloc

    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final careerStatsAll = state.careerStatsAll;
        final careerStatsOnline = state.user.profile.careerStatsOnline;
        final careerStatsOffline = state.user.careerStatsOffline;

        return Column(
          children: [
            /**
            SizedBox(
              height: spacerSmall(context),
            ),
            ProfileImageDisplayer(
              photoUrl: photoUrl,
            ),
            */
            SizedBox(
              height: spacerSmall(context),
            ),
            Container(
              height: size50(context),
              color: AppColors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: pageIndex.value != 0,
                      maintainSize: true,
                      maintainAnimation: true,
                      maintainState: true,
                      child: AppIconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () => pageController.previousPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeOut,
                        ),
                        icon: Image.asset(
                            AppImages.chevronWhiteBackNew), // TODO icon size
                      ),
                    ),
                    const Spacer(),
                    Text(
                      pageIndex.value == 0
                          ? LocaleKeys.general
                              .tr()
                              .toUpperCase() // TODO better string
                          : pageIndex.value == 1
                              ? LocaleKeys.online.tr().toUpperCase()
                              : LocaleKeys.offline.tr().toUpperCase(),
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .textStyle
                          .copyWith(color: AppColors.white),
                    ),
                    const Spacer(),
                    Visibility(
                      visible: pageIndex.value != 2,
                      maintainSize: true,
                      maintainAnimation: true,
                      maintainState: true,
                      child: AppIconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () => pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeOut,
                        ),
                        icon: Image.asset(
                            AppImages.chevronWhiteForwardNew), // TODO icon size
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: spacerSmall(context),
            ),
            SizedBox(
              height:
                  spacerSmall(context) + 8 * (size6(context) + size50(context)),
              child: PageView(
                onPageChanged: (newPageIndex) {
                  pageIndex.value = newPageIndex;
                },
                controller: pageController,
                children: [
                  _CareerStatsDisplayer(
                    careerStats: careerStatsAll,
                  ),
                  _CareerStatsDisplayer(
                    careerStats: careerStatsOnline,
                  ),
                  _CareerStatsDisplayer(
                    careerStats: careerStatsOffline,
                  ),
                ],
              ),
            ),
            AppActionButton.normal(
              text: LocaleKeys.gameHistory.tr().toUpperCase(),
              onPressed: () =>
                  context.router.push(const GameHistoryFlowRoute()),
            ),
          ],
        );
      },
    );
  }
}

class _CareerStatsDisplayer extends StatelessWidget {
  final CareerStats careerStats;

  const _CareerStatsDisplayer({
    Key? key,
    required this.careerStats,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        _CareerStatsItem(
          title: LocaleKeys.averrage.tr().toUpperCase(),
          value: careerStats.average.toStringAsFixed(2),
          trend: careerStats.averageTrend,
        ),
        _CareerStatsItem(
          title: LocaleKeys.checkoutPercentageShort.tr().toUpperCase(),
          value: careerStats.checkoutPercentage.toStringAsFixed(2),
          trend: careerStats.checkoutPercentageTrend,
        ),
        _CareerStatsItem(
          value: careerStats.firstNine.toStringAsFixed(2),
          title: LocaleKeys.firstNine.tr().toUpperCase(),
          trend: careerStats.firstNineTrend,
        ),
        _CareerStatsItem(
          value: '19',
          title: LocaleKeys.dartsPerLeg.tr().toUpperCase(),
        ),
        const _CareerStatsItem(
          title: '180s',
          value: '156',
        ),
        _CareerStatsItem(
          value: careerStats.games.toString(),
          title: LocaleKeys.games.tr().toUpperCase(),
        ),
        _CareerStatsItem(
          value: careerStats.wins.toString(),
          title: LocaleKeys.wins.tr().toUpperCase(),
        ),
        _CareerStatsItem(
          value: careerStats.defeats.toString(),
          title: LocaleKeys.defeats.tr().toUpperCase(),
        ),
      ],
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
