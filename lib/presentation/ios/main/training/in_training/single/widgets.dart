part of 'in_single_training_page.dart';

class _InSingleTrainingWidget extends StatelessWidget {
  const _InSingleTrainingWidget({
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
        Expanded(
          flex: 4,
          child: _OnePlayerFooter(),
        ),
      ],
    );
  }
}

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
              _OnePlayerTargetDisplayer(),
              Expanded(
                child: _OnePlayerPointsDisplayer(),
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

class _OnePlayerTargetDisplayer extends StatelessWidget {
  const _OnePlayerTargetDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainingBloc, TrainingState>(
      // TODO is this builder most inner positioned
      builder: (context, state) {
        final player =
            state.gameSnapshot.players[0] as SingleTrainingPlayerSnapshot;

        return Container(
          color: AppColors.black,
          child: Padding(
            padding: EdgeInsets.all(size6(context) / 4),
            child: Center(
              child: Text(
                'ZIEL ${player.targetValue}',
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

class _OnePlayerPointsDisplayer extends StatelessWidget {
  const _OnePlayerPointsDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainingBloc, TrainingState>(
      // TODO is this builder most inner positioned
      builder: (context, state) {
        final player =
            state.gameSnapshot.players[0] as SingleTrainingPlayerSnapshot;

        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: border4(context),
            ),
          ),
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
          /**
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 6,
                child: Center(
                  child: AutoSizeText(
                    player.pointsLeft.toString(),
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
                    player.lastPoints?.toString() ?? '--',
                    maxLines: 1,
                    maxFontSize: 13,
                    minFontSize: 6,
                  ),
                ),
              ),
            ],
          ),
        */
        );
      },
    );
  }
}

class _OnePlayerFooter extends StatelessWidget {
  const _OnePlayerFooter({
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
      child: Padding(
        padding: EdgeInsets.all(size6(context)),
        child: BlocBuilder<TrainingBloc, TrainingState>(
          // TODO is this builder most inner positioned
          builder: (context, state) {
            final player =
                state.gameSnapshot.players[0] as SingleTrainingPlayerSnapshot;

            // TODO
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // TODO translate
                _OnePlayerStatDisplayer(
                  title: 'SINGLES',
                  value: player.singles.toString(),
                ),
                _OnePlayerStatDisplayer(
                  title: 'DOUBLES',
                  value: player.doubles.toString(),
                ),
                _OnePlayerStatDisplayer(
                  title: 'TRIPLES',
                  value: player.triples.toString(),
                ),
                _OnePlayerStatDisplayer(
                  title: 'MISSED',
                  value: player.missed.toString(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _OnePlayerStatDisplayer extends StatelessWidget {
  final String title;
  final String? value;

  const _OnePlayerStatDisplayer({
    Key? key,
    required this.title,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppRow(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      spacing: size6(context),
      children: [
        Text(title),
        Text(
          value ?? '-',
        ),
      ],
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
                player: players[0] as SingleTrainingPlayerSnapshot,
              ),
            ),
            Expanded(
              child: PlayerItem(
                player: players[1] as SingleTrainingPlayerSnapshot,
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
                player: players[0] as SingleTrainingPlayerSnapshot,
              ),
            ),
            Expanded(
              child: AppColumn(
                spacing: size6(context),
                children: [
                  PlayerItemSmall(
                    player: players[2] as SingleTrainingPlayerSnapshot,
                  ),
                  PlayerItemSmall(
                    player: players[1] as SingleTrainingPlayerSnapshot,
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
                    player: players[0] as SingleTrainingPlayerSnapshot,
                  ),
                  PlayerItemSmall(
                    player: players[1] as SingleTrainingPlayerSnapshot,
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
                    player: players[2] as SingleTrainingPlayerSnapshot,
                  ),
                  PlayerItemSmall(
                    player: players[3] as SingleTrainingPlayerSnapshot,
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

// INPUT AREA
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
                      .read<SingleTrainingBloc>()
                      .add(const SingleTrainingEvent.undoPressed()),
                  onPerformThrowPressed: () => context
                      .read<SingleTrainingBloc>()
                      .add(const SingleTrainingEvent.performPressed()),
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
          text: 'SINGLE',
          fontSize: 18,
          color: AppColors.white,
          onPressed: () => context
              .read<SingleTrainingBloc>()
              .add(const SingleTrainingEvent.singleHitPressed()),
        ),
        AppActionButton.flexible(
          text: 'DOUBLE',
          fontSize: 18,
          color: AppColors.white,
          onPressed: () => context
              .read<SingleTrainingBloc>()
              .add(const SingleTrainingEvent.doubleHitPressed()),
        ),
        AppActionButton.flexible(
          text: 'TRIPLE',
          fontSize: 18,
          color: AppColors.white,
          onPressed: () => context
              .read<SingleTrainingBloc>()
              .add(const SingleTrainingEvent.tripleHitPressed()),
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
                    .read<SingleTrainingBloc>()
                    .add(const SingleTrainingEvent.missHitPressed()),
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
  final SingleTrainingPlayerSnapshot player;

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
            child: _PlayerItemTargetDisplayer(
              target: player.targetValue,
            ),
          ),
          Expanded(
            flex: 30,
            child: _PlayerItemPointsDisplayer(
              points: player.points,
            ),
          ),
          // TODO introduce a super widghet to this and next widgets with them as a part ??
          Expanded(
            flex: 24,
            child: _PlayerItemStatsDisplayer(
              singles: player.singles,
              doubles: player.doubles,
              triples: player.triples,
              missed: player.missed,
            ),
          ),
        ],
      ),
    );
  }
}

class _PlayerItemHeader extends StatelessWidget {
  final Color color;
  final String? photoUrl;
  final String name;

  const _PlayerItemHeader({
    Key? key,
    this.color = AppColors.blueNew,
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

class _PlayerItemTargetDisplayer extends StatelessWidget {
  final int target;

  const _PlayerItemTargetDisplayer({
    Key? key,
    required this.target,
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
              'ZIEL: D$target',
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

class _PlayerItemStatsDisplayer extends StatelessWidget {
  final int singles;
  final int doubles;
  final int triples;
  final int missed;

  const _PlayerItemStatsDisplayer({
    Key? key,
    required this.singles,
    required this.doubles,
    required this.triples,
    required this.missed,
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
        children: [
          Expanded(
            flex: 5,
            child: _PlayerItemStatDisplayer(
              title: 'SINGLES',
              value: singles.toString(),
            ),
          ),
          Expanded(
            flex: 5,
            child: _PlayerItemStatDisplayer(
              title: 'DOUBLES',
              value: doubles.toString(),
            ),
          ),
          Expanded(
            flex: 5,
            child: _PlayerItemStatDisplayer(
              title: 'TRIPLES',
              value: triples.toString(),
            ),
          ),
          Expanded(
            flex: 5,
            child: _PlayerItemStatDisplayer(
              title: 'MISSED',
              value: missed.toString(),
            ),
          ),
        ],
      ),
    );
  }
}

class _PlayerItemStatDisplayer extends StatelessWidget {
  final String title;
  final String? value;

  const _PlayerItemStatDisplayer({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppRow(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      spacing: size6(context),
      children: [
        Text(title),
        Text(
          value ?? '-',
        ),
      ],
    );
  }
}

// PLAYER ITEM SMALL
class PlayerItemSmall extends StatelessWidget {
  final SingleTrainingPlayerSnapshot player;

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
              child: _PlayerItemSmallTargetDisplayer(
                target: player.targetValue,
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
  final Color color;
  final String? photoUrl;
  final String name;

  const _PlayerItemSmallHeader({
    Key? key,
    this.color = AppColors.blueNew,
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

class _PlayerItemSmallTargetDisplayer extends StatelessWidget {
  final int target;

  const _PlayerItemSmallTargetDisplayer({
    Key? key,
    required this.target,
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
              'ZIEL: D$target',
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
