part of 'in_score_training_page.dart';

class _InScoreTrainingWidget extends StatelessWidget {
  const _InScoreTrainingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        Expanded(
          flex: 45,
          child: BlocSelector<ScoreTrainingWatcherCubit,
              ScoreTrainingGameSnapshot, int>(
            selector: (state) => state.players.size,
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
        Expanded(
          flex: 55,
          child: PageView(
            children: [
              MultiBlocProvider(
                providers: [
                  BlocProvider<Bloc<InputRowEvent, int>>(
                    create: (context) => getIt<standard.InputRowBloc>(),
                  ),
                  BlocProvider(
                    create: (context) => getIt<standard.KeyBoardBloc>(),
                  ),
                ],
                child: const StandardInputArea(),
              ),
              MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => getIt<DartsDisplayerBloc>(),
                  ),
                  BlocProvider<Bloc<InputRowEvent, int>>(
                    create: (context) => getIt<detailed.InputRowBloc>(
                      param1: context.read<DartsDisplayerBloc>(),
                    ),
                  ),
                  BlocProvider(
                    create: (context) => getIt<detailed.KeyBoardBloc>(),
                  ),
                ],
                child: const DetailedInputArea(),
              ),
            ],
          ),
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
    return BlocSelector<ScoreTrainingWatcherCubit, ScoreTrainingGameSnapshot,
        ScoreTrainingPlayerSnapshot>(
      selector: (state) => state.players[0],
      builder: (context, player1) {
        return PlayerItemLargeScoreBobs27(
          color: AppColors.blue,
          photoUrl: null, // TODO real photoUrl,
          name: player1.name!, // TODO ! needed ?
          subHeaderText: LocaleKeys.takesLeft
              .tr(args: ['${player1.takesLeft}']).toUpperCase(),
          property: player1.average?.toStringAsFixed(2) ?? '--',
          subProperty: '${player1.points}',
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
      player1Item: BlocSelector<ScoreTrainingWatcherCubit,
          ScoreTrainingGameSnapshot, ScoreTrainingPlayerSnapshot>(
        selector: (state) => state.players[0],
        builder: (context, player1) => _PlayerItem(
          player: player1,
          color: AppColors.blueNew,
        ),
      ),
      player2Item: BlocSelector<ScoreTrainingWatcherCubit,
          ScoreTrainingGameSnapshot, ScoreTrainingPlayerSnapshot>(
        selector: (state) => state.players[1],
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
      player1Item: BlocSelector<ScoreTrainingWatcherCubit,
          ScoreTrainingGameSnapshot, ScoreTrainingPlayerSnapshot>(
        selector: (state) => state.players[0],
        builder: (context, player1) => _PlayerItem(
          player: player1,
          color: AppColors.blueNew,
        ),
      ),
      player2Item: BlocSelector<ScoreTrainingWatcherCubit,
          ScoreTrainingGameSnapshot, ScoreTrainingPlayerSnapshot>(
        selector: (state) => state.players[1],
        builder: (context, player2) => _PlayerItemSmall(
          player: player2,
          color: AppColors.green,
        ),
      ),
      player3Item: BlocSelector<ScoreTrainingWatcherCubit,
          ScoreTrainingGameSnapshot, ScoreTrainingPlayerSnapshot>(
        selector: (state) => state.players[2],
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
      player1Item: BlocSelector<ScoreTrainingWatcherCubit,
          ScoreTrainingGameSnapshot, ScoreTrainingPlayerSnapshot>(
        selector: (state) => state.players[0],
        builder: (context, player1) => _PlayerItemSmall(
          player: player1,
          color: AppColors.blueNew,
        ),
      ),
      player2Item: BlocSelector<ScoreTrainingWatcherCubit,
          ScoreTrainingGameSnapshot, ScoreTrainingPlayerSnapshot>(
        selector: (state) => state.players[1],
        builder: (context, player2) => _PlayerItemSmall(
          player: player2,
          color: AppColors.green,
        ),
      ),
      player3Item: BlocSelector<ScoreTrainingWatcherCubit,
          ScoreTrainingGameSnapshot, ScoreTrainingPlayerSnapshot>(
        selector: (state) => state.players[2],
        builder: (context, player3) => _PlayerItemSmall(
          player: player3,
          color: AppColors.red,
        ),
      ),
      player4Item: BlocSelector<ScoreTrainingWatcherCubit,
          ScoreTrainingGameSnapshot, ScoreTrainingPlayerSnapshot>(
        selector: (state) => state.players[3],
        builder: (context, player4) => _PlayerItemSmall(
          player: player4,
          color: AppColors.orangeNew,
        ),
      ),
    );
  }
}

// SHARED
class _PlayerItem extends StatelessWidget {
  // final ProfileImagePosition profileImagePosition; TODO
  final Color color;
  final ScoreTrainingPlayerSnapshot player;

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
      title1:
          LocaleKeys.takesLeft.tr(args: ['${player.takesLeft}']).toUpperCase(),
      value1: player.average?.toStringAsFixed(2) ?? '--',
      title2: LocaleKeys.totalPoints.tr().toUpperCase(),
      value2: '${player.points}',
    );
  }
}

class _PlayerItemSmall extends StatelessWidget {
  final Color color;
  final ScoreTrainingPlayerSnapshot player;

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
      title:
          LocaleKeys.takesLeft.tr(args: ['${player.takesLeft}']).toUpperCase(),
      value: player.average?.toStringAsFixed(2) ?? '--',
    );
  }
}
