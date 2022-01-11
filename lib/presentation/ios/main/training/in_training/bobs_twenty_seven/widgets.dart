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
    return BlocSelector<TrainingBloc, TrainingState,
        BobsTwentySevenPlayerSnapshot>(
      selector: (state) =>
          state.gameSnapshot.players[0] as BobsTwentySevenPlayerSnapshot,
      builder: (context, player1) {
        return PlayerItemLargeScoreBobs27(
          color: AppColors.blue,
          photoUrl: null, // TODO real photoUrl,
          name: player1.name!, // TODO ! needed ?
          subHeaderText: LocaleKeys.bestPointsShort
              .tr(args: ['${player1.highestPoints}']).toUpperCase(),
          property: '${player1.points}',
          subProperty: player1.checkoutPercentage != null
              ? '${player1.checkoutPercentage!.toStringAsFixed(2)} %'
              : '--',
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
    return TwoPlayerDisplayerGrid(
      player1Item: BlocSelector<TrainingBloc, TrainingState,
          BobsTwentySevenPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[0] as BobsTwentySevenPlayerSnapshot,
        builder: (context, player1) => _PlayerItem(
          player: player1,
          color: AppColors.blueNew,
        ),
      ),
      player2Item: BlocSelector<TrainingBloc, TrainingState,
          BobsTwentySevenPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[1] as BobsTwentySevenPlayerSnapshot,
        builder: (context, player2) => _PlayerItem(
          player: player2,
          color: AppColors.green,
        ),
      ),
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
    return ThreePlayerDisplayerGrid(
      player1Item: BlocSelector<TrainingBloc, TrainingState,
          BobsTwentySevenPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[0] as BobsTwentySevenPlayerSnapshot,
        builder: (context, player1) => _PlayerItem(
          player: player1,
          color: AppColors.blueNew,
        ),
      ),
      player2Item: BlocSelector<TrainingBloc, TrainingState,
          BobsTwentySevenPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[1] as BobsTwentySevenPlayerSnapshot,
        builder: (context, player2) => _PlayerItemSmall(
          player: player2,
          color: AppColors.green,
        ),
      ),
      player3Item: BlocSelector<TrainingBloc, TrainingState,
          BobsTwentySevenPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[2] as BobsTwentySevenPlayerSnapshot,
        builder: (context, player3) => _PlayerItemSmall(
          player: player3,
          color: AppColors.red,
        ),
      ),
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
    return FourPlayerDisplayerGrid(
      player1Item: BlocSelector<TrainingBloc, TrainingState,
          BobsTwentySevenPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[0] as BobsTwentySevenPlayerSnapshot,
        builder: (context, player1) => _PlayerItemSmall(
          player: player1,
          color: AppColors.blueNew,
        ),
      ),
      player2Item: BlocSelector<TrainingBloc, TrainingState,
          BobsTwentySevenPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[1] as BobsTwentySevenPlayerSnapshot,
        builder: (context, player2) => _PlayerItemSmall(
          player: player2,
          color: AppColors.green,
        ),
      ),
      player3Item: BlocSelector<TrainingBloc, TrainingState,
          BobsTwentySevenPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[2] as BobsTwentySevenPlayerSnapshot,
        builder: (context, player3) => _PlayerItemSmall(
          player: player3,
          color: AppColors.red,
        ),
      ),
      player4Item: BlocSelector<TrainingBloc, TrainingState,
          BobsTwentySevenPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[3] as BobsTwentySevenPlayerSnapshot,
        builder: (context, player4) => _PlayerItemSmall(
          player: player4,
          color: AppColors.orangeNew,
        ),
      ),
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

// SHARED
class _PlayerItem extends StatelessWidget {
  // final ProfileImagePosition profileImagePosition; TODO
  final Color color;
  final BobsTwentySevenPlayerSnapshot player;

  const _PlayerItem({
    Key? key,
    required this.color,
    required this.player,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlayerItemScoreBobs27(
      color: color,
      photoUrl: null, // TODO real value
      name: player.name!, // TODO ! needed ?
      title1: LocaleKeys.bestPointsShort
          .tr(args: ['${player.highestPoints}']).toUpperCase(),
      value1: '${player.points}',
      title2: LocaleKeys.checkoutPercentageShort.tr().toUpperCase(),
      value2: player.checkoutPercentage?.toStringAsFixed(2) ?? '--',
    );
  }
}

class _PlayerItemSmall extends StatelessWidget {
  final Color color;
  final BobsTwentySevenPlayerSnapshot player;

  const _PlayerItemSmall({
    Key? key,
    required this.color,
    required this.player,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlayerItemSmallScoreBobs27(
      color: color,
      photoUrl: null, // TODO real value
      name: player.name!, // TODO ! needed ?
      title: player.checkoutPercentage != null
          ? '${player.checkoutPercentage!.toStringAsFixed(2)} %'
          : '--',
      value: '${player.points}',
    );
  }
}
