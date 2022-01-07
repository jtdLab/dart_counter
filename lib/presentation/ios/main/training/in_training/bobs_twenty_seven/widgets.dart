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
                    color: AppColors.orangeNew,
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
    return Container(
      color: AppColors.green,
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
    return Container(
      color: AppColors.blue,
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
    return Container(
      color: AppColors.yellow,
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
