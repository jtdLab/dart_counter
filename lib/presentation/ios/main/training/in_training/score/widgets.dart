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
        Expanded(
          flex: 55,
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
    return BlocSelector<TrainingBloc, TrainingState,
        ScoreTrainingPlayerSnapshot>(
      selector: (state) =>
          state.gameSnapshot.players[0] as ScoreTrainingPlayerSnapshot,
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
      player1Item: BlocSelector<TrainingBloc, TrainingState,
          ScoreTrainingPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[0] as ScoreTrainingPlayerSnapshot,
        builder: (context, player1) => _PlayerItem(
          player: player1,
          color: AppColors.blueNew,
        ),
      ),
      player2Item: BlocSelector<TrainingBloc, TrainingState,
          ScoreTrainingPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[1] as ScoreTrainingPlayerSnapshot,
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
          ScoreTrainingPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[0] as ScoreTrainingPlayerSnapshot,
        builder: (context, player1) => _PlayerItem(
          player: player1,
          color: AppColors.blueNew,
        ),
      ),
      player2Item: BlocSelector<TrainingBloc, TrainingState,
          ScoreTrainingPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[1] as ScoreTrainingPlayerSnapshot,
        builder: (context, player2) => _PlayerItemSmall(
          player: player2,
          color: AppColors.green,
        ),
      ),
      player3Item: BlocSelector<TrainingBloc, TrainingState,
          ScoreTrainingPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[2] as ScoreTrainingPlayerSnapshot,
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
          ScoreTrainingPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[0] as ScoreTrainingPlayerSnapshot,
        builder: (context, player1) => _PlayerItemSmall(
          player: player1,
          color: AppColors.blueNew,
        ),
      ),
      player2Item: BlocSelector<TrainingBloc, TrainingState,
          ScoreTrainingPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[1] as ScoreTrainingPlayerSnapshot,
        builder: (context, player2) => _PlayerItemSmall(
          player: player2,
          color: AppColors.green,
        ),
      ),
      player3Item: BlocSelector<TrainingBloc, TrainingState,
          ScoreTrainingPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[2] as ScoreTrainingPlayerSnapshot,
        builder: (context, player3) => _PlayerItemSmall(
          player: player3,
          color: AppColors.red,
        ),
      ),
      player4Item: BlocSelector<TrainingBloc, TrainingState,
          ScoreTrainingPlayerSnapshot>(
        selector: (state) =>
            state.gameSnapshot.players[3] as ScoreTrainingPlayerSnapshot,
        builder: (context, player4) => _PlayerItemSmall(
          player: player4,
          color: AppColors.orangeNew,
        ),
      ),
    );
  }
}

// STANDARD INPUT AREA
// TODO sharing
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
            children: [
              const Spacer(),
              Expanded(
                flex: 3,
                child: InputRow(
                  onUndoPressed: () => context
                      .read<ScoreTrainingBloc>()
                      .add(const ScoreTrainingEvent.undoPressed()),
                  onPerformThrowPressed: () => context
                      .read<ScoreTrainingBloc>()
                      .add(const ScoreTrainingEvent.performPressed()),
                  points: 0, // TODO real value
                ),
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

// DETAILED INPUT AREA
// TODO sharing
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
            children: [
              const Expanded(
                // TODO
                child: DartsDisplayer(darts: KtList.empty()),
              ),
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
