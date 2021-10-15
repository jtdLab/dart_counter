// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// DOMAIN
import 'package:dart_counter/domain/play/player_snapshot.dart';

class YouReallyWantToCancelGameDialog extends StatelessWidget {
  final VoidCallback onYesPressed;

  const YouReallyWantToCancelGameDialog({
    Key? key,
    required this.onYesPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPage(
      backgroundColor: Colors.white.withOpacity(
        0.85,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AppColumn(
            spacing: size6(context),
            children: [
              Container(
                height: size55(context),
                color: AppColors.black,
                child: Center(
                  child: Text(
                    'Spiel Abbrechen?',
                    style: CupertinoTheme.of(context)
                        .textTheme
                        .textStyle
                        .copyWith(color: AppColors.white),
                  ),
                ),
              ),
              AppRow(
                spacing: size6(context),
                children: [
                  Expanded(
                    child: AppActionButton.normal(
                      color: AppColors.green,
                      fontColor: AppColors.white,
                      onPressed: onYesPressed,
                      text: 'JA',
                    ),
                  ),
                  Expanded(
                    child: AppActionButton.normal(
                      color: AppColors.red,
                      fontColor: AppColors.white,
                      onPressed: () => context.router.pop(),
                      text: 'NEIN',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/*
class StatsWidget extends StatelessWidget {
  final KtList<AbstractPlayerSnapshot> players;

  const StatsWidget({
    Key? key,
    required this.players,
  }) : super(key: key);

  // TODO use players

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size12(context),
      children: const [
        GeneralStatsCard(),
        AverrageCard(),
        CheckoutCard(),
        TakesCard(),
      ],
    );
  }
}

// TODO refactor +  use game ???
class AverrageCard extends StatelessWidget {
  const AverrageCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final game;

    return AppCard(
      headerBodySpacing: size6(context),
      leading: AutoSizeText(
        LocaleKeys.averrage.tr().toUpperCase(),
        minFontSize: 8,
        maxFontSize: 14,
        maxLines: 1,
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: [
        AppCardItem.custom(
          height: size70(context) + size12(context) + 1, // TODO
          content: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GameHistoryDetailsCardContentRow(
                title: LocaleKeys.averrage.tr().toUpperCase(),
                value: '0.00',
              ),
              GameHistoryDetailsCardContentRow(
                title: LocaleKeys.firstNine.tr().toUpperCase(),
                value: '0.00',
              ),
              GameHistoryDetailsCardContentRow(
                title: LocaleKeys.bestLeg.tr().toUpperCase(),
                value: '0.00',
              ),
              GameHistoryDetailsCardContentRow(
                title: LocaleKeys.worstLeg.tr().toUpperCase(),
                value: '0.00',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// TODO refactor +  use game ???
class CheckoutCard extends StatelessWidget {
  const CheckoutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final game;

    return AppCard(
      headerBodySpacing: size6(context),
      leading: AutoSizeText(
        LocaleKeys.checkout.tr().toUpperCase(),
        minFontSize: 8,
        maxFontSize: 14,
        maxLines: 1,
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: [
        AppCardItem.custom(
          height: size70(context),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GameHistoryDetailsCardContentRow(
                title: LocaleKeys.checkoutPercentageShort.tr().toUpperCase(),
                value: '0.00',
              ),
              GameHistoryDetailsCardContentRow(
                title: LocaleKeys.dartsPerLeg.tr().toUpperCase(),
                value: '0.00',
              ),
              GameHistoryDetailsCardContentRow(
                title: LocaleKeys.hightestFinish.tr().toUpperCase(),
                value: '0.00',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class GameHistoryDetailsCardContentRow extends StatelessWidget {
  final String title;
  final String value;

  const GameHistoryDetailsCardContentRow({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size6(context),
      ),
      child: Row(
        children: [
          Text(title),
          const Spacer(),
          Text(value),
        ],
      ),
    );
  }
}

// TODO refactor +  use game ???
class GeneralStatsCard extends StatelessWidget {
  const GeneralStatsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final game;
    return AppCard(
      headerBodySpacing: size6(context),
      leading: AutoSizeText(
        LocaleKeys.general.tr().toUpperCase(),
        minFontSize: 8,
        maxFontSize: 14,
        maxLines: 1,
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      /*trailing: AutoSizeText(
        'SEBI ABI 69',
        maxLines: 1,
        minFontSize: 8,
        maxFontSize: 14,
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),*/
      children: [
        AppCardItem.custom(
          height: size70(context),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GameHistoryDetailsCardContentRow(
                title: LocaleKeys.name.tr().toUpperCase(),
                value: 'SEBI ABI 69',
              ),
              GameHistoryDetailsCardContentRow(
                title: LocaleKeys.sets.tr().toUpperCase(),
                value: '0',
              ),
              GameHistoryDetailsCardContentRow(
                title: LocaleKeys.legs.tr().toUpperCase(),
                value: '0',
              )
            ],
          ),
        ),
      ],
    );
  }
}

// TODO refactor +  use game ???
class TakesCard extends StatelessWidget {
  const TakesCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final game;

    return AppCard(
      headerBodySpacing: size6(context),
      leading: AutoSizeText(
        'takes'.toUpperCase(),
        minFontSize: 8,
        maxFontSize: 14,
        maxLines: 1,
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: [
        AppCardItem.custom(
          height: size150(context) + 43, //TODO
          content: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              GameHistoryDetailsCardContentRow(
                title: '40+',
                value: '0',
              ),
              GameHistoryDetailsCardContentRow(
                title: '60+',
                value: '0',
              ),
              GameHistoryDetailsCardContentRow(
                title: '80+',
                value: '0',
              ),
              GameHistoryDetailsCardContentRow(
                title: '100+',
                value: '0',
              ),
              GameHistoryDetailsCardContentRow(
                title: '120+',
                value: '0',
              ),
              GameHistoryDetailsCardContentRow(
                title: '140+',
                value: '0',
              ),
              GameHistoryDetailsCardContentRow(
                title: '160+',
                value: '0',
              ),
              GameHistoryDetailsCardContentRow(
                title: '180',
                value: '0',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

*/

class StatsWidget extends StatelessWidget {
  final KtList<AbstractPlayerSnapshot> players;

  const StatsWidget({
    Key? key,
    required this.players,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: border4(context)),
          ),
          child: Row(
            children: [
              const _TitleColumn(),
              ...players.iter
                  .map((player) => _PlayerColumn(player: player))
                  .toList(),
            ],
          ),
        ),
      ],
    );
  }
}

class _TitleColumn extends StatelessWidget {
  const _TitleColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _Column(
      flex: 2,
      itemTextAlign: TextAlign.start,
      header: Center(
        child: Text(
          'Kategorie'.toUpperCase(),
          style: CupertinoTheme.of(context)
              .textTheme
              .textStyle
              .copyWith(color: AppColors.white),
        ),
      ), // TODO translate
      headerItem1: LocaleKeys.sets.tr(),
      headerItem2: LocaleKeys.legs.tr(),
      subheader1: Center(
        child: Text(
          LocaleKeys.averrage.tr().toUpperCase(),
          style: CupertinoTheme.of(context)
              .textTheme
              .textStyle
              .copyWith(color: AppColors.white),
        ),
      ),
      subHeader1Item1: LocaleKeys.averrage.tr(),
      subHeader1Item2: LocaleKeys.firstNine.tr(),
      subHeader1Item3: LocaleKeys.bestLeg.tr(),
      subHeader1Item4: LocaleKeys.worstLeg.tr(),
      subheader2: Center(
        child: Text(
          'Checkout'.toUpperCase(), // TODO translate
          style: CupertinoTheme.of(context)
              .textTheme
              .textStyle
              .copyWith(color: AppColors.white),
        ),
      ),
      subHeader2Item1: LocaleKeys.checkoutPercentageShort.tr(),
      subHeader2Item2: LocaleKeys.dartsPerLeg.tr(),
      subHeader2Item3: LocaleKeys.hightestFinishShort.tr(),
      subheader3: Center(
        child: Text(
          'Aufnahmen'.toUpperCase(), // TODO translate
          style: CupertinoTheme.of(context)
              .textTheme
              .textStyle
              .copyWith(color: AppColors.white),
        ),
      ),
      subHeader3Item1: '40+',
      subHeader3Item2: '60+',
      subHeader3Item3: '80+',
      subHeader3Item4: '100+',
      subHeader3Item5: '120+',
      subHeader3Item6: '140+',
      subHeader3Item7: '160+',
      subHeader3Item8: '180',
    );
  }
}

class _PlayerColumn extends StatelessWidget {
  final AbstractPlayerSnapshot player;
  final String? photoUrl;

  const _PlayerColumn({
    Key? key,
    required this.player,
    this.photoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _Column(
      header: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const AppRoundedImage.small(
            imageName: AppImages.photoPlaceholderNew, // TODO real photo
          ),
          AutoSizeText(
            player.name!.toUpperCase(),
            minFontSize: 1,
            maxFontSize: maxFontSizeSmall(context) - 1, // TODO
            style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                  color: AppColors.white,
                ),
          ),
        ],
      ),
      headerItem1: player.wonSets != null ? player.wonSets.toString() : '-',
      headerItem2: player.wonLegsCurrentSet.toString(),
      subHeader1Item1: player.stats.average.toString(),
      subHeader1Item2: player.stats.firstNineAverage.toString(),
      subHeader1Item3: player.stats.bestLegAverage != null
          ? player.stats.bestLegAverage.toString()
          : '-',
      subHeader1Item4: player.stats.worstLegAverage != null
          ? player.stats.worstLegAverage.toString()
          : '-',
      subHeader2Item1: player.stats.checkoutPercentage.toString(),
      subHeader2Item2: player.stats.averageDartsPerLeg != null
          ? player.stats.averageDartsPerLeg.toString()
          : '-',
      subHeader2Item3: player.stats.highestFinish != null
          ? player.stats.highestFinish.toString()
          : '-',
      subHeader3Item1: player.stats.fourtyPlus.toString(),
      subHeader3Item2: player.stats.sixtyPlus.toString(),
      subHeader3Item3: player.stats.eightyPlus.toString(),
      subHeader3Item4: player.stats.hundredPlus.toString(),
      subHeader3Item5: player.stats.hundredTwentyPlus.toString(),
      subHeader3Item6: player.stats.hundredFourtyPlus.toString(),
      subHeader3Item7: player.stats.hundredSixtyPlus.toString(),
      subHeader3Item8: player.stats.hundredEighty.toString(),
    );
  }
}

class _Column extends StatelessWidget {
  final int flex;

  final Widget header;
  final String headerItem1;
  final String headerItem2;
  final Widget? subheader1;
  final String subHeader1Item1;
  final String subHeader1Item2;
  final String subHeader1Item3;
  final String subHeader1Item4;
  final Widget? subheader2;
  final String subHeader2Item1;
  final String subHeader2Item2;
  final String subHeader2Item3;
  final Widget? subheader3;
  final String subHeader3Item1;
  final String subHeader3Item2;
  final String subHeader3Item3;
  final String subHeader3Item4;
  final String subHeader3Item5;
  final String subHeader3Item6;
  final String subHeader3Item7;
  final String subHeader3Item8;

  final TextAlign itemTextAlign;

  const _Column({
    Key? key,
    this.flex = 1,
    required this.header,
    required this.headerItem1,
    required this.headerItem2,
    this.subheader1,
    required this.subHeader1Item1,
    required this.subHeader1Item2,
    required this.subHeader1Item3,
    required this.subHeader1Item4,
    this.subheader2,
    required this.subHeader2Item1,
    required this.subHeader2Item2,
    required this.subHeader2Item3,
    this.subheader3,
    required this.subHeader3Item1,
    required this.subHeader3Item2,
    required this.subHeader3Item3,
    required this.subHeader3Item4,
    required this.subHeader3Item5,
    required this.subHeader3Item6,
    required this.subHeader3Item7,
    required this.subHeader3Item8,
    this.itemTextAlign = TextAlign.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Column(
        children: [
          Container(
            height: size50(context),
            width: double.infinity,
            color: AppColors.black,
            child: header,
          ),
          _ColumnItem(
            text: headerItem1,
            textAlign: itemTextAlign,
          ),
          _ColumnItem(
            text: headerItem2,
            textAlign: itemTextAlign,
          ),
          Container(
            height: size40(context),
            color: AppColors.black,
            child: subheader1,
          ),
          _ColumnItem(
            text: subHeader1Item1,
            textAlign: itemTextAlign,
          ),
          _ColumnItem(
            text: subHeader1Item2,
            textAlign: itemTextAlign,
          ),
          _ColumnItem(
            text: subHeader1Item3,
            textAlign: itemTextAlign,
          ),
          _ColumnItem(
            text: subHeader1Item4,
            textAlign: itemTextAlign,
          ),
          Container(
            height: size40(context),
            color: AppColors.black,
            child: subheader2,
          ),
          _ColumnItem(
            text: subHeader2Item1,
            textAlign: itemTextAlign,
          ),
          _ColumnItem(
            text: subHeader2Item2,
            textAlign: itemTextAlign,
          ),
          _ColumnItem(
            text: subHeader2Item3,
            textAlign: itemTextAlign,
          ),
          Container(
            height: size40(context),
            color: AppColors.black,
            child: subheader3,
          ),
          _ColumnItem(
            text: subHeader3Item1,
            textAlign: itemTextAlign,
          ),
          _ColumnItem(
            text: subHeader3Item2,
            textAlign: itemTextAlign,
          ),
          _ColumnItem(
            text: subHeader3Item3,
            textAlign: itemTextAlign,
          ),
          _ColumnItem(
            text: subHeader3Item4,
            textAlign: itemTextAlign,
          ),
          _ColumnItem(
            text: subHeader3Item5,
            textAlign: itemTextAlign,
          ),
          _ColumnItem(
            text: subHeader3Item6,
            textAlign: itemTextAlign,
          ),
          _ColumnItem(
            text: subHeader3Item7,
            textAlign: itemTextAlign,
          ),
          _ColumnItem(
            text: subHeader3Item8,
            textAlign: itemTextAlign,
          ),
        ],
      ),
    );
  }
}

class _ColumnItem extends StatelessWidget {
  final String text;
  final TextAlign textAlign;

  const _ColumnItem({
    Key? key,
    required this.text,
    this.textAlign = TextAlign.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2 * size12(context) + 5, // TODO responsive
      width: double.infinity,
      color: AppColors.white,
      child: Center(
        child: Text(
          text.toUpperCase(),
          textAlign: textAlign,
        ),
      ),
    );
  }
}
