part of 'in_offline_game_page.dart';


// BODY
class _InOfflineGameWidget extends StatelessWidget {
  const _InOfflineGameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        Expanded(
          flex: 45,
          child: BlocBuilder<PlayOfflineWatcherCubit, OfflineGameSnapshot>(
            builder: (context, state) {
              final amountOfPlayers = state.players.size;

              if (amountOfPlayers == 1) {
                return const _OnePlayerDisplayer();
              } else if (amountOfPlayers == 2) {
                return const _TwoPlayerDisplayer();
              } else if (amountOfPlayers == 3) {
                return const _ThreePlayerDisplayer();
              } else {
                return const _ThreePlayerDisplayer();
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
                    create: (context) =>
                        getIt<InputRowBlocOfflineStandardInputArea>(),
                  ),
                  BlocProvider<
                      Bloc<standard.KeyBoardEvent, standard.KeyBoardState>>(
                    create: (context) =>
                        getIt<KeyBoardBlocOfflineStandardInputArea>(
                      param1: context.read<AdvancedSettingsBloc>(),
                      param2: context.read<Bloc<InputRowEvent, int>>(),
                    )..add(const standard.KeyBoardEvent.started()),
                  ),
                ],
                child: const StandardInputArea(),
              ),
              MultiBlocProvider(
                providers: [
                  BlocProvider<Bloc<DartsDisplayerEvent, DartsDisplayerState>>(
                    create: (context) => getIt<DartsDisplayerBloc>(
                      // TODO ideal ? should ui know services ??
                      param1: getIt<IPlayOfflineService>(),
                    ),
                  ),
                  BlocProvider<Bloc<InputRowEvent, int>>(
                    create: (context) => getIt<detailed.InputRowBloc>(
                      param1: context.read<InOfflineGameBloc>(),
                      param2: context.read<
                          Bloc<DartsDisplayerEvent, DartsDisplayerState>>(),
                    )..add(const InputRowEvent.started()),
                  ),
                  BlocProvider<
                      Bloc<detailed.KeyBoardEvent, detailed.KeyBoardState>>(
                    create: (context) => getIt<detailed.KeyBoardBloc>(
                      param1: [
                        context.read<AdvancedSettingsBloc>(),
                        context.read<
                            Bloc<DartsDisplayerEvent, DartsDisplayerState>>(),
                      ],
                    )..add(const detailed.KeyBoardEvent.started()),
                  ),
                ],
                child: const DetailedInputArea(),
              ),
              // SpeechInputArea(),
              //OpticalInputArea(),
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
    return BlocBuilder<PlayOfflineWatcherCubit, OfflineGameSnapshot>(
      // TODO is this builder most inner positioned
      builder: (context, state) {
        final player = state.players[0];

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
              _OnePlayerLegsSetsDisplayer(),
              Expanded(
                child: _OnePlayerPointsLeftLastThrowDisplayer(),
              ),
              _OnePlayerFinishRecommendationDisplayer(),
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

class _OnePlayerLegsSetsDisplayer extends StatelessWidget {
  const _OnePlayerLegsSetsDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayOfflineWatcherCubit, OfflineGameSnapshot>(
      // TODO is this builder most inner positioned
      builder: (context, state) {
        final player = state.players[0];

        return Container(
          color: AppColors.black,
          child: Padding(
            padding: EdgeInsets.all(size6(context) / 4),
            child: Row(
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
          ),
        );
      },
    );
  }
}

class _OnePlayerPointsLeftLastThrowDisplayer extends StatelessWidget {
  const _OnePlayerPointsLeftLastThrowDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayOfflineWatcherCubit, OfflineGameSnapshot>(
      // TODO is this builder most inner positioned
      builder: (context, state) {
        final player = state.players[0];

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
        );
      },
    );
  }
}

class _OnePlayerFinishRecommendationDisplayer extends StatelessWidget {
  const _OnePlayerFinishRecommendationDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayOfflineWatcherCubit, OfflineGameSnapshot>(
      // TODO is this builder most inner positioned
      builder: (context, state) {
        final finishRecommendation = state.players[0].finishRecommendation;

        return Container(
          color: AppColors.orangeNew,
          child: Padding(
            padding: EdgeInsets.all(size6(context) / 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (finishRecommendation != null) ...[
                  for (int i = 0; i < finishRecommendation.size; i++)
                    Text(
                      finishRecommendation.get(i),
                    ),
                ] else ...[
                  const Text(''),
                ]
              ],
            ),
          ),
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
      color: AppColors.black,
      child: Padding(
        padding: EdgeInsets.all(size6(context)),
        child: BlocBuilder<PlayOfflineWatcherCubit, OfflineGameSnapshot>(
          // TODO is this builder most inner positioned
          builder: (context, state) {
            final player = state.players[0];

            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _OnePlayerStatDisplayer(
                  icon: AppImages.flightWhite,
                  value: player.dartsThrownCurrentLeg.toString(),
                ),
                _OnePlayerStatDisplayer(
                  icon: AppImages.averageWhite,
                  value: player.stats.average?.toStringAsFixed(2),
                ),
                _OnePlayerStatDisplayer(
                  icon: AppImages.checkoutPercentageWhite,
                  value: player.stats.checkoutPercentage != null
                      ? player.stats.checkoutPercentage!.toStringAsFixed(2)
                      : '-',
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
  final String icon;
  final String? value;

  const _OnePlayerStatDisplayer({
    Key? key,
    required this.icon,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        Expanded(
          flex: 10,
          child: Image.asset(
            icon,
            fit: BoxFit.fill,
          ),
        ),
        Expanded(
          flex: 4,
          child: Text(
            value ?? '-',
            style: CupertinoTheme.of(context)
                .textTheme
                .textStyle
                .copyWith(color: AppColors.white),
          ),
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
    return BlocBuilder<PlayOfflineWatcherCubit, OfflineGameSnapshot>(
      builder: (context, state) {
        final players = state.players;

        return AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: PlayerItem(
                player: players[0],
              ),
            ),
            Expanded(
              child: PlayerItem(
                player: players[1],
              ),
            ),
          ],
        );
      },
    );
  }
}

// THREE PLAYER DISPLAYER
class _ThreePlayerDisplayer extends HookWidget {
  const _ThreePlayerDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useScrollController();

    return LayoutBuilder(
      builder: (context, constraints) {
        final itemExtent = constraints.maxHeight *
            responsiveValue(context, defaultValue: 0.5, mobileNormal: 0.45);

        return BlocConsumer<PlayOfflineWatcherCubit, OfflineGameSnapshot>(
          // TODO listener doesnt work as intended
          listener: (context, state) {
            /**
             * final prevGameSnapshot = state.prevGameSnapshot!;
            final currentGameSnapshot = state.gameSnapshot;

            bool allEqual = true;
            for (int i = 0; i < prevGameSnapshot.players.size; i++) {
              final prevPlayer = prevGameSnapshot.players[i];
              final currentPlayer = currentGameSnapshot.players[i];

              allEqual &= prevPlayer.wonLegsCurrentSet ==
                  currentPlayer.wonLegsCurrentSet;
            }
            final newLeg = !allEqual;

            final double offset;
            if (newLeg) {
              final prevCurrentTurnIndex = prevGameSnapshot.players
                  .indexOf(prevGameSnapshot.currentTurn());
              final currentCurrentTurnIndex = currentGameSnapshot.players
                  .indexOf(currentGameSnapshot.currentTurn());

              print('prevCurrentTurnIndex $prevCurrentTurnIndex');
              print('currentCurrentTurnIndex $currentCurrentTurnIndex');

              final int multiplier;
              if (prevCurrentTurnIndex <= currentCurrentTurnIndex) {
                multiplier = currentCurrentTurnIndex - prevCurrentTurnIndex;
              } else {
                multiplier =
                    prevGameSnapshot.players.size - prevCurrentTurnIndex;
              }

              print('multiplier $multiplier');

              offset = controller.offset + (multiplier * itemExtent);
            } else {
              bool allGreaterOrEqual = true;
              for (int i = 0; i < prevGameSnapshot.players.size; i++) {
                final prevPlayer = prevGameSnapshot.players[i];
                final currentPlayer = currentGameSnapshot.players[i];

                allGreaterOrEqual &= currentPlayer.dartsThrownCurrentLeg >=
                    prevPlayer.dartsThrownCurrentLeg;
              }
              final throwUndone = !allGreaterOrEqual;

              if (throwUndone) {
                offset = controller.offset - itemExtent;
              } else {
                offset = controller.offset + itemExtent;
              }
            }

            controller.animateTo(
              offset,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOut,
            );
             */
          },
          builder: (context, state) {
            final players = state.players;

            return RotatedBox(
              quarterTurns: -1,
              child: ListWheelScrollView.useDelegate(
                physics: const NeverScrollableScrollPhysics(),
                controller: controller,
                itemExtent: itemExtent,
                childDelegate: ListWheelChildLoopingListDelegate(
                  children: players.iter.map(
                    (player) {
                      return SizedBox(
                        width: constraints.maxWidth,
                        height: itemExtent,
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: PlayerItem(
                            player: player,
                          ),
                        ),
                      );
                    },
                  ).toList(),
                ),
              ),
            );

            return AppRow(
              spacing: size6(context),
              children: [
                PlayerItem(
                  player: players[0],
                ),
                Expanded(
                  child: AppColumn(
                    spacing: size6(context),
                    children: [
                      PlayerItemSmall(
                        player: players[2],
                      ),
                      PlayerItemSmall(
                        player: players[1],
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
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
    return BlocBuilder<PlayOfflineWatcherCubit, OfflineGameSnapshot>(
      builder: (context, state) {
        final currentTurn = state.currentTurn();
        final players = state.players;

        return AppColumn(
          spacing: size6(context),
          children: [
            Expanded(
              flex: 3,
              child: AppRow(
                spacing: size6(context),
                children: [
                  PlayerItemSmall(
                    player: players[0],
                  ),
                  PlayerItemSmall(
                    player: players[1],
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
                    player: players[2],
                  ),
                  PlayerItemSmall(
                    player: players[3],
                  ),
                ],
              ),
            ),
            Expanded(
              child: _FourPlayerStatsDisplayer(
                dartsThrownCurrentLeg: currentTurn.dartsThrownCurrentLeg,
                average: currentTurn.stats.average,
                checkoutPercentage: currentTurn.stats.checkoutPercentage,
              ),
            ),
          ],
        );
      },
    );
  }
}

class _FourPlayerStatsDisplayer extends StatelessWidget {
  final int dartsThrownCurrentLeg;
  final double? average;
  final double? checkoutPercentage;

  const _FourPlayerStatsDisplayer({
    Key? key,
    required this.dartsThrownCurrentLeg,
    required this.average,
    required this.checkoutPercentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black,
      child: Row(
        children: [
          const Spacer(),
          Flexible(
            flex: 5,
            child: _FourPlayerStatDisplayer(
              icon: AppImages.flightWhite,
              value: dartsThrownCurrentLeg.toString(),
            ),
          ),
          const Spacer(),
          Flexible(
            flex: 5,
            child: _FourPlayerStatDisplayer(
              icon: AppImages.averageWhite,
              value: average?.toStringAsFixed(2) ?? '-',
            ),
          ),
          const Spacer(),
          Flexible(
            flex: 5,
            child: _FourPlayerStatDisplayer(
              icon: AppImages.checkoutPercentageWhite,
              value: checkoutPercentage != null
                  ? checkoutPercentage!.toStringAsFixed(2)
                  : '-',
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class _FourPlayerStatDisplayer extends StatelessWidget {
  final String icon;
  final String? value;

  const _FourPlayerStatDisplayer({
    Key? key,
    required this.icon,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppRow(
      spacing: size6(context) / 2,
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              0,
              size6(context) / 1,
              size6(context) / 1,
              size6(context) / 1,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                icon,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              const Spacer(),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: AutoSizeText(
                        value ?? '-',
                        style: CupertinoTheme.of(context)
                            .textTheme
                            .textStyle
                            .copyWith(color: AppColors.white),
                        maxLines: 1,
                        minFontSize: 4,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
