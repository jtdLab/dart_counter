// CORE
import 'package:dart_counter/application/main/training/shared/in_game/input_area/double_bobs_twenty_seven/key_board_event.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/double_bobs_twenty_seven/key_board_state.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/input_row/input_row_event.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/training/shared/in_game/input_area/darts_displayer/darts_displayer_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/game/dart.dart';

// TWO PLAYER DISPLAYER GRID
class TwoPlayerDisplayerGrid extends StatelessWidget {
  final Widget player1Item;
  final Widget player2Item;

  const TwoPlayerDisplayerGrid({
    Key? key,
    required this.player1Item,
    required this.player2Item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppRow(
      spacing: size6(context),
      children: [
        Expanded(child: player1Item),
        Expanded(child: player2Item),
      ],
    );
  }
}

// THREE PLAYER DISPLAYER GRID
class ThreePlayerDisplayerGrid extends StatelessWidget {
  final Widget player1Item;
  final Widget player2Item;
  final Widget player3Item;

  const ThreePlayerDisplayerGrid({
    Key? key,
    required this.player1Item,
    required this.player2Item,
    required this.player3Item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppRow(
      spacing: size6(context),
      children: [
        Expanded(child: player1Item),
        Expanded(
          child: AppColumn(
            spacing: size6(context),
            children: [
              Expanded(child: player2Item),
              Expanded(child: player3Item),
            ],
          ),
        ),
      ],
    );
  }
}

// FOUR PLAYER DISPLAYER GRID
class FourPlayerDisplayerGrid extends StatelessWidget {
  final Widget player1Item;
  final Widget player2Item;
  final Widget player3Item;
  final Widget player4Item;

  const FourPlayerDisplayerGrid({
    Key? key,
    required this.player1Item,
    required this.player2Item,
    required this.player3Item,
    required this.player4Item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppRow(
      spacing: size6(context),
      children: [
        Expanded(
          child: AppColumn(
            spacing: size6(context),
            children: [
              Expanded(child: player1Item),
              Expanded(child: player2Item),
            ],
          ),
        ),
        Expanded(
          child: AppColumn(
            spacing: size6(context),
            children: [
              Expanded(child: player3Item),
              Expanded(child: player4Item),
            ],
          ),
        ),
      ],
    );
  }
}

// PLAYER ITEM LARGE SINGLE/DOUBLE
class PlayerItemLargeSingleDouble extends StatelessWidget {
  final Color color;
  final String? photoUrl;
  final String name;
  final String subHeaderText;
  final int points;
  final List<Tuple2<String, String>> stats;

  const PlayerItemLargeSingleDouble({
    Key? key,
    required this.color,
    required this.photoUrl,
    required this.name,
    required this.subHeaderText,
    required this.points,
    required this.stats,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        Expanded(
          flex: 3,
          child: _NameAndProfilePhotoDisplayerLarge(
            color: color,
            photoUrl: photoUrl,
            name: name,
          ),
        ),
        Expanded(
          flex: 6,
          child: _PropertyCard(
            title: subHeaderText,
            property: '$points',
          ),
        ),
        Expanded(
          flex: 4,
          child: _PlayerItemLargeSingleDoubleStatsDisplayer(
            stats: stats,
          ),
        ),
      ],
    );
  }
}

class _PlayerItemLargeSingleDoubleStatsDisplayer extends StatelessWidget {
  final List<Tuple2<String, String>> stats;

  const _PlayerItemLargeSingleDoubleStatsDisplayer({
    Key? key,
    required this.stats,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: border4(context),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(size6(context)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: stats
              .map(
                (stat) => _PlayerItemLargeSingleDoubleStatDisplayer(
                  name: stat.value1,
                  value: stat.value2,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class _PlayerItemLargeSingleDoubleStatDisplayer extends StatelessWidget {
  final String name;
  final String value;

  const _PlayerItemLargeSingleDoubleStatDisplayer({
    Key? key,
    required this.name,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppRow(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      spacing: size6(context),
      children: [
        Text(name),
        Text(value),
      ],
    );
  }
}

// PLAYER ITEM SINGLE/DOUBLE
class PlayerItemSingleDouble extends StatelessWidget {
  final Color color;
  final String? photoUrl;
  final String name;
  final String subHeaderText;
  final int points;
  final List<Tuple2<String, String>> stats;

  const PlayerItemSingleDouble({
    Key? key,
    required this.color,
    required this.photoUrl,
    required this.name,
    required this.subHeaderText,
    required this.points,
    required this.stats,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: border4(context),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: _PlayerItemSingleDoubleHeader(
              color: color,
              name: name,
              photoUrl: photoUrl,
            ),
          ),
          Expanded(
            flex: 6,
            child: _PlayerItemSubHeader(text: subHeaderText),
          ),
          Expanded(
            flex: 30,
            child: _PlayerItemSingleDoublePointsDisplayer(
              points: points,
            ),
          ),
          Expanded(
            flex: 24,
            child: _PlayerItemSingleDoubleStatsDisplayer(
              stats: stats,
            ),
          ),
        ],
      ),
    );
  }
}

class _PlayerItemSingleDoubleHeader extends StatelessWidget {
  final Color color;
  final String name;
  final String? photoUrl;

  const _PlayerItemSingleDoubleHeader({
    Key? key,
    required this.color,
    required this.name,
    required this.photoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                color: color,
                child: Padding(
                  padding: EdgeInsets.all(size6(context) / 4),
                  child: Center(
                    child: AutoSizeText(
                      name,
                      maxLines: 1,
                      minFontSize: 4,
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .textStyle
                          .copyWith(color: AppColors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _PlayerItemSubHeader extends StatelessWidget {
  final String text;

  const _PlayerItemSubHeader({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black,
      child: Padding(
        padding: EdgeInsets.all(size6(context) / 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AutoSizeText(
              text,
              style: CupertinoTheme.of(context)
                  .textTheme
                  .textStyle
                  .copyWith(color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class _PlayerItemSingleDoublePointsDisplayer extends StatelessWidget {
  final int points;

  const _PlayerItemSingleDoublePointsDisplayer({
    Key? key,
    required this.points,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AutoSizeText(
        points.toString(),
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(fontSize: 60), // TODO size
        maxLines: 1,
      ),
    );
  }
}

class _PlayerItemSingleDoubleStatsDisplayer extends StatelessWidget {
  final List<Tuple2<String, String>> stats;

  const _PlayerItemSingleDoubleStatsDisplayer({
    Key? key,
    required this.stats,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: border4(context)),
        ),
      ),
      child: Column(
        children: stats
            .map(
              (stat) => Expanded(
                child: _PlayerItemSingleDoubleStatDisplayer(
                  name: stat.value1,
                  value: stat.value2,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class _PlayerItemSingleDoubleStatDisplayer extends StatelessWidget {
  final String name;
  final String value;

  const _PlayerItemSingleDoubleStatDisplayer({
    Key? key,
    required this.name,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppRow(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      spacing: size6(context),
      children: [
        Text(name),
        Text(value),
      ],
    );
  }
}

// PLAYER ITEM SMALL SINGLE/DOUBLE
class PlayerItemSmallSingleDouble extends StatelessWidget {
  final Color color;
  final String? photoUrl;
  final String name;
  final String subHeaderText;
  final int points;

  const PlayerItemSmallSingleDouble({
    Key? key,
    required this.color,
    required this.photoUrl,
    required this.name,
    required this.subHeaderText,
    required this.points,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: border4(context),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: _PlayerItemSmallSingleDoubleHeader(
              color: color,
              name: name,
              photoUrl: photoUrl,
            ),
          ),
          Expanded(
            flex: 6,
            child: _PlayerItemSmallSingleDoubleTargetDisplayer(
              text: subHeaderText,
            ),
          ),
          Expanded(
            flex: 17,
            child: _PlayerItemSmallSingleDoublePointsDisplayer(
              points: points,
            ),
          ),
        ],
      ),
    );
  }
}

class _PlayerItemSmallSingleDoubleHeader extends StatelessWidget {
  final Color color;
  final String name;
  final String? photoUrl;

  const _PlayerItemSmallSingleDoubleHeader({
    Key? key,
    required this.color,
    required this.name,
    required this.photoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                color: color,
                child: Padding(
                  padding: EdgeInsets.all(size6(context) / 4),
                  child: Center(
                    child: AutoSizeText(
                      name,
                      maxLines: 1,
                      minFontSize: 4,
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .textStyle
                          .copyWith(color: AppColors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        /**
           * Align(
            alignment: Alignment.centerLeft,
            child: AppRoundedImage.small(
              imageName: AppImages.photoPlaceholderNew, // TODO real photo url
              border: Border.all(
                width: border4(context) / 2,
              ),
            ),
          ),
           */
      ],
    );
  }
}

class _PlayerItemSmallSingleDoubleTargetDisplayer extends StatelessWidget {
  final String text;

  const _PlayerItemSmallSingleDoubleTargetDisplayer({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black,
      child: Padding(
        padding: EdgeInsets.all(size6(context) / 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AutoSizeText(
              text,
              maxLines: 1,
              minFontSize: 1,
              style: CupertinoTheme.of(context)
                  .textTheme
                  .textStyle
                  .copyWith(color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class _PlayerItemSmallSingleDoublePointsDisplayer extends StatelessWidget {
  final int points;

  const _PlayerItemSmallSingleDoublePointsDisplayer({
    Key? key,
    required this.points,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AutoSizeText(
        '$points',
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(fontSize: 40), // TODO font size
        maxLines: 1,
      ),
    );
  }
}

// PLAYER ITEM LARGE SCORE/BOBS27
class PlayerItemLargeScoreBobs27 extends StatelessWidget {
  final Color color;
  final String? photoUrl;
  final String name;
  final String subHeaderText;
  final String property;
  final String subProperty;

  const PlayerItemLargeScoreBobs27({
    Key? key,
    required this.color,
    required this.photoUrl,
    required this.name,
    required this.subHeaderText,
    required this.property,
    required this.subProperty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        const Spacer(flex: 2),
        Expanded(
          flex: 3,
          child: _NameAndProfilePhotoDisplayerLarge(
            color: color,
            photoUrl: photoUrl,
            name: name,
          ),
        ),
        Expanded(
          flex: 6,
          child: _PropertyCard(
            title: subHeaderText,
            property: property,
            subProperty: subProperty,
          ),
        ),
        const Spacer(flex: 2),
      ],
    );
  }
}

// PLAYER ITEM SCORE/BOBS27
class PlayerItemScoreBobs27 extends StatelessWidget {
  final Color color;
  final String? photoUrl;
  final String name;
  final String title1;
  final String value1;
  final String title2;
  final String value2;

  const PlayerItemScoreBobs27({
    Key? key,
    required this.color,
    required this.photoUrl,
    required this.name,
    required this.title1,
    required this.value1,
    required this.title2,
    required this.value2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: border4(context),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: _PlayerItemScoreBobs27Header(
              color: color,
              photoUrl: photoUrl,
              name: name,
            ),
          ),
          Expanded(
            flex: 6,
            child: _PlayerItemScoreBobs27Title1Displayer(
              text: title1,
            ),
          ),
          Expanded(
            flex: 30,
            child: _PlayerItemScoreBobs27Value1Displayer(
              value: value1,
            ),
          ),
          Expanded(
            flex: 6,
            child: _PlayerItemScoreBobs27Title2Displayer(
              text: title2,
            ),
          ),
          Expanded(
            flex: 18,
            child: _PlayerItemScoreBobs27Value2Displayer(
              value: value2,
            ),
          ),
        ],
      ),
    );
  }
}

class _PlayerItemScoreBobs27Header extends StatelessWidget {
  final Color color;
  final String? photoUrl;
  final String name;

  const _PlayerItemScoreBobs27Header({
    Key? key,
    required this.color,
    required this.photoUrl,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                color: color,
                child: Padding(
                  padding: EdgeInsets.all(size6(context) / 4),
                  child: Center(
                    child: AutoSizeText(
                      name,
                      maxLines: 1,
                      minFontSize: 4,
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .textStyle
                          .copyWith(color: AppColors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        /**
           * Align(
            alignment: Alignment.centerLeft,
            child: AppRoundedImage.small(
              imageName: AppImages.photoPlaceholderNew, // TODO real image
              border: Border.all(
                width: border4(context) / 2,
              ),
            ),
          ),
           */
      ],
    );
  }
}

class _PlayerItemScoreBobs27Title1Displayer extends StatelessWidget {
  final String text;

  const _PlayerItemScoreBobs27Title1Displayer({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black,
      child: Padding(
        padding: EdgeInsets.all(size6(context) / 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AutoSizeText(
              text,
              style: CupertinoTheme.of(context)
                  .textTheme
                  .textStyle
                  .copyWith(color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class _PlayerItemScoreBobs27Value1Displayer extends StatelessWidget {
  final String value;

  const _PlayerItemScoreBobs27Value1Displayer({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: border4(context)),
          bottom: BorderSide(width: border4(context)),
        ),
      ),
      child: Center(
        child: AutoSizeText(
          value,
          style: CupertinoTheme.of(context)
              .textTheme
              .textStyle
              .copyWith(fontSize: 40), // TODO
          maxLines: 1,
        ),
      ),
    );
  }
}

class _PlayerItemScoreBobs27Title2Displayer extends StatelessWidget {
  final String text;

  const _PlayerItemScoreBobs27Title2Displayer({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black,
      child: Padding(
        padding: EdgeInsets.all(size6(context) / 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AutoSizeText(
              text,
              style: CupertinoTheme.of(context)
                  .textTheme
                  .textStyle
                  .copyWith(color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class _PlayerItemScoreBobs27Value2Displayer extends StatelessWidget {
  final String value;

  const _PlayerItemScoreBobs27Value2Displayer({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      /** // TODO
      *  decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: border4(context)),
          bottom: BorderSide(width: border4(context)),
        ),
      ),
      */
      child: Center(
        child: AutoSizeText(
          value,
          style: CupertinoTheme.of(context)
              .textTheme
              .textStyle
              .copyWith(fontSize: 32), // TODO
          maxLines: 1,
        ),
      ),
    );
  }
}

// PLAYER ITEM SMALL SCORE/BOBS27
class PlayerItemSmallScoreBobs27 extends StatelessWidget {
  final Color color;
  final String? photoUrl;
  final String name;
  final String title;
  final String value;

  const PlayerItemSmallScoreBobs27({
    Key? key,
    required this.color,
    required this.photoUrl,
    required this.name,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: border4(context),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: _PlayerItemSmallScoreBobs27Header(
              color: color,
              photoUrl: photoUrl,
              name: name,
            ),
          ),
          Expanded(
            flex: 6,
            child: _PlayerItemSmallScoreBobs27TitleDisplayer(
              text: title,
            ),
          ),
          Expanded(
            flex: 17,
            child: _PlayerItemSmallScoreBobs27ValueDisplayer(value: value),
          ),
        ],
      ),
    );
  }
}

class _PlayerItemSmallScoreBobs27Header extends StatelessWidget {
  final Color color;
  final String? photoUrl;
  final String name;

  const _PlayerItemSmallScoreBobs27Header({
    Key? key,
    required this.color,
    required this.photoUrl,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                color: color,
                child: Padding(
                  padding: EdgeInsets.all(size6(context) / 4),
                  child: Center(
                    child: AutoSizeText(
                      name,
                      maxLines: 1,
                      minFontSize: 4,
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .textStyle
                          .copyWith(color: AppColors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        /**
           * Align(
            alignment: Alignment.centerLeft,
            child: AppRoundedImage.small(
              imageName: AppImages.photoPlaceholderNew, // TODO real image
              border: Border.all(
                width: border4(context) / 2,
              ),
            ),
          ),
           */
      ],
    );
  }
}

class _PlayerItemSmallScoreBobs27TitleDisplayer extends StatelessWidget {
  final String text;

  const _PlayerItemSmallScoreBobs27TitleDisplayer({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black,
      child: Padding(
        padding: EdgeInsets.all(size6(context) / 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AutoSizeText(
              text,
              maxLines: 1,
              minFontSize: 1,
              style: CupertinoTheme.of(context)
                  .textTheme
                  .textStyle
                  .copyWith(color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class _PlayerItemSmallScoreBobs27ValueDisplayer extends StatelessWidget {
  final String value;

  const _PlayerItemSmallScoreBobs27ValueDisplayer({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // TODO color
      child: Center(
        child: AutoSizeText(
          value,
          style: CupertinoTheme.of(context)
              .textTheme
              .textStyle
              .copyWith(fontSize: 40), // TODO
          maxLines: 1,
        ),
      ),
    );
  }
}

// SHARED
class _NameAndProfilePhotoDisplayerLarge extends StatelessWidget {
  final Color color;
  final String? photoUrl;
  final String name;

  const _NameAndProfilePhotoDisplayerLarge({
    Key? key,
    required this.color,
    required this.photoUrl,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(
              left: size12(context) + size6(context),
            ),
            child: Container(
              height: size40(context),
              decoration: BoxDecoration(
                color: color,
                border: Border.all(
                  width: border4(context),
                ),
              ),
              child: Center(
                child: Text(
                  name,
                  style: CupertinoTheme.of(context)
                      .textTheme
                      .textStyle
                      .copyWith(color: AppColors.white),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: AppRoundedImage.large(
            imageName: AppImages.photoPlaceholderNew, // TODO use photo url
            border: Border.all(
              width: border4(context),
            ),
          ),
        )
      ],
    );
  }
}

class _PropertyCard extends StatelessWidget {
  final String title;
  final String property;
  final String? subProperty;

  // TODO name better
  const _PropertyCard({
    Key? key,
    required this.title,
    required this.property,
    this.subProperty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Spacer(
          flex: 4,
        ),
        Expanded(
          flex: 7,
          child: AppColumn(
            spacing: size6(context),
            children: [
              Container(
                color: AppColors.black,
                child: Padding(
                  padding: EdgeInsets.all(size6(context) / 4),
                  child: Center(
                    child: Text(
                      title,
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .textStyle
                          .copyWith(color: AppColors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: border4(context),
                    ),
                  ),
                  child: subProperty != null
                      ? Column(
                          children: [
                            AutoSizeText(
                              property,
                              style: CupertinoTheme.of(context)
                                  .textTheme
                                  .textStyle
                                  .copyWith(fontSize: 60), // TODO size
                              maxLines: 1,
                            ),
                            AutoSizeText(
                              subProperty!,
                              style: CupertinoTheme.of(context)
                                  .textTheme
                                  .textStyle
                                  .copyWith(fontSize: 16), // TODO size
                              maxLines: 1,
                            ),
                          ],
                        )
                      : Center(
                          child: AutoSizeText(
                            property,
                            style: CupertinoTheme.of(context)
                                .textTheme
                                .textStyle
                                .copyWith(fontSize: 60), // TODO size
                            maxLines: 1,
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 4,
        ),
      ],
    );
  }
}

// TODO share with play
// DARTS DISPLAYER
class DartsDisplayer extends StatelessWidget {
  const DartsDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DartsDisplayerBloc, DartsDisplayerState>(
      builder: (context, state) {
        final darts = state.when(
          initial: () => const KtList<Dart>.empty(),
          darts: (darts) => darts.getOrCrash(),
        );

        return Container(
          color: AppColors.black,
          child: AppRow(
            spacing: size6(context),
            children: [
              const Spacer(),
              Image.asset(AppImages.flightWhiteOne),
              AutoSizeText(
                _mapDartToString(
                  dart: darts.size > 0 ? darts.get(0) : null,
                ),
                style: CupertinoTheme.of(context)
                    .textTheme
                    .textStyle
                    .copyWith(color: AppColors.white),
              ),
              const Spacer(),
              Image.asset(AppImages.flightWhiteTwo),
              AutoSizeText(
                _mapDartToString(
                  dart: darts.size > 1 ? darts.get(1) : null,
                ),
                style: CupertinoTheme.of(context)
                    .textTheme
                    .textStyle
                    .copyWith(color: AppColors.white),
              ),
              const Spacer(),
              Image.asset(AppImages.flightWhiteThree),
              AutoSizeText(
                _mapDartToString(
                  dart: darts.size > 2 ? darts.get(2) : null,
                ),
                style: CupertinoTheme.of(context)
                    .textTheme
                    .textStyle
                    .copyWith(color: AppColors.white),
              ),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }

  String _mapDartToString({
    Dart? dart,
  }) {
    if (dart == null) {
      return '-';
    } else {
      var string = '';
      switch (dart.type) {
        case DartType.single:
          string += '';
          break;
        case DartType.double:
          string += 'D';
          break;
        case DartType.triple:
          string += 'T';
          break;
      }

      return string + dart.value.toString();
    }
  }
}

// TODO share with play
// INPUT ROW
class InputRow extends StatelessWidget {
  const InputRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppRow(
      spacing: size6(context),
      children: const [
        Expanded(
          child: _UndoButton(),
        ),
        Expanded(
          child: _InputPointsDisplayer(),
        ),
        Expanded(
          child: _CommitButton(),
        ),
      ],
    );
  }
}

class _UndoButton extends StatelessWidget {
  const _UndoButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: () => context.read<Bloc<InputRowEvent, int>>().add(
            const InputRowEvent.undoPressed(),
          ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.red,
            width: border4(context),
          ),
        ),
        child: Center(
          child: Image.asset(AppImages.chevronRedBackNew),
        ),
      ),
    );
  }
}

class _InputPointsDisplayer extends StatelessWidget {
  const _InputPointsDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: border4(context),
        ),
      ),
      child: Center(
        child: BlocBuilder<Bloc<InputRowEvent, int>, int>(
          builder: (context, points) {
            return Text(
              '$points',
              style: const TextStyle(fontSize: 28), // TODO
            );
          },
        ),
      ),
    );
  }
}

class _CommitButton extends StatelessWidget {
  const _CommitButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: () => context.read<Bloc<InputRowEvent, int>>().add(
            const InputRowEvent.commitPressed(),
          ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.green,
            width: border4(context),
          ),
        ),
        child: Center(
          child: Image.asset(AppImages.chevronGreenForwardNew),
        ),
      ),
    );
  }
}

// TODO share with play
// STANDARD INPUT AREA
class StandardInputArea extends StatelessWidget {
  const StandardInputArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        Expanded(
          child: AppColumn(
            spacing: size6(context),
            children: const [
              Spacer(),
              Expanded(
                flex: 3,
                child: InputRow(),
              ),
            ],
          ),
        ),
        const Expanded(
          flex: 3,
          child: _StandardKeyBoard(),
        )
      ],
    );
  }
}

class _StandardKeyBoard extends StatelessWidget {
  const _StandardKeyBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        Expanded(
          child: AppRow(
            spacing: size6(context),
            children: [1, 2, 3]
                .map((digit) => _StandardDigitButton(digit: digit))
                .toList(),
          ),
        ),
        Expanded(
          child: AppRow(
            spacing: size6(context),
            children: [4, 5, 6]
                .map((digit) => _StandardDigitButton(digit: digit))
                .toList(),
          ),
        ),
        Expanded(
          child: AppRow(
            spacing: size6(context),
            children: [7, 8, 9]
                .map((digit) => _StandardDigitButton(digit: digit))
                .toList(),
          ),
        ),
        Expanded(
          child: AppRow(
            spacing: size6(context),
            children: const [
              Spacer(),
              _StandardDigitButton(digit: 0),
              _StandardEreaseButton(),
            ],
          ),
        ),
      ],
    );
  }
}

class _StandardDigitButton extends StatelessWidget {
  final int digit;

  const _StandardDigitButton({
    Key? key,
    required this.digit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppActionButton.flexible(
      fontSize: 28,
      color: AppColors.white,
      onPressed: () {}, // TODO
      text: digit.toString(),
    );
    /**
    *  // TODO dependency injection like this seems not to be good practice
    final pointsLeftCubit = context.read<PointsLeftCubit>();
    final pointsCubit = context.read<PointsCubit>();
    final advancedSettingsBloc = context.read<AdvancedSettingsBloc>();
    final dartUtils = getIt<IDartUtils>();

    return BlocProvider(
      create: (context) => StandardDigitButtonBloc(
        digit,
        pointsLeftCubit,
        pointsCubit,
        advancedSettingsBloc,
        dartUtils,
      )..add(const StandardDigitButtonEvent.started()),
      child: BlocBuilder<StandardDigitButtonBloc, StandardDigitButtonState>(
        builder: (context, state) {
          final disabled = state is StandardDigitButtonDisabled;

          return AppActionButton.flexible(
            fontSize: 28,
            color: AppColors.white,
            onPressed: disabled
                ? null
                : () => context
                    .read<StandardDigitButtonBloc>()
                    .add(const StandardDigitButtonEvent.pressed()),
            text: digit.toString(),
          );
        },
      ),
    );
    */
  }
}

class _StandardEreaseButton extends StatelessWidget {
  const _StandardEreaseButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppActionButton.flexible(
      color: AppColors.white,
      onPressed: () {}, // TODO
      icon: Image.asset(
        AppImages.chevronBackNew,
      ),
    );

    /**
     * // TODO dependency injection like this seems not to be good practice
    final pointsCubit = context.read<PointsCubit>();
    final advancedSettingsBloc = context.read<AdvancedSettingsBloc>();

    return BlocProvider(
      create: (context) => StandardEreaseButtonBloc(
        pointsCubit,
        advancedSettingsBloc,
      )..add(const StandardEreaseButtonEvent.started()),
      child: BlocBuilder<StandardEreaseButtonBloc, StandardEreaseButtonState>(
        builder: (context, state) {
          final disabled = state is StandardEreaseButtonDisabled;

          return AppActionButton.flexible(
            color: AppColors.white,
            onPressed: disabled
                ? null
                : () => context
                    .read<StandardEreaseButtonBloc>()
                    .add(const StandardEreaseButtonEvent.pressed()),
            icon: Image.asset(
              AppImages.chevronBackNew,
              color: disabled ? CupertinoColors.quaternarySystemFill : null,
            ),
          );
        },
      ),
    );
     */
  }
}

// TODO share with play
// DETAILED INPUT AREA
class DetailedInputArea extends StatelessWidget {
  const DetailedInputArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        Expanded(
          child: AppColumn(
            spacing: size6(context),
            children: const [
              Expanded(
                child: DartsDisplayer(),
              ),
              Expanded(
                flex: 3,
                child: InputRow(),
              ),
            ],
          ),
        ),
        const Expanded(
          flex: 3,
          child: _DetailedKeyBoard(),
        ),
      ],
    );
  }
}

class _DetailedKeyBoard extends StatelessWidget {
  const _DetailedKeyBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      /**
       * onTap: () => context
          .read<DetailedInputAreaBloc>()
          .add(const DetailedInputAreaEvent.unfocusRequested()),
       */
      child: AppColumn(
        spacing: size6(context),
        children: [
          Expanded(
            child: AppRow(
              spacing: size6(context),
              children: [16, 17, 18, 19, 20, 25]
                  .map((digit) => _DetailedDigitButton(digit: digit))
                  .toList(),
            ),
          ),
          Expanded(
            child: AppRow(
              spacing: size6(context),
              children: [10, 11, 12, 13, 14, 15]
                  .map((digit) => _DetailedDigitButton(digit: digit))
                  .toList(),
            ),
          ),
          Expanded(
            child: AppRow(
              spacing: size6(context),
              children: [4, 5, 6, 7, 8, 9]
                  .map((digit) => _DetailedDigitButton(digit: digit))
                  .toList(),
            ),
          ),
          Expanded(
            child: AppRow(
              spacing: size6(context),
              children: [
                Expanded(
                  child: AppRow(
                    spacing: size6(context),
                    children: [0, 1]
                        .map((digit) => _DetailedDigitButton(digit: digit))
                        .toList(),
                  ),
                ),
                Expanded(
                  child: AppRow(
                    spacing: size6(context),
                    children: [2, 3]
                        .map((digit) => _DetailedDigitButton(digit: digit))
                        .toList(),
                  ),
                ),
                Expanded(
                  child: AppRow(
                    spacing: size6(context),
                    children: const [
                      _DetailedEreaseButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailedDigitButton extends StatelessWidget {
  final int digit;

  const _DetailedDigitButton({
    Key? key,
    required this.digit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppActionButton.flexible(
      fontSize: 14,
      color: AppColors.white,
      onPressed: () {}, // TODO
      text: digit.toString(),
    );
    // TODO dependency injection like this seems not to be good practice
    /**
   *   final detailedInputAreaBloc = context.read<DetailedInputAreaBloc>();
    final dartsCubit = context.read<DartsCubit>();
    final pointsLeftCubit = context.read<PointsLeftCubit>();
    final advancedSettingsBloc = context.read<AdvancedSettingsBloc>();
    final dartUtils = getIt<IDartUtils>();


    return BlocProvider(
      create: (context) => DetailedDigitButtonBloc(
        digit,
        /**
         * detailedInputAreaBloc,
        dartsCubit,
        pointsLeftCubit,
        advancedSettingsBloc,
        dartUtils,
         */
      )..add(const DetailedDigitButtonEvent.started()),
      child: BlocBuilder<DetailedDigitButtonBloc, DetailedDigitButtonState>(
        builder: (context, state) {
          return state.maybeMap(
            focused: (focused) {
              final dartType = focused.dartType;
              final value = focused.value;

              final color = dartType == DartType.single
                  ? AppColors.black
                  : dartType == DartType.double
                      ? AppColors.red
                      : AppColors.orangeNew;

              final text = dartType == DartType.single
                  ? ''
                  : dartType == DartType.double
                      ? 'D'
                      : 'T';

              return AppActionButton.flexible(
                fontSize: 14,
                color: AppColors.white,
                onPressed: () => context
                    .read<DetailedDigitButtonBloc>()
                    .add(const DetailedDigitButtonEvent.pressed()),
                text: text + value.toString(),
                fontColor: color,
                borderColor: color,
              );
            },
            orElse: () {
              final disabled = state is DetailedDigitButtonDisabled;

              return AppActionButton.flexible(
                fontSize: 14,
                color: AppColors.white,
                onPressed: disabled
                    ? null
                    : () => context
                        .read<DetailedDigitButtonBloc>()
                        .add(const DetailedDigitButtonEvent.pressed()),
                text: digit.toString(),
              );
            },
          );
        },
      ),
    );
       */
  }
}

class _DetailedEreaseButton extends StatelessWidget {
  const _DetailedEreaseButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppActionButton.flexible(
      fontSize: 14,
      color: AppColors.white,
      onPressed: () {},
      /**
       * onPressed: disabled
          ? null
          : () => context
              .read<DetailedEreaseButtonBloc>()
              .add(const DetailedEreaseButtonEvent.pressed()),
       */
      icon: Image.asset(AppImages.chevronBackNew),
    );
  }
}

// DOUBLE BOBS27 INPUT AREA
class DoubleBobsTwentySevenInputArea extends StatelessWidget {
  const DoubleBobsTwentySevenInputArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        Expanded(
          child: AppColumn(
            spacing: size6(context),
            children: const [
              Expanded(
                child: DartsDisplayer(),
              ),
              Expanded(
                flex: 3,
                child: InputRow(),
              ),
            ],
          ),
        ),
        const Expanded(
          flex: 3,
          child: _DoubleBobsTwentySevenKeyBoard(),
        ),
      ],
    );
  }
}

class _DoubleBobsTwentySevenKeyBoard extends StatelessWidget {
  const _DoubleBobsTwentySevenKeyBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        AppActionButton.flexible(
          text: 'DOUBLE',
          fontSize: 18,
          color: AppColors.white,
          onPressed: () => context
              .read<Bloc<KeyBoardEvent, KeyBoardState>>()
              .add(const KeyBoardEvent.doubleHitPressed()),
        ),
        Expanded(
          child: AppRow(
            spacing: size6(context),
            children: [
              AppActionButton.flexible(
                text: 'MISSED',
                fontSize: 18,
                color: AppColors.white,
                onPressed: () => context
                    .read<Bloc<KeyBoardEvent, KeyBoardState>>()
                    .add(const KeyBoardEvent.missHitPressed()),
              ),
              AppActionButton.flexible(
                fontSize: 14,
                color: AppColors.white,
                onPressed: () => context
                    .read<Bloc<KeyBoardEvent, KeyBoardState>>()
                    .add(const KeyBoardEvent.ereasePressed()),
                icon: Image.asset(AppImages.chevronBackNew),
              )
            ],
          ),
        ),
      ],
    );
  }
}
