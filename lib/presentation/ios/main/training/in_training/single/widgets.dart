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
