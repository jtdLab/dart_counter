part of 'post_game_page.dart';

// BODY
class _PostGameWidget extends StatelessWidget {
  const _PostGameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size12(context),
      children: const [
        StatsWidget(),
        _BackToHomeButton(),
      ],
    );
  }
}

// TODO real data
class _StatsDisplayer extends StatelessWidget {
  const _StatsDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        _StatsItem(
          title: LocaleKeys.averrage.tr().toUpperCase(),
          value: '75.36',
        ),
        _StatsItem(
          title: LocaleKeys.checkoutPercentageShort.tr().toUpperCase(),
          value: '31.47',
        ),
        _StatsItem(
          value: '81.23',
          title: LocaleKeys.firstNine.tr().toUpperCase(),
        ),
        _StatsItem(
          value: '19',
          title: LocaleKeys.dartsPerLeg.tr().toUpperCase(),
        ),
        const _StatsItem(
          title: '180',
          value: '156',
        ),
        _StatsItem(
          value: '111',
          title: LocaleKeys.games.tr().toUpperCase(),
        ),
        _StatsItem(
          value: '36',
          title: LocaleKeys.wins.tr().toUpperCase(),
        ),
        _StatsItem(
          value: '75',
          title: LocaleKeys.defeats.tr().toUpperCase(),
        ),
      ],
    );
  }
}

class _StatsItem extends StatelessWidget {
  final String title;
  final String value;

  const _StatsItem({
    Key? key,
    required this.title,
    required this.value,
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

class _BackToHomeButton extends StatelessWidget {
  const _BackToHomeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPrimaryButton(
      onPressed: () => context.router.replace(
        const HomePageRoute(),
      ),
      color: AppColors.red,
      text: LocaleKeys.mainMenu.tr().toUpperCase(),
    );
  }
}
