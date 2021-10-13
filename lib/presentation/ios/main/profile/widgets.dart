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

class _GameHistoryButton extends StatelessWidget {
  const _GameHistoryButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigationBarButton(
      noPaddingRight: true,
      onPressed: () => context.router.push(const GameHistoryFlowRoute()),
      child: Image.asset(
        AppImages.clockNew,
      ),
    );
  }
}

// BODY
class _ProfileWidget extends StatelessWidget {
  const _ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final photoUrl = state.user.profile.photoUrl;

        return Column(
          children: [
            SizedBox(
              height: spacerSmall(context),
            ),
            ProfileImageDisplayer(
              photoUrl: photoUrl,
            ),
            SizedBox(
              height: spacerLarge(context),
            ),
            Container(
              height: size50(context),
              color: AppColors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Offline'.toUpperCase(),
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .textStyle
                          .copyWith(color: AppColors.white),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 500,
              child: PageView(
                children: [
                  const _PageX(),
                  const _PageX(),
                  const _PageX(),
                ],
              ),
            ),
            AppActionButton.normal(
              text: 'Game History',
              onPressed: () {},
            ),
          ],
        );
      },
    );
  }
}

// TODO sort in and rename refactor
class _PageX extends StatelessWidget {
  const _PageX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TODO extract to widget
        SizedBox(
          height: spacerSmall(context),
        ),
        const _CareerStatsDisplayer(),
      ],
    );
  }
}

class _CareerStatsDisplayer extends StatelessWidget {
  const _CareerStatsDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final careerStatsOnline =
            (state as ProfileInitial).user.profile.careerStatsOnline;

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
            _CareerStatsItem(
              value: '19',
              title: LocaleKeys.dartsPerLeg.tr().toUpperCase(),
            ),
            const _CareerStatsItem(
              title: '180s',
              value: '156',
            ),
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
