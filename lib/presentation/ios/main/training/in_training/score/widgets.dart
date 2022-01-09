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
        Expanded(
          flex: 55,
          // TODO
          child: PageView(
            onPageChanged: (pageIndex) =>
                _onKeyBoardChanged(context, keyBoardIndex: pageIndex),
            children: [
              BlocProvider(
                create: (context) => StandardInputAreaBloc(),
                child: const StandardInputArea(),
              ),
              BlocProvider(
                create: (context) => DetailedInputAreaBloc(),
                child: const DetailedInputArea(),
              ),

              //OpticalInputArea(),
            ],
          ),
        ),
      ],
    );
  }

  // TODO needed ?
  // move this into seperate bloc

  // TODO /// Resets the [InputCubit] when the user changes the keyboard by swiping
  void _onKeyBoardChanged(
    BuildContext context, {
    required int keyBoardIndex,
  }) {
    /**
    *  switch (keyBoardIndex) {
      case 0:
        context.read<InOfflineGameBloc>().add(
              const InGameEvent.keyBoardTypeChanged(
                newKeyBoardType: KeyBoardType.standard,
              ),
            );
        break;
      case 1:
        context.read<InOfflineGameBloc>().add(
              const InGameEvent.keyBoardTypeChanged(
                newKeyBoardType: KeyBoardType.detailed,
              ),
            );
        break;
      case 2:
        context.read<InOfflineGameBloc>().add(
              const InGameEvent.keyBoardTypeChanged(
                newKeyBoardType: KeyBoardType.speech,
              ),
            );
        break;
    }
    */
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
              _OnePlayerTakesLeftDisplayer(),
              Expanded(
                child: _OnePlayerAverageAndPointsDisplayer(),
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

class _OnePlayerTakesLeftDisplayer extends StatelessWidget {
  const _OnePlayerTakesLeftDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainingBloc, TrainingState>(
      // TODO is this builder most inner positioned
      builder: (context, state) {
        final player =
            state.gameSnapshot.players[0] as ScoreTrainingPlayerSnapshot;

        return Container(
          color: AppColors.black,
          child: Padding(
            padding: EdgeInsets.all(size6(context) / 4),
            child: Center(
              child: Text(
                // TODO translate
                'NOCH ${player.takesLeft} AUFNAHMEN',
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

class _OnePlayerAverageAndPointsDisplayer extends StatelessWidget {
  const _OnePlayerAverageAndPointsDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrainingBloc, TrainingState>(
      // TODO is this builder most inner positioned
      builder: (context, state) {
        final player =
            state.gameSnapshot.players[0] as ScoreTrainingPlayerSnapshot;

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
                    player.average?.toString() ?? '--',
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
                player: players[0] as ScoreTrainingPlayerSnapshot,
              ),
            ),
            Expanded(
              child: PlayerItem(
                player: players[1] as ScoreTrainingPlayerSnapshot,
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
                player: players[0] as ScoreTrainingPlayerSnapshot,
              ),
            ),
            Expanded(
              child: AppColumn(
                spacing: size6(context),
                children: [
                  PlayerItemSmall(
                    player: players[2] as ScoreTrainingPlayerSnapshot,
                  ),
                  PlayerItemSmall(
                    player: players[1] as ScoreTrainingPlayerSnapshot,
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
                    player: players[0] as ScoreTrainingPlayerSnapshot,
                  ),
                  PlayerItemSmall(
                    player: players[1] as ScoreTrainingPlayerSnapshot,
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
                    player: players[2] as ScoreTrainingPlayerSnapshot,
                  ),
                  PlayerItemSmall(
                    player: players[3] as ScoreTrainingPlayerSnapshot,
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

// STANDARD INPUT AREA
// TODO flex factors
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
          flex: 10,
          child: AppColumn(
            spacing: size6(context),
            children: [
              const Spacer(
                flex: 10,
              ),
              Expanded(
                flex: 30,
                child: InputRow(
                  onUndoPressed: () => context
                      .read<ScoreTrainingBloc>()
                      .add(const ScoreTrainingEvent.undoPressed()),
                  onPerformThrowPressed: () => context
                      .read<ScoreTrainingBloc>()
                      .add(const ScoreTrainingEvent.performPressed()),
                  points: 0, // TODO
                ),
              ),
            ],
          ),
        ),
        const Expanded(
          flex: 30,
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

// DETAILED INPUT AREA
// TODO flex factors
class DetailedInputArea extends StatelessWidget {
  static const flexTop = 1;
  static const flexBottom = 3;

  const DetailedInputArea({
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
                // TODO
                child: DartsDisplayer(darts: KtList.empty()),
              ),

              // TODO expanded 1 ebene down
              Expanded(
                flex: 3,
                child: InputRow(
                  onUndoPressed: () => context
                      .read<DetailedInputAreaBloc>()
                      .add(const DetailedInputAreaEvent.undoThrowPressed()),
                  onPerformThrowPressed: () =>
                      context.read<DetailedInputAreaBloc>().add(
                            const DetailedInputAreaEvent.performThrowPressed(),
                          ),
                  points: 0, // TODO real points
                ),
              ),
            ],
          ),
        ),
        const Expanded(
          flex: flexBottom,
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
      onTap: () => context
          .read<DetailedInputAreaBloc>()
          .add(const DetailedInputAreaEvent.unfocusRequested()),
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
    // TODO dependency injection like this seems not to be good practice
    /**
   *   final detailedInputAreaBloc = context.read<DetailedInputAreaBloc>();
    final dartsCubit = context.read<DartsCubit>();
    final pointsLeftCubit = context.read<PointsLeftCubit>();
    final advancedSettingsBloc = context.read<AdvancedSettingsBloc>();
    final dartUtils = getIt<IDartUtils>();

   */
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

// TODO impl
// SHARED
// PLAYER ITEM
class PlayerItem extends StatelessWidget {
  // final ProfileImagePosition profileImagePosition; TODO
  final ScoreTrainingPlayerSnapshot player;

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
          const Expanded(
            flex: 6,
            child: _PlayerItemAverageTitleDisplayer(),
          ),
          Expanded(
            flex: 30,
            child: _PlayerItemAverageDisplayer(
              average: player.average,
            ),
          ),
          // TODO introduce a super widghet to this and next widgets with them as a part ??
          const Expanded(
            flex: 6,
            child: _PlayerItemTotalPointsTitleDisplayer(),
          ),
          const Expanded(
            flex: 18,
            child: _PlayerItemTotalPointsDisplayer(
              totalPoints: 443, // TODO
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

class _PlayerItemAverageTitleDisplayer extends StatelessWidget {
  const _PlayerItemAverageTitleDisplayer({
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
              'AVERAGE', // TODO
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

class _PlayerItemAverageDisplayer extends StatelessWidget {
  final double? average;

  const _PlayerItemAverageDisplayer({
    Key? key,
    required this.average,
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
          average != null ? average!.toStringAsFixed(2) : '--',
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

class _PlayerItemTotalPointsTitleDisplayer extends StatelessWidget {
  const _PlayerItemTotalPointsTitleDisplayer({
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
              'PUNKTE GESAMT',
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

class _PlayerItemTotalPointsDisplayer extends StatelessWidget {
  final int totalPoints;

  const _PlayerItemTotalPointsDisplayer({
    Key? key,
    required this.totalPoints,
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
          totalPoints.toString(),
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
  final ScoreTrainingPlayerSnapshot player;

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
            const Expanded(
              flex: 6,
              child: _PlayerItemSmallTotalPointsDisplayer(
                totalPoints: 343, // TODO
              ),
            ),
            Expanded(
              flex: 17,
              child: _PlayerItemSmallAverageDisplayer(
                average: player.average,
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

class _PlayerItemSmallTotalPointsDisplayer extends StatelessWidget {
  final int totalPoints;

  const _PlayerItemSmallTotalPointsDisplayer({
    Key? key,
    required this.totalPoints,
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
              'GES.: $totalPoints',
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

class _PlayerItemSmallAverageDisplayer extends StatelessWidget {
  final double? average;

  const _PlayerItemSmallAverageDisplayer({
    Key? key,
    required this.average,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // TODO color
      child: Center(
        child: AutoSizeText(
          average != null ? average!.toStringAsFixed(2) : '--',
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
