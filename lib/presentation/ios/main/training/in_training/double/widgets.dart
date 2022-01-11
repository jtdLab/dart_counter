part of 'in_double_training_page.dart';

class _InDoubleTrainingWidget extends StatelessWidget {
  const _InDoubleTrainingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        Expanded(
          flex: 45,
          child: BlocSelector<TrainingBloc, TrainingState, int>(
            selector: (state) => state.gameSnapshot.players.size,
            builder: (context, amountOfPlayers) {
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
        DoubleTrainingPlayerSnapshot>(
      selector: (state) =>
          state.gameSnapshot.players[0] as DoubleTrainingPlayerSnapshot,
      builder: (context, player1) {
        return PlayerItemLargeSingleDouble(
          color: AppColors.blue,
          photoUrl: null, // TODO real photoUrl,
          name: player1.name!, // TODO ! needed ?
          subHeaderText:
              '${LocaleKeys.target.tr()}: ${player1.targetValue}'.toUpperCase(),
          points: 34, //player1.points, // TODO
          stats: [
            /** // TODO add this to model
            *  Tuple2(
              '${LocaleKeys.checkout}.many'.tr().toUpperCase(),
              player1.checkouts.toString(),
            ),
            */
            Tuple2(
              LocaleKeys.dartsThrown.tr().toUpperCase(),
              player1.dartsThrown.toString(),
            ),
            Tuple2(
              LocaleKeys.checkoutPercentageShort.tr().toUpperCase(),
              player1.checkoutPercentage?.toStringAsFixed(2) ?? '--',
            ),
            Tuple2(
              LocaleKeys.missed.tr().toUpperCase(),
              player1.missed.toString(),
            ),
          ],
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
          DoubleTrainingPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[0] as DoubleTrainingPlayerSnapshot,
        builder: (context, player1) => _PlayerItem(
          player: player1,
          color: AppColors.blueNew,
        ),
      ),
      player2Item: BlocSelector<TrainingBloc, TrainingState,
          DoubleTrainingPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[1] as DoubleTrainingPlayerSnapshot,
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
          DoubleTrainingPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[0] as DoubleTrainingPlayerSnapshot,
        builder: (context, player1) => _PlayerItem(
          player: player1,
          color: AppColors.blueNew,
        ),
      ),
      player2Item: BlocSelector<TrainingBloc, TrainingState,
          DoubleTrainingPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[1] as DoubleTrainingPlayerSnapshot,
        builder: (context, player2) => _PlayerItemSmall(
          player: player2,
          color: AppColors.green,
        ),
      ),
      player3Item: BlocSelector<TrainingBloc, TrainingState,
          DoubleTrainingPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[2] as DoubleTrainingPlayerSnapshot,
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
          DoubleTrainingPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[0] as DoubleTrainingPlayerSnapshot,
        builder: (context, player1) => _PlayerItemSmall(
          player: player1,
          color: AppColors.blueNew,
        ),
      ),
      player2Item: BlocSelector<TrainingBloc, TrainingState,
          DoubleTrainingPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[1] as DoubleTrainingPlayerSnapshot,
        builder: (context, player2) => _PlayerItemSmall(
          player: player2,
          color: AppColors.green,
        ),
      ),
      player3Item: BlocSelector<TrainingBloc, TrainingState,
          DoubleTrainingPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[2] as DoubleTrainingPlayerSnapshot,
        builder: (context, player3) => _PlayerItemSmall(
          player: player3,
          color: AppColors.red,
        ),
      ),
      player4Item: BlocSelector<TrainingBloc, TrainingState,
          DoubleTrainingPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[3] as DoubleTrainingPlayerSnapshot,
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
  const _InputArea({
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
            children: [
              const Expanded(
                child: DartsDisplayer(
                  darts: KtList.empty(), // TODO real value
                ),
              ),
              Expanded(
                flex: 3,
                child: InputRow(
                  onUndoPressed: () => context
                      .read<DoubleTrainingBloc>()
                      .add(const DoubleTrainingEvent.undoPressed()),
                  onPerformThrowPressed: () => context
                      .read<DoubleTrainingBloc>()
                      .add(const DoubleTrainingEvent.performPressed()),
                  points: 0, // TODO real valie
                ),
              ),
            ],
          ),
        ),
        const Expanded(
          flex: 3,
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
          text: '${LocaleKeys.double}.one'.tr().toUpperCase(),
          fontSize: 18,
          color: AppColors.white,
          onPressed: () => context
              .read<DoubleTrainingBloc>()
              .add(const DoubleTrainingEvent.missHitPressed()),
        ),
        Expanded(
          child: AppRow(
            spacing: size6(context),
            children: [
              AppActionButton.flexible(
                text: LocaleKeys.missed.tr().toUpperCase(),
                fontSize: 18,
                color: AppColors.white,
                onPressed: () => context
                    .read<DoubleTrainingBloc>()
                    .add(const DoubleTrainingEvent.missHitPressed()),
              ),
              AppActionButton.flexible(
                fontSize: 14,
                color: AppColors.white,
                onPressed: () {}, // TODO real callback
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
  final DoubleTrainingPlayerSnapshot player;

  const _PlayerItem({
    Key? key,
    required this.color,
    required this.player,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlayerItemSingleDouble(
      color: color,
      photoUrl: null, // TODO real photo url
      name: player.name!, // TODO ! needed ?
      subHeaderText:
          '${LocaleKeys.target.tr()}: ${player.targetValue}'.toUpperCase(),
      points: 44, // TODO player.points,
      stats: [
        /** // TODO add this to model
            *  Tuple2(
              '${LocaleKeys.checkout}.many'.tr().toUpperCase(),
              player1.checkouts.toString(),
            ),
            */
        Tuple2(
          LocaleKeys.dartsThrown.tr().toUpperCase(),
          player.dartsThrown.toString(),
        ),
        Tuple2(
          LocaleKeys.checkoutPercentageShort.tr().toUpperCase(),
          player.checkoutPercentage?.toStringAsFixed(2) ?? '--',
        ),
        Tuple2(
          LocaleKeys.missed.tr().toUpperCase(),
          player.missed.toString(),
        ),
      ],
    );
  }
}

class _PlayerItemSmall extends StatelessWidget {
  final Color color;
  final DoubleTrainingPlayerSnapshot player;

  const _PlayerItemSmall({
    Key? key,
    required this.color,
    required this.player,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlayerItemSmallSingleDouble(
      color: color,
      photoUrl: null, // TODO real photo url
      name: player.name!, // TODO ! needed ?
      subHeaderText:
          '${LocaleKeys.target.tr()}: ${player.targetValue}'.toUpperCase(),
      points: 44, // TODO player.points,
    );
  }
}
