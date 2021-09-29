part of './profile_page.dart';

// Navbar
class NameDisplayer extends StatelessWidget {
  const NameDisplayer({
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

class GameHistoryButton extends StatelessWidget {
  const GameHistoryButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigationBarButton(
      onPressed: () => context.router.push(const GameHistoryFlowRoute()),
      child: Image.asset(
        AppImages.clockNew,
      ),
    );
  }
}

// Body
class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final photoUrl = state.user.profile.photoUrl;

        return Column(
          children: [
            const AppSpacer.small(),
            ProfileImageDisplayer(
              photoUrl: photoUrl,
            ),
            const AppSpacer.large(),
            Container(
              height: size50(context),
              color: AppColors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppNavigationBarButton(
                      // TODO not navbarbutton here
                      onPressed: () {},
                      child: Image.asset(AppImages.chevronWhiteBackNew),
                    ),
                    Text(
                      'Offline'.toUpperCase(),
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .textStyle
                          .copyWith(color: AppColors.white),
                    ),
                    AppNavigationBarButton(
                      // TODO not navbar button here
                      onPressed: () {},
                      child: Image.asset(AppImages.chevronWhiteForwardNew),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 500,
              child: PageView(
                children: [
                  const PageX(),
                  const PageX(),
                  const PageX(),
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
class PageX extends StatelessWidget {
  const PageX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TODO extract to widget
        const AppSpacer.small(),
        const CareerStatsDisplayer(),
      ],
    );
  }
}

class CareerStatsDisplayer extends StatelessWidget {
  const CareerStatsDisplayer({
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
            CareerStatsItem(
              title: LocaleKeys.averrage.tr().toUpperCase(),
              value: careerStatsOnline.average.toStringAsFixed(2),
              trend: careerStatsOnline.averageTrend,
            ),
            CareerStatsItem(
              title: LocaleKeys.checkoutPercentageShort.tr().toUpperCase(),
              value: careerStatsOnline.checkoutPercentage.toStringAsFixed(2),
              trend: careerStatsOnline.checkoutPercentageTrend,
            ),
            CareerStatsItem(
              value: careerStatsOnline.firstNine.toStringAsFixed(2),
              title: LocaleKeys.firstNine.tr().toUpperCase(),
              trend: careerStatsOnline.firstNineTrend,
            ),
            CareerStatsItem(
              value: '19',
              title: LocaleKeys.dartsPerLeg.tr().toUpperCase(),
            ),
            const CareerStatsItem(
              title: '180s',
              value: '156',
            ),
            CareerStatsItem(
              value: careerStatsOnline.games.toString(),
              title: LocaleKeys.games.tr().toUpperCase(),
            ),
            CareerStatsItem(
              value: careerStatsOnline.wins.toString(),
              title: LocaleKeys.wins.tr().toUpperCase(),
            ),
            CareerStatsItem(
              value: careerStatsOnline.defeats.toString(),
              title: LocaleKeys.defeats.tr().toUpperCase(),
            ),
          ],
        );
      },
    );
  }
}

class CareerStatsItem extends StatelessWidget {
  final String title;
  final String value;
  final Trend trend;

  const CareerStatsItem({
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
                      TrendDisplayer(
                        trend: trend,
                      ),
                    Text(
                      value,
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .textStyle
                          .copyWith(fontSize: 28),
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

class TrendDisplayer extends StatelessWidget {
  final Trend trend;

  const TrendDisplayer({
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
