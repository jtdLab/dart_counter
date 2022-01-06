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
          child: Container(
            color: AppColors.orangeNew,
          ),
        ),
      ],
    );
  }
}

class _OnePlayerDisplayer extends StatelessWidget {
  const _OnePlayerDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.red,
    );
  }
}

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

/*
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
                child: BlocBuilder<PointsCubit, int>(
                  builder: (context, state) {
                    return InputRow(
                      onUndoPressed: () => context
                          .read<StandardInputAreaBloc>()
                          .add(const StandardInputAreaEvent.undoThrowPressed()),
                      onPerformThrowPressed: () => context
                          .read<StandardInputAreaBloc>()
                          .add(
                            const StandardInputAreaEvent.performThrowPressed(),
                          ),
                      points: state,
                    );
                  },
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
              _CheckButton(),
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
    // TODO dependency injection like this seems not to be good practice
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
  }
}

class _CheckButton extends StatelessWidget {
  const _CheckButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO dependency injection like this seems not to be good practice
    final standardInputAreaBloc = context.read<StandardInputAreaBloc>();
    final pointsLeftCubit = context.read<PointsLeftCubit>();
    final pointsCubit = context.read<PointsCubit>();
    final advancedSettingsBloc = context.read<AdvancedSettingsBloc>();
    final dartUtils = getIt<IDartUtils>();

    return BlocProvider(
      create: (context) => CheckButtonBloc(
        standardInputAreaBloc,
        pointsLeftCubit,
        pointsCubit,
        advancedSettingsBloc,
        dartUtils,
      )..add(const CheckButtonEvent.started()),
      child: BlocBuilder<CheckButtonBloc, CheckButtonState>(
        builder: (context, state) {
          final disabled = state is CheckButtonDisabled;

          return AppActionButton.flexible(
            fontSize: 18,
            color: AppColors.white,
            onPressed: disabled
                ? null
                : () => context
                    .read<CheckButtonBloc>()
                    .add(const CheckButtonEvent.pressed()),
            text: 'CHECK',
          );
        },
      ),
    );
  }
}

class _StandardEreaseButton extends StatelessWidget {
  const _StandardEreaseButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO dependency injection like this seems not to be good practice
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
                child: _DartsDisplayer(),
              ),

              // TODO expanded 1 ebene down
              Expanded(
                flex: 3,
                child: BlocBuilder<PointsCubit, int>(
                  builder: (context, state) {
                    return InputRow(
                      onUndoPressed: () => context
                          .read<DetailedInputAreaBloc>()
                          .add(const DetailedInputAreaEvent.undoThrowPressed()),
                      onPerformThrowPressed: () => context
                          .read<DetailedInputAreaBloc>()
                          .add(
                            const DetailedInputAreaEvent.performThrowPressed(),
                          ),
                      points: state,
                    );
                  },
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
    final detailedInputAreaBloc = context.read<DetailedInputAreaBloc>();
    final dartsCubit = context.read<DartsCubit>();
    final pointsLeftCubit = context.read<PointsLeftCubit>();
    final advancedSettingsBloc = context.read<AdvancedSettingsBloc>();
    final dartUtils = getIt<IDartUtils>();

    return BlocProvider(
      create: (context) => DetailedDigitButtonBloc(
        digit,
        detailedInputAreaBloc,
        dartsCubit,
        pointsLeftCubit,
        advancedSettingsBloc,
        dartUtils,
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
    // TODO dependency injection like this seems not to be good practice
    final detailedInputAreaBloc = context.read<DetailedInputAreaBloc>();
    final dartsCubit = context.read<DartsCubit>();
    final advancedSettingsBloc = context.read<AdvancedSettingsBloc>();

    return BlocProvider(
      create: (context) => DetailedEreaseButtonBloc(
        detailedInputAreaBloc,
        dartsCubit,
        advancedSettingsBloc,
      )..add(const DetailedEreaseButtonEvent.started()),
      child: BlocBuilder<DetailedEreaseButtonBloc, DetailedEreaseButtonState>(
        builder: (context, state) {
          final disabled = state is DetailedEreaseButtonDisabled;

          return AppActionButton.flexible(
            fontSize: 14,
            color: AppColors.white,
            onPressed: disabled
                ? null
                : () => context
                    .read<DetailedEreaseButtonBloc>()
                    .add(const DetailedEreaseButtonEvent.pressed()),
            icon: Image.asset(
              AppImages.chevronBackNew,
              color: disabled ? CupertinoColors.quaternarySystemFill : null,
            ),
          );
        },
      ),
    );
  }
}
**/