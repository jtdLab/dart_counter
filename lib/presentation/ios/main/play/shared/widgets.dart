// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// DOMAIN
import 'package:dart_counter/domain/play/abstract_player_snapshot.dart';

// TODO what is here is it all located right and needed?

class StatsWidget extends StatefulWidget {
  final KtList<AbstractPlayerSnapshot> players;

  const StatsWidget({
    Key? key,
    required this.players,
  }) : super(key: key);

  @override
  State<StatsWidget> createState() => _StatsWidgetState();
}

class _StatsWidgetState extends State<StatsWidget> {
  final group = AutoSizeGroup();

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
              _TitleColumn(
                flex: widget.players.size > 2 ? 2 : 1,
              ),
              ...widget.players.iter
                  .map(
                    (player) => Provider.value(
                      value: group,
                      child: _PlayerColumn(player: player),
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
      ],
    );
  }
}

class _TitleColumn extends StatelessWidget {
  final int flex;

  const _TitleColumn({
    Key? key,
    required this.flex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _Column(
      flex: flex,
      itemTextAlign: TextAlign.start,
      header: Center(
        child: Text(
          LocaleKeys.category.tr().toUpperCase(),
          style: CupertinoTheme.of(context)
              .textTheme
              .textStyle
              .copyWith(color: AppColors.white),
        ),
      ),
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
          LocaleKeys.checkout.tr().toUpperCase(),
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
    String? photoUrl;

    final player = this.player;
    if (player is OnlinePlayerSnapshot) {
      photoUrl = player.photoUrl;
    }
    
    return _Column(
      header: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          if (photoUrl != null) ...[
            AppRoundedImage.small(
              child: CachedNetworkImageProvider(
                photoUrl,
              ),
            ),
          ] else ...[
            const AppRoundedImage.small(
              imageName: AppImages.photoPlaceholderNew,
            ),
          ],
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
      subHeader1Item1: player.stats.average?.toStringAsFixed(2) ?? '-',
      subHeader1Item2: player.stats.firstNineAverage?.toStringAsFixed(2) ?? '-',
      subHeader1Item3: player.stats.bestLegAverage != null
          ? player.stats.bestLegAverage!.toStringAsFixed(2)
          : '-',
      subHeader1Item4: player.stats.worstLegAverage != null
          ? player.stats.worstLegAverage!.toStringAsFixed(2)
          : '-',
      // TODO - when 0 darts on double
      subHeader2Item1: player.stats.checkoutPercentage != null
          ? player.stats.checkoutPercentage!.toStringAsFixed(2)
          : '-',
      subHeader2Item2: player.stats.averageDartsPerLeg != null
          ? player.stats.averageDartsPerLeg!.toStringAsFixed(2)
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
    AutoSizeGroup? group;
    try {
      group = context.read<AutoSizeGroup>();
    } catch (_) {
      group = null;
    }

    return Container(
      height: _height(context),
      width: double.infinity,
      color: AppColors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: AutoSizeText(
            text.toUpperCase(),
            maxLines: 1,
            minFontSize: 4,
            textAlign: textAlign,
            group: group,
          ),
        ),
      ),
    );
  }

  double _height(BuildContext context) => responsiveValue(
        context,
        defaultValue: 29,
        mobileSmall: 21,
        mobileNormal: 25,
        mobileLarge: 29,
        mobileExtraLarge: 33,
      );
}
