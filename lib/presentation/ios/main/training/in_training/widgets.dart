part of 'in_training_page.dart';

// BODY
class _InTrainingWidget extends StatelessWidget {
  const _InTrainingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        /**
         * BlocBuilder<PlayOfflineWatcherCubit, OfflineGameSnapshot>(
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
         */
        Expanded(
          flex: 45,
          child: Container(
            color: AppColors.red,
          ),
        ),
        const Expanded(
          flex: 55,
          child: TripleInputArea(),
        ),
      ],
    );
  }
}

// TODO maybe shared
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
                // TODO real values
                child: InputRow(
                  onUndoPressed: () {},
                  onPerformThrowPressed: () {},
                  points: 88,
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
      icon: Image.asset(AppImages.chevronBackNew),
    );
  }
}

// DoubleInputArea
class DoubleInputArea extends StatelessWidget {
  const DoubleInputArea({
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
            children: const [
              Spacer(
                flex: 10,
              ),
              Expanded(
                flex: 30,
                child: _DartDisplayerLarge(),
              ),
            ],
          ),
        ),
        const Expanded(
          flex: 30,
          child: _DoubleKeyBoard(),
        )
      ],
    );
  }
}

class _DoubleKeyBoard extends StatelessWidget {
  const _DoubleKeyBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.green,
    );
  }
}

// TripleInputArea
class TripleInputArea extends StatelessWidget {
  const TripleInputArea({
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
            children: const [
              Spacer(
                flex: 10,
              ),
              Expanded(
                flex: 30,
                child: _DartDisplayerLarge(),
              ),
            ],
          ),
        ),
        const Expanded(
          flex: 30,
          child: _TripleKeyBoard(),
        )
      ],
    );
  }
}

class _TripleKeyBoard extends StatelessWidget {
  const _TripleKeyBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blue,
    );
  }
}

// Shared
// TODO
class _DartDisplayerLarge extends StatelessWidget {
  const _DartDisplayerLarge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppRow(
      spacing: size6(context),
      children: [
        Expanded(
          child: Container(
            color: AppColors.black,
          ),
        ),
        Expanded(
          child: Container(
            color: AppColors.black,
          ),
        ),
        Expanded(
          child: Container(
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}
