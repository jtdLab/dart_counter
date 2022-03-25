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
          child: BlocSelector<BobsTwentySevenWatcherCubit,
              BobsTwentySevenGameSnapshot, int>(
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
        const Expanded(
          flex: 55,
          child: DoubleBobsTwentySevenInputArea(),
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
    return BlocSelector<BobsTwentySevenWatcherCubit,
        BobsTwentySevenGameSnapshot, BobsTwentySevenPlayerSnapshot>(
      selector: (state) => state.players[0],
      builder: (context, player1) {
        return PlayerItemLargeScoreBobs27(
          color: AppColors.blue,
          photoUrl: null, // TODO real photoUrl,
          name: player1.name!, // TODO ! needed ?
          subHeaderText:
              context.l10n.bestPointsShort(player1.highestPoints).toUpperCase(),
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
      player1Item: BlocSelector<BobsTwentySevenWatcherCubit,
          BobsTwentySevenGameSnapshot, BobsTwentySevenPlayerSnapshot>(
        selector: (state) => state.players[0],
        builder: (context, player1) => _PlayerItem(
          player: player1,
          color: AppColors.blueNew,
        ),
      ),
      player2Item: BlocSelector<BobsTwentySevenWatcherCubit,
          BobsTwentySevenGameSnapshot, BobsTwentySevenPlayerSnapshot>(
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
      player1Item: BlocSelector<BobsTwentySevenWatcherCubit,
          BobsTwentySevenGameSnapshot, BobsTwentySevenPlayerSnapshot>(
        selector: (state) => state.players[0],
        builder: (context, player1) => _PlayerItem(
          player: player1,
          color: AppColors.blueNew,
        ),
      ),
      player2Item: BlocSelector<BobsTwentySevenWatcherCubit,
          BobsTwentySevenGameSnapshot, BobsTwentySevenPlayerSnapshot>(
        selector: (state) => state.players[1],
        builder: (context, player2) => _PlayerItemSmall(
          player: player2,
          color: AppColors.green,
        ),
      ),
      player3Item: BlocSelector<BobsTwentySevenWatcherCubit,
          BobsTwentySevenGameSnapshot, BobsTwentySevenPlayerSnapshot>(
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
      player1Item: BlocSelector<BobsTwentySevenWatcherCubit,
          BobsTwentySevenGameSnapshot, BobsTwentySevenPlayerSnapshot>(
        selector: (state) => state.players[0],
        builder: (context, player1) => _PlayerItemSmall(
          player: player1,
          color: AppColors.blueNew,
        ),
      ),
      player2Item: BlocSelector<BobsTwentySevenWatcherCubit,
          BobsTwentySevenGameSnapshot, BobsTwentySevenPlayerSnapshot>(
        selector: (state) => state.players[1],
        builder: (context, player2) => _PlayerItemSmall(
          player: player2,
          color: AppColors.green,
        ),
      ),
      player3Item: BlocSelector<BobsTwentySevenWatcherCubit,
          BobsTwentySevenGameSnapshot, BobsTwentySevenPlayerSnapshot>(
        selector: (state) => state.players[2],
        builder: (context, player3) => _PlayerItemSmall(
          player: player3,
          color: AppColors.red,
        ),
      ),
      player4Item: BlocSelector<BobsTwentySevenWatcherCubit,
          BobsTwentySevenGameSnapshot, BobsTwentySevenPlayerSnapshot>(
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
      title1: context.l10n.bestPointsShort(player.highestPoints).toUpperCase(),
      value1: '${player.points}',
      title2: context.l10n.checkoutPercentageShort.toUpperCase(),
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
