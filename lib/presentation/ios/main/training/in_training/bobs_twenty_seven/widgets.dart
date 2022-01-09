part of 'in_bobs_twenty_seven_training_page.dart';

class _InBobsTwentySevenTrainingWidget extends StatelessWidget {
  const _InBobsTwentySevenTrainingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        Expanded(
          flex: 45,
          child: BlocBuilder<TrainingBloc, TrainingState>(
            builder: (context, state) {
              final amountOfPlayers = state.gameSnapshot.players.size;

              if (amountOfPlayers == 1) {
                return const _OnePlayerDisplayer();
              } else if (amountOfPlayers == 2) {
                return const _TwoPlayerDisplayer();
              } else if (amountOfPlayers == 3) {
                return const _ThreePlayerDisplayer();
              } else {
                return const _FourPlayerDisplayer();
              }
            },
          ),
        ),
        const Expanded(
          flex: 55,
          child: _InputArea(),
        ),
      ],
    );
  }
}

// ONE PLAYER DISPLAYER
class _OnePlayerDisplayer extends StatelessWidget {
  const _OnePlayerDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: const [
        Expanded(
          flex: 3,
          child: _OnePlayerHeader(),
        ),
        Expanded(
          flex: 6,
          child: _OnePlayerCenter(),
        ),
        Spacer(flex: 4)
      ],
    );
  }
}

// SHARED ???? with play and other training one player displayer
class _OnePlayerHeader extends StatelessWidget {
  const _OnePlayerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainingBloc, TrainingState>(
      // TODO is this builder most inner positioned
      builder: (context, state) {
        final player = state.gameSnapshot.players[0];

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
                    color: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                    border: Border.all(
                      width: border4(context),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      player.name!,
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
                imageName: AppImages.photoPlaceholderNew,
                border: Border.all(
                  width: border4(context),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

class _OnePlayerCenter extends StatelessWidget {
  const _OnePlayerCenter({
    Key? key,
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
            children: const [
              _OnePlayerHighestPointsDisplayer(),
              Expanded(
                child: _OnePlayerPointsAndCheckoutDisplayer(),
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

class _OnePlayerHighestPointsDisplayer extends StatelessWidget {
  const _OnePlayerHighestPointsDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainingBloc, TrainingState>(
      // TODO is this builder most inner positioned
      builder: (context, state) {
        final player =
            state.gameSnapshot.players[0] as BobsTwentySevenPlayerSnapshot;

        return Container(
          color: AppColors.black,
          child: Padding(
            padding: EdgeInsets.all(size6(context) / 4),
            child: Center(
              child: Text(
                // TODO translate
                'BEST: ${player.highestPoints}',
                style: CupertinoTheme.of(context)
                    .textTheme
                    .textStyle
                    .copyWith(color: AppColors.white),
              ),
            ),
            /**
            *  child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (player.wonSets != null) ...[
                  Text(
                    'S:${player.wonSets}',
                    style: CupertinoTheme.of(context)
                        .textTheme
                        .textStyle
                        .copyWith(color: AppColors.white),
                  ),
                ],
                Text(
                  'L:${player.wonLegsCurrentSet}',
                  style: CupertinoTheme.of(context)
                      .textTheme
                      .textStyle
                      .copyWith(color: AppColors.white),
                ),
              ],
            ),
            */
          ),
        );
      },
    );
  }
}

class _OnePlayerPointsAndCheckoutDisplayer extends StatelessWidget {
  const _OnePlayerPointsAndCheckoutDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainingBloc, TrainingState>(
      // TODO is this builder most inner positioned
      builder: (context, state) {
        final player =
            state.gameSnapshot.players[0] as BobsTwentySevenPlayerSnapshot;

        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: border4(context),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 6,
                child: Center(
                  child: AutoSizeText(
                    player.points.toString(),
                    style: CupertinoTheme.of(context)
                        .textTheme
                        .textStyle
                        .copyWith(fontSize: 40), // TODO
                    maxLines: 1,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: AutoSizeText(
                    player.checkoutPercentage?.toString() ?? '--',
                    maxLines: 1,
                    maxFontSize: 13,
                    minFontSize: 6,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// TWO PLAYER DISPLAYER
class _TwoPlayerDisplayer extends StatelessWidget {
  const _TwoPlayerDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainingBloc, TrainingState>(
      builder: (context, state) {
        final players = state.gameSnapshot.players;

        return AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: PlayerItem(
                player: players[0] as BobsTwentySevenPlayerSnapshot,
              ),
            ),
            Expanded(
              child: PlayerItem(
                player: players[1] as BobsTwentySevenPlayerSnapshot,
              ),
            ),
          ],
        );
      },
    );
  }
}

// THREE PLAYER DISPLAYER
class _ThreePlayerDisplayer extends StatelessWidget {
  const _ThreePlayerDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainingBloc, TrainingState>(
      builder: (context, state) {
        final players = state.gameSnapshot.players;

        return AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: PlayerItem(
                player: players[0] as BobsTwentySevenPlayerSnapshot,
              ),
            ),
            Expanded(
              child: AppColumn(
                spacing: size6(context),
                children: [
                  PlayerItemSmall(
                    player: players[2] as BobsTwentySevenPlayerSnapshot,
                  ),
                  PlayerItemSmall(
                    player: players[1] as BobsTwentySevenPlayerSnapshot,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

// FOUR PLAYER DISPLAYER
class _FourPlayerDisplayer extends StatelessWidget {
  const _FourPlayerDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainingBloc, TrainingState>(
      builder: (context, state) {
        final players = state.gameSnapshot.players;

        return AppColumn(
          spacing: size6(context),
          children: [
            Expanded(
              flex: 3,
              child: AppRow(
                spacing: size6(context),
                children: [
                  PlayerItemSmall(
                    player: players[0] as BobsTwentySevenPlayerSnapshot,
                  ),
                  PlayerItemSmall(
                    player: players[1] as BobsTwentySevenPlayerSnapshot,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: AppRow(
                spacing: size6(context),
                children: [
                  PlayerItemSmall(
                    player: players[2] as BobsTwentySevenPlayerSnapshot,
                  ),
                  PlayerItemSmall(
                    player: players[3] as BobsTwentySevenPlayerSnapshot,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _InputArea extends StatelessWidget {
  static const flexTop = 1;
  static const flexBottom = 3;

  const _InputArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        Expanded(
          flex: flexTop,
          child: AppColumn(
            spacing: size6(context),
            children: [
              const Expanded(
                child: DartsDisplayer(
                  darts: KtList.empty(),
                ),
              ),

              // TODO expanded 1 ebene down
              Expanded(
                flex: 3,
                child: InputRow(
                  onUndoPressed: () => context
                      .read<BobsTwentySevenBloc>()
                      .add(const BobsTwentySevenEvent.undoPressed()),
                  onPerformThrowPressed: () => context
                      .read<BobsTwentySevenBloc>()
                      .add(const BobsTwentySevenEvent.performPressed()),
                  points: 0, // TODO
                ),
              ),
            ],
          ),
        ),
        const Expanded(
          flex: flexBottom,
          child: _KeyBoard(),
        ),
      ],
    );
  }
}

class _KeyBoard extends StatelessWidget {
  const _KeyBoard({
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
              .read<BobsTwentySevenBloc>()
              .add(const BobsTwentySevenEvent.doubleHitPressed()),
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
                    .read<BobsTwentySevenBloc>()
                    .add(const BobsTwentySevenEvent.missHitPressed()),
              ),
              AppActionButton.flexible(
                fontSize: 14,
                color: AppColors.white,
                onPressed: () {},
                icon: Image.asset(AppImages.chevronBackNew),
              )
            ],
          ),
        ),
      ],
    );
  }
}

// TODO impl
// SHARED
// PLAYER ITEM
class PlayerItem extends StatelessWidget {
  // final ProfileImagePosition profileImagePosition; TODO
  final BobsTwentySevenPlayerSnapshot player;

  const PlayerItem({
    Key? key,
    required this.player,
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
            child: _PlayerItemHeader(
              name: player
                  .name!, // TODO DartBot has no name maybe do dartbot into seperate item
            ),
          ),
          Expanded(
            flex: 6,
            child: _PlayerItemHighestPointsDisplayer(
              highestPoints: player.highestPoints,
            ),
          ),
          Expanded(
            flex: 30,
            child: _PlayerItemPointsDisplayer(
              points: player.points,
            ),
          ),
          // TODO introduce a super widghet to this and next widgets with them as a part ??
          const Expanded(
            flex: 6,
            child: _PlayerItemCheckoutTitleDisplayer(),
          ),
          Expanded(
            flex: 18,
            child: _PlayerItemCheckoutDisplayer(
              checkoutPercentage: player.checkoutPercentage,
            ),
          ),
        ],
      ),
    );
  }
}

class _PlayerItemHeader extends StatelessWidget {
  final String? photoUrl;
  final String name;

  const _PlayerItemHeader({
    Key? key,
    this.photoUrl,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            //const Spacer(),
            Expanded(
              flex: 5,
              child: Container(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
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

class _PlayerItemHighestPointsDisplayer extends StatelessWidget {
  final int highestPoints;

  const _PlayerItemHighestPointsDisplayer({
    Key? key,
    required this.highestPoints,
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
              'BEST: $highestPoints',
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

class _PlayerItemPointsDisplayer extends StatelessWidget {
  final int points;

  const _PlayerItemPointsDisplayer({
    Key? key,
    required this.points,
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
          points.toString(),
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

class _PlayerItemCheckoutTitleDisplayer extends StatelessWidget {
  const _PlayerItemCheckoutTitleDisplayer({
    Key? key,
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
              'CHECKOUT %',
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

class _PlayerItemCheckoutDisplayer extends StatelessWidget {
  final double? checkoutPercentage;

  const _PlayerItemCheckoutDisplayer({
    Key? key,
    required this.checkoutPercentage,
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
          checkoutPercentage?.toString() ?? '--',
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

// PLAYER ITEM SMALL
class PlayerItemSmall extends StatelessWidget {
  final BobsTwentySevenPlayerSnapshot player;

  const PlayerItemSmall({
    Key? key,
    required this.player,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: border4(context),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: _PlayerItemSmallHeader(
                // TODO photorul
                name: player.name!,
              ),
            ),
            Expanded(
              flex: 6,
              child: _PlayerItemSmallCheckoutDisplayer(
                checkoutPercentage: player.checkoutPercentage,
              ),
            ),
            Expanded(
              flex: 17,
              child: _PlayerItemSmallPointsDisplayer(
                points: player.points,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PlayerItemSmallHeader extends StatelessWidget {
  final String? photoUrl;
  final String name;

  const _PlayerItemSmallHeader({
    Key? key,
    this.photoUrl,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            //const Spacer(),
            Expanded(
              flex: 5,
              child: Container(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
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

class _PlayerItemSmallCheckoutDisplayer extends StatelessWidget {
  final double? checkoutPercentage;

  const _PlayerItemSmallCheckoutDisplayer({
    Key? key,
    required this.checkoutPercentage,
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
              checkoutPercentage != null
                  ? '${checkoutPercentage!.toStringAsFixed(2)} %'
                  : '--',
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

class _PlayerItemSmallPointsDisplayer extends StatelessWidget {
  final int points;

  const _PlayerItemSmallPointsDisplayer({
    Key? key,
    required this.points,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // TODO color
      child: Center(
        child: AutoSizeText(
          points.toString(),
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
