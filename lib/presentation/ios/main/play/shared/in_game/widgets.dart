// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// OTHER
import 'dart:math' as math;

// BLOCS
import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/detailed_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/optical_input_area/optical_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/speech_input_area/speech_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/standard_input_area_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/abstract_player_snapshot.dart';

// NAVBAR
class StatsButton extends StatelessWidget {
  final VoidCallback onPressed;

  const StatsButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNavigationBarButton(
      noPaddingRight: true,
      onPressed: onPressed,
      child: Image.asset(
        AppImages.statsNew,
      ),
    );
  }
}

// BODY

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
                child: _InputRow(
                  onUndoPressed: () => context
                      .read<StandardInputAreaBloc>()
                      .add(const StandardInputAreaEvent.undoThrowPressed()),
                  onPerformThrowPressed: () => context
                      .read<StandardInputAreaBloc>()
                      .add(const StandardInputAreaEvent.performThrowPressed()),
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
            children: [
              _KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.digitPressed(digit: 1)),
                text: '1',
              ),
              _KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.digitPressed(digit: 2)),
                text: '2',
              ),
              _KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.digitPressed(digit: 3)),
                text: '3',
              ),
            ],
          ),
        ),
        Expanded(
          child: AppRow(
            spacing: size6(context),
            children: [
              _KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.digitPressed(digit: 4)),
                text: '4',
              ),
              _KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.digitPressed(digit: 5)),
                text: '5',
              ),
              _KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.digitPressed(digit: 6)),
                text: '6',
              ),
            ],
          ),
        ),
        Expanded(
          child: AppRow(
            spacing: size6(context),
            children: [
              _KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.digitPressed(digit: 7)),
                text: '7',
              ),
              _KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.digitPressed(digit: 8)),
                text: '8',
              ),
              _KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.digitPressed(digit: 9)),
                text: '9',
              ),
            ],
          ),
        ),
        Expanded(
          child: AppRow(
            spacing: size6(context),
            children: [
              _KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.checkPressed()),
                fontSize: 18,
                text: LocaleKeys.check.tr().toUpperCase(),
              ),
              _KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.digitPressed(digit: 0)),
                text: '0',
              ),
              _KeyBoardButton(
                onPressed: () => context
                    .read<StandardInputAreaBloc>()
                    .add(const StandardInputAreaEvent.erasePressed()),
                child: Image.asset(AppImages.chevronBackNew),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _KeyBoardButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double fontSize;
  final String? text;
  final Widget? child;

  const _KeyBoardButton({
    Key? key,
    this.onPressed,
    this.fontSize = 28,
    this.text,
    this.child,
  })  : assert(text != null || child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (text != null) {
      return AppActionButton.flexible(
        fontSize: fontSize,
        color: AppColors.white,
        onPressed: onPressed,
        text: text,
      );
    }
    if (child != null) {
      return AppActionButton.flexible(
        color: AppColors.white,
        onPressed: onPressed,
        icon: child,
      );
    }
    throw AssertionError('Need to provide child or text');
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
              BlocBuilder<InputCubit, InputState>(
                builder: (context, state) {
                  return Expanded(
                    child: _DartsDisplayer(
                      darts: state.whenOrNull(darts: (darts) => darts) ??
                          const KtList.empty(),
                    ),
                  );
                },
              ),
              Expanded(
                flex: 3,
                child: _InputRow(
                  onUndoPressed: () => context
                      .read<DetailedInputAreaBloc>()
                      .add(const DetailedInputAreaEvent.undoThrowPressed()),
                  onPerformThrowPressed: () =>
                      context.read<DetailedInputAreaBloc>().add(
                            const DetailedInputAreaEvent.performThrowPressed(),
                          ),
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

// TODO refactor 900 lines are to much for this
class _DetailedKeyBoard extends StatelessWidget {
  const _DetailedKeyBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailedInputAreaBloc, DetailedInputAreaState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => context
              .read<DetailedInputAreaBloc>()
              .add(const DetailedInputAreaEvent.unfocused()),
          child: AppColumn(
            spacing: size6(context),
            children: [
              Expanded(
                child: AppRow(
                  spacing: size6(context),
                  children: [
                    _DetailedKeyBoardButton(
                      fontSize: 14,
                      onPressed: state.focusedValue == null
                          ? () => _dartPressed(
                                context: context,
                                value: 16,
                              )
                          : state.focusedValue == 16
                              ? () => _dartDetailPressed(
                                    context: context,
                                    type: DartType.single,
                                  )
                              : state.focusedValue == 17
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.single,
                                      )
                                  : null,
                      textOrIcon: left(
                        state.focusedValue == 16
                            ? 'S16'
                            : state.focusedValue == 17
                                ? 'S17'
                                : '16',
                      ),
                    ),
                    _DetailedKeyBoardButton(
                      fontSize: 14,
                      color: state.focusedValue == 16
                          ? AppColors.red
                          : state.focusedValue == 17
                              ? AppColors.red
                              : AppColors.black,
                      onPressed: state.focusedValue == null
                          ? () => _dartPressed(
                                context: context,
                                value: 17,
                              )
                          : state.focusedValue == 16
                              ? () => _dartDetailPressed(
                                    context: context,
                                    type: DartType.double,
                                  )
                              : state.focusedValue == 17
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.double,
                                      )
                                  : state.focusedValue == 18
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.single,
                                          )
                                      : null,
                      textOrIcon: left(
                        state.focusedValue == 16
                            ? 'D16'
                            : state.focusedValue == 17
                                ? 'D17'
                                : state.focusedValue == 18
                                    ? 'S18'
                                    : '17',
                      ),
                    ),
                    _DetailedKeyBoardButton(
                      fontSize: 14,
                      color: state.focusedValue == 16
                          ? AppColors.orangeNew
                          : state.focusedValue == 17
                              ? AppColors.orangeNew
                              : state.focusedValue == 18
                                  ? AppColors.red
                                  : AppColors.black,
                      onPressed: state.focusedValue == null
                          ? () => _dartPressed(
                                context: context,
                                value: 18,
                              )
                          : state.focusedValue == 16
                              ? () => _dartDetailPressed(
                                    context: context,
                                    type: DartType.triple,
                                  )
                              : state.focusedValue == 17
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.triple,
                                      )
                                  : state.focusedValue == 18
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.double,
                                          )
                                      : state.focusedValue == 19
                                          ? () => _dartDetailPressed(
                                                context: context,
                                                type: DartType.single,
                                              )
                                          : null,
                      textOrIcon: left(
                        state.focusedValue == 16
                            ? 'T16'
                            : state.focusedValue == 17
                                ? 'T17'
                                : state.focusedValue == 18
                                    ? 'D18'
                                    : state.focusedValue == 19
                                        ? 'S19'
                                        : '18',
                      ),
                    ),
                    _DetailedKeyBoardButton(
                      fontSize: 14,
                      color: state.focusedValue == 18
                          ? AppColors.orangeNew
                          : state.focusedValue == 19
                              ? AppColors.red
                              : AppColors.black,
                      onPressed: state.focusedValue == null
                          ? () => _dartPressed(
                                context: context,
                                value: 19,
                              )
                          : state.focusedValue == 18
                              ? () => _dartDetailPressed(
                                    context: context,
                                    type: DartType.triple,
                                  )
                              : state.focusedValue == 19
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.double,
                                      )
                                  : state.focusedValue == 20
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.single,
                                          )
                                      : null,
                      textOrIcon: left(
                        state.focusedValue == 18
                            ? 'T18'
                            : state.focusedValue == 19
                                ? 'D19'
                                : state.focusedValue == 20
                                    ? 'S20'
                                    : '19',
                      ),
                    ),
                    _DetailedKeyBoardButton(
                      fontSize: 14,
                      color: state.focusedValue == 19
                          ? AppColors.orangeNew
                          : state.focusedValue == 20
                              ? AppColors.red
                              : AppColors.black,
                      onPressed: state.focusedValue == null
                          ? () => _dartPressed(
                                context: context,
                                value: 20,
                              )
                          : state.focusedValue == 19
                              ? () => _dartDetailPressed(
                                    context: context,
                                    type: DartType.triple,
                                  )
                              : state.focusedValue == 20
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.double,
                                      )
                                  : state.focusedValue == 25
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.single,
                                          )
                                      : null,
                      textOrIcon: left(
                        state.focusedValue == 19
                            ? 'T19'
                            : state.focusedValue == 20
                                ? 'D20'
                                : state.focusedValue == 25
                                    ? 'S25'
                                    : '20',
                      ),
                    ),
                    _DetailedKeyBoardButton(
                      fontSize: 14,
                      color: state.focusedValue == 20
                          ? AppColors.orangeNew
                          : state.focusedValue == 25
                              ? AppColors.red
                              : AppColors.black,
                      onPressed: state.focusedValue == null
                          ? () => _dartPressed(
                                context: context,
                                value: 25,
                              )
                          : state.focusedValue == 20
                              ? () => _dartDetailPressed(
                                    context: context,
                                    type: DartType.triple,
                                  )
                              : state.focusedValue == 25
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.double,
                                      )
                                  : null,
                      textOrIcon: left(
                        state.focusedValue == 20
                            ? 'T20'
                            : state.focusedValue == 25
                                ? 'D25'
                                : '25',
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: AppRow(
                  spacing: size6(context),
                  children: [
                    _DetailedKeyBoardButton(
                      fontSize: 14,
                      onPressed: state.focusedValue == null
                          ? () => _dartPressed(
                                context: context,
                                value: 10,
                              )
                          : state.focusedValue == 10
                              ? () => _dartDetailPressed(
                                    context: context,
                                    type: DartType.single,
                                  )
                              : state.focusedValue == 11
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.single,
                                      )
                                  : null,
                      textOrIcon: left(
                        state.focusedValue == 10
                            ? 'S10'
                            : state.focusedValue == 11
                                ? 'S11'
                                : '10',
                      ),
                    ),
                    _DetailedKeyBoardButton(
                      fontSize: 14,
                      color: state.focusedValue == 10
                          ? AppColors.red
                          : state.focusedValue == 11
                              ? AppColors.red
                              : AppColors.black,
                      onPressed: state.focusedValue == null
                          ? () => _dartPressed(
                                context: context,
                                value: 11,
                              )
                          : state.focusedValue == 10
                              ? () => _dartDetailPressed(
                                    context: context,
                                    type: DartType.double,
                                  )
                              : state.focusedValue == 11
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.double,
                                      )
                                  : state.focusedValue == 12
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.single,
                                          )
                                      : null,
                      textOrIcon: left(
                        state.focusedValue == 10
                            ? 'D10'
                            : state.focusedValue == 11
                                ? 'D11'
                                : state.focusedValue == 12
                                    ? 'S12'
                                    : '11',
                      ),
                    ),
                    _DetailedKeyBoardButton(
                      fontSize: 14,
                      color: state.focusedValue == 10
                          ? AppColors.orangeNew
                          : state.focusedValue == 11
                              ? AppColors.orangeNew
                              : state.focusedValue == 12
                                  ? AppColors.red
                                  : AppColors.black,
                      onPressed: state.focusedValue == null
                          ? () => _dartPressed(
                                context: context,
                                value: 12,
                              )
                          : state.focusedValue == 10
                              ? () => _dartDetailPressed(
                                    context: context,
                                    type: DartType.triple,
                                  )
                              : state.focusedValue == 11
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.triple,
                                      )
                                  : state.focusedValue == 12
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.double,
                                          )
                                      : state.focusedValue == 13
                                          ? () => _dartDetailPressed(
                                                context: context,
                                                type: DartType.single,
                                              )
                                          : null,
                      textOrIcon: left(
                        state.focusedValue == 10
                            ? 'T10'
                            : state.focusedValue == 11
                                ? 'T11'
                                : state.focusedValue == 12
                                    ? 'D12'
                                    : state.focusedValue == 13
                                        ? 'S13'
                                        : '12',
                      ),
                    ),
                    _DetailedKeyBoardButton(
                      fontSize: 14,
                      color: state.focusedValue == 12
                          ? AppColors.orangeNew
                          : state.focusedValue == 13
                              ? AppColors.red
                              : AppColors.black,
                      onPressed: state.focusedValue == null
                          ? () => _dartPressed(
                                context: context,
                                value: 13,
                              )
                          : state.focusedValue == 12
                              ? () => _dartDetailPressed(
                                    context: context,
                                    type: DartType.triple,
                                  )
                              : state.focusedValue == 13
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.double,
                                      )
                                  : state.focusedValue == 14
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.single,
                                          )
                                      : state.focusedValue == 15
                                          ? () => _dartDetailPressed(
                                                context: context,
                                                type: DartType.single,
                                              )
                                          : null,
                      textOrIcon: left(
                        state.focusedValue == 12
                            ? 'T12'
                            : state.focusedValue == 13
                                ? 'D13'
                                : state.focusedValue == 14
                                    ? 'S14'
                                    : state.focusedValue == 15
                                        ? 'S15'
                                        : '13',
                      ),
                    ),
                    _DetailedKeyBoardButton(
                      fontSize: 14,
                      color: state.focusedValue == 13
                          ? AppColors.orangeNew
                          : state.focusedValue == 14
                              ? AppColors.red
                              : state.focusedValue == 15
                                  ? AppColors.red
                                  : AppColors.black,
                      onPressed: state.focusedValue == null
                          ? () => _dartPressed(
                                context: context,
                                value: 14,
                              )
                          : state.focusedValue == 13
                              ? () => _dartDetailPressed(
                                    context: context,
                                    type: DartType.triple,
                                  )
                              : state.focusedValue == 14
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.double,
                                      )
                                  : state.focusedValue == 15
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.double,
                                          )
                                      : null,
                      textOrIcon: left(
                        state.focusedValue == 13
                            ? 'T13'
                            : state.focusedValue == 14
                                ? 'D14'
                                : state.focusedValue == 15
                                    ? 'D15'
                                    : '14',
                      ),
                    ),
                    _DetailedKeyBoardButton(
                      fontSize: 14,
                      color: state.focusedValue == 14
                          ? AppColors.orangeNew
                          : state.focusedValue == 15
                              ? AppColors.orangeNew
                              : AppColors.black,
                      onPressed: state.focusedValue == null
                          ? () => _dartPressed(
                                context: context,
                                value: 15,
                              )
                          : state.focusedValue == 14
                              ? () => _dartDetailPressed(
                                    context: context,
                                    type: DartType.triple,
                                  )
                              : state.focusedValue == 15
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.triple,
                                      )
                                  : null,
                      textOrIcon: left(
                        state.focusedValue == 14
                            ? 'T14'
                            : state.focusedValue == 15
                                ? 'T15'
                                : '15',
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: AppRow(
                  spacing: size6(context),
                  children: [
                    _DetailedKeyBoardButton(
                      fontSize: 14,
                      onPressed: state.focusedValue == null
                          ? () => _dartPressed(
                                context: context,
                                value: 4,
                              )
                          : state.focusedValue == 4
                              ? () => _dartDetailPressed(
                                    context: context,
                                    type: DartType.single,
                                  )
                              : state.focusedValue == 5
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.single,
                                      )
                                  : null,
                      textOrIcon: left(
                        state.focusedValue == 4
                            ? 'S4'
                            : state.focusedValue == 5
                                ? 'S5'
                                : '4',
                      ),
                    ),
                    _DetailedKeyBoardButton(
                      fontSize: 14,
                      color: state.focusedValue == 4
                          ? AppColors.red
                          : state.focusedValue == 5
                              ? AppColors.red
                              : AppColors.black,
                      onPressed: state.focusedValue == null
                          ? () => _dartPressed(
                                context: context,
                                value: 5,
                              )
                          : state.focusedValue == 4
                              ? () => _dartDetailPressed(
                                    context: context,
                                    type: DartType.double,
                                  )
                              : state.focusedValue == 5
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.double,
                                      )
                                  : state.focusedValue == 6
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.single,
                                          )
                                      : null,
                      textOrIcon: left(
                        state.focusedValue == 4
                            ? 'D4'
                            : state.focusedValue == 5
                                ? 'D5'
                                : state.focusedValue == 6
                                    ? 'S6'
                                    : '5',
                      ),
                    ),
                    _DetailedKeyBoardButton(
                      fontSize: 14,
                      color: state.focusedValue == 4
                          ? AppColors.orangeNew
                          : state.focusedValue == 5
                              ? AppColors.orangeNew
                              : state.focusedValue == 6
                                  ? AppColors.red
                                  : AppColors.black,
                      onPressed: state.focusedValue == null
                          ? () => _dartPressed(
                                context: context,
                                value: 6,
                              )
                          : state.focusedValue == 4
                              ? () => _dartDetailPressed(
                                    context: context,
                                    type: DartType.triple,
                                  )
                              : state.focusedValue == 5
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.triple,
                                      )
                                  : state.focusedValue == 6
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.double,
                                          )
                                      : state.focusedValue == 7
                                          ? () => _dartDetailPressed(
                                                context: context,
                                                type: DartType.single,
                                              )
                                          : null,
                      textOrIcon: left(
                        state.focusedValue == 4
                            ? 'T4'
                            : state.focusedValue == 5
                                ? 'T5'
                                : state.focusedValue == 6
                                    ? 'D6'
                                    : state.focusedValue == 7
                                        ? 'S7'
                                        : '6',
                      ),
                    ),
                    _DetailedKeyBoardButton(
                      fontSize: 14,
                      color: state.focusedValue == 6
                          ? AppColors.orangeNew
                          : state.focusedValue == 7
                              ? AppColors.red
                              : AppColors.black,
                      onPressed: state.focusedValue == null
                          ? () => _dartPressed(
                                context: context,
                                value: 7,
                              )
                          : state.focusedValue == 6
                              ? () => _dartDetailPressed(
                                    context: context,
                                    type: DartType.triple,
                                  )
                              : state.focusedValue == 7
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.double,
                                      )
                                  : state.focusedValue == 8
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.single,
                                          )
                                      : state.focusedValue == 9
                                          ? () => _dartDetailPressed(
                                                context: context,
                                                type: DartType.single,
                                              )
                                          : null,
                      textOrIcon: left(
                        state.focusedValue == 6
                            ? 'T6'
                            : state.focusedValue == 7
                                ? 'D7'
                                : state.focusedValue == 8
                                    ? 'S8'
                                    : state.focusedValue == 9
                                        ? 'S9'
                                        : '7',
                      ),
                    ),
                    _DetailedKeyBoardButton(
                      fontSize: 14,
                      color: state.focusedValue == 7
                          ? AppColors.orangeNew
                          : state.focusedValue == 8
                              ? AppColors.red
                              : state.focusedValue == 9
                                  ? AppColors.red
                                  : AppColors.black,
                      onPressed: state.focusedValue == null
                          ? () => _dartPressed(
                                context: context,
                                value: 8,
                              )
                          : state.focusedValue == 7
                              ? () => _dartDetailPressed(
                                    context: context,
                                    type: DartType.triple,
                                  )
                              : state.focusedValue == 8
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.double,
                                      )
                                  : state.focusedValue == 9
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.double,
                                          )
                                      : null,
                      textOrIcon: left(
                        state.focusedValue == 7
                            ? 'T7'
                            : state.focusedValue == 8
                                ? 'D8'
                                : state.focusedValue == 9
                                    ? 'D9'
                                    : '8',
                      ),
                    ),
                    _DetailedKeyBoardButton(
                      fontSize: 14,
                      color: state.focusedValue == 8
                          ? AppColors.orangeNew
                          : state.focusedValue == 9
                              ? AppColors.orangeNew
                              : AppColors.black,
                      onPressed: state.focusedValue == null
                          ? () => _dartPressed(
                                context: context,
                                value: 9,
                              )
                          : state.focusedValue == 8
                              ? () => _dartDetailPressed(
                                    context: context,
                                    type: DartType.triple,
                                  )
                              : state.focusedValue == 9
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.triple,
                                      )
                                  : null,
                      textOrIcon: left(
                        state.focusedValue == 8
                            ? 'T8'
                            : state.focusedValue == 9
                                ? 'T9'
                                : '9',
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: AppRow(
                  spacing: size6(context),
                  children: [
                    Expanded(
                      child: AppRow(
                        spacing: size6(context),
                        children: [
                          _DetailedKeyBoardButton(
                            fontSize: 14,
                            onPressed: state.focusedValue == null
                                ? () => _dartPressed(
                                      context: context,
                                      value: 0,
                                    )
                                : state.focusedValue == 1
                                    ? () => _dartDetailPressed(
                                          context: context,
                                          type: DartType.single,
                                        )
                                    : null,
                            textOrIcon:
                                left(state.focusedValue == 1 ? 'S1' : '0'),
                          ),
                          _DetailedKeyBoardButton(
                            fontSize: 14,
                            color: state.focusedValue == 1
                                ? AppColors.red
                                : AppColors.black,
                            onPressed: state.focusedValue == null
                                ? () => _dartPressed(
                                      context: context,
                                      value: 1,
                                    )
                                : state.focusedValue == 1
                                    ? () => _dartDetailPressed(
                                          context: context,
                                          type: DartType.double,
                                        )
                                    : state.focusedValue == 2
                                        ? () => _dartDetailPressed(
                                              context: context,
                                              type: DartType.single,
                                            )
                                        : state.focusedValue == 3
                                            ? () => _dartDetailPressed(
                                                  context: context,
                                                  type: DartType.single,
                                                )
                                            : null,
                            textOrIcon: left(
                              state.focusedValue == 1
                                  ? 'D1'
                                  : state.focusedValue == 2
                                      ? 'S2'
                                      : state.focusedValue == 3
                                          ? 'S3'
                                          : '1',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: AppRow(
                        spacing: size6(context),
                        children: [
                          _DetailedKeyBoardButton(
                            fontSize: 14,
                            color: state.focusedValue == 1
                                ? AppColors.orangeNew
                                : state.focusedValue == 2
                                    ? AppColors.red
                                    : state.focusedValue == 3
                                        ? AppColors.red
                                        : AppColors.black,
                            onPressed: state.focusedValue == null
                                ? () => _dartPressed(
                                      context: context,
                                      value: 2,
                                    )
                                : state.focusedValue == 1
                                    ? () => _dartDetailPressed(
                                          context: context,
                                          type: DartType.triple,
                                        )
                                    : state.focusedValue == 2
                                        ? () => _dartDetailPressed(
                                              context: context,
                                              type: DartType.double,
                                            )
                                        : state.focusedValue == 3
                                            ? () => _dartDetailPressed(
                                                  context: context,
                                                  type: DartType.double,
                                                )
                                            : null,
                            textOrIcon: left(
                              state.focusedValue == 1
                                  ? 'T1'
                                  : state.focusedValue == 2
                                      ? 'D2'
                                      : state.focusedValue == 3
                                          ? 'D3'
                                          : '2',
                            ),
                          ),
                          _DetailedKeyBoardButton(
                            fontSize: 14,
                            color: state.focusedValue == 2
                                ? AppColors.orangeNew
                                : state.focusedValue == 3
                                    ? AppColors.orangeNew
                                    : AppColors.black,
                            onPressed: state.focusedValue == null
                                ? () => _dartPressed(
                                      context: context,
                                      value: 3,
                                    )
                                : state.focusedValue == 2
                                    ? () => _dartDetailPressed(
                                          context: context,
                                          type: DartType.triple,
                                        )
                                    : state.focusedValue == 3
                                        ? () => _dartDetailPressed(
                                              context: context,
                                              type: DartType.triple,
                                            )
                                        : null,
                            textOrIcon: left(
                              state.focusedValue == 2
                                  ? 'T2'
                                  : state.focusedValue == 3
                                      ? 'T3'
                                      : '3',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: AppRow(
                        spacing: size6(context),
                        children: [
                          _DetailedKeyBoardButton(
                            onPressed: () =>
                                context.read<DetailedInputAreaBloc>().add(
                                      const DetailedInputAreaEvent
                                          .undoDartPressed(),
                                    ),
                            textOrIcon: right(
                              Image.asset(AppImages.chevronBackNew),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // TODO cleanest way?
  void _dartPressed({
    required BuildContext context,
    required int value,
  }) {
    context.read<DetailedInputAreaBloc>().add(
          DetailedInputAreaEvent.dartPressed(
            value: value,
          ),
        );
  }

  void _dartDetailPressed({
    required BuildContext context,
    required DartType type,
  }) {
    context.read<DetailedInputAreaBloc>().add(
          DetailedInputAreaEvent.dartDetailPressed(
            type: type,
          ),
        );
  }
}

class _DetailedKeyBoardButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double fontSize;
  final Color color;
  final Either<String, Widget> textOrIcon;

  const _DetailedKeyBoardButton({
    Key? key,
    this.onPressed,
    this.fontSize = 28,
    this.color = AppColors.black,
    required this.textOrIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return textOrIcon.fold(
      (text) => AppActionButton.flexible(
        fontSize: fontSize,
        color: AppColors.white,
        onPressed: onPressed,
        text: text,
        fontColor: color,
        borderColor: color,
      ),
      (icon) => AppActionButton.flexible(
        fontSize: fontSize,
        color: AppColors.white,
        onPressed: onPressed,
        icon: icon,
        fontColor: color,
        borderColor: color,
      ),
    );
  }
}

// SPEECH INPUT AREA
// TODO flex factors
class SpeechInputArea extends StatelessWidget {
  const SpeechInputArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SpeechInputAreaBloc>(),
      child: Builder(
        builder: (context) =>
            BlocListener<SpeechInputAreaBloc, SpeechInputAreaState>(
          listener: (context, state) {
            // TODO how to get darts on double speech ?
            /**
           * final showCheckoutDetails = state.showCheckoutDetails;

          if (showCheckoutDetails) {
            showCupertinoModalBottomSheet(
              expand: true,
              context: context,
              builder: (context) => BlocProvider(
                create: (context) => getIt<CheckoutDetailsBloc>(),
                child: const CheckoutDetailsModal(),
              ),
            );
          }
           */
          },
          child: AppColumn(
            spacing: size6(context),
            children: [
              const Expanded(
                flex: 3,
                child: _SpeechKeyBoard(),
              ),
              Expanded(
                child: AppColumn(
                  spacing: size6(context),
                  children: [
                    const Spacer(),
                    Expanded(
                      flex: 3,
                      child: AppRow(
                        spacing: size6(context),
                        children: [
                          const Spacer(),
                          Expanded(
                            child: _UndoButton(
                              onPressed: () => context
                                  .read<SpeechInputAreaBloc>()
                                  .add(const SpeechInputAreaEvent
                                      .undoThrowPressed()),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SpeechKeyBoard extends StatelessWidget {
  const _SpeechKeyBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          AppImages.micro,
          width: size150(context),
          height: size150(context),
        ),
        const Spacer(),
      ],
    );
  }
}

// OPTICAL INPUT AREA
// TODO make responsive
class OpticalInputArea extends StatelessWidget {
  final VoidCallback onUndoPressed;
  final VoidCallback onPerformThrowPressed;

  const OpticalInputArea({
    Key? key,
    required this.onUndoPressed,
    required this.onPerformThrowPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<OpticalInputAreaBloc>(),
      child: AppColumn(
        spacing: size6(context),
        children: [
          BlocBuilder<InputCubit, InputState>(
            //  TODO maybe in the _DartDisplayer bloc builtit
            builder: (context, state) => _DartsDisplayer(
              darts: state.whenOrNull(darts: (darts) => darts)!,
            ),
          ),
          _InputRow(
            onUndoPressed: onUndoPressed,
            onPerformThrowPressed: onPerformThrowPressed,
          ),
          const _OpticalKeyBoard(),
        ],
      ),
    );
  }
}

// TODO expanded not sized pls
class _OpticalKeyBoard extends StatelessWidget {
  const _OpticalKeyBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 4 * size55(context) + 3 * size6(context),
      height: 4 * size55(context) + 3 * size6(context),
      child: const _DartBoard(),
    );
  }
}

// TODO refactor
class _DartBoard extends StatefulWidget {
  const _DartBoard({
    Key? key,
  }) : super(key: key);

  @override
  _DartBoardState createState() => _DartBoardState();
}

class _DartBoardState extends State<_DartBoard> {
  double scale = 1;
  late Offset center;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final radius = (4 * size55(context) + 3 * size6(context)) / 2;
    center = Offset(radius, radius);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, boxConstraints) => ClipRRect(
        borderRadius: BorderRadius.circular(
          boxConstraints.maxWidth,
        ),
        child: GestureDetector(
          onTapUp: (details) {
            final Offset tapPosition = Offset(
              details.localPosition.dx,
              details.localPosition.dy,
            );

            // zoom or reset
            setState(() {
              if (scale == 1) {
                scale = 3;
                center = tapPosition;
              } else {
                scale = 1;
                final radius = (4 * size55(context) + 3 * size6(context)) / 2;
                center = Offset(radius, radius);
              }
            });
          },
          child: CustomPaint(
            painter: _DartBoardPainter(scale: scale, center: center),
          ),
        ),
      ),
    );
  }
}

// TODO maybe use this more dart like approach with _ in other widget depending subwidgets
class _DartBoardPainter extends CustomPainter {
  final double scale;
  final Offset center;

  _DartBoardPainter({
    required this.scale,
    required this.center,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.width < size.height ? size.width / 2 : size.height / 2;

    // translate so the (0,0) of the coordinate system is in the middle
    final Offset translatedCenter = Offset(
      -center.dx + radius,
      -center.dy + radius,
    );
    canvas.translate(radius, radius);

    // scale
    canvas.scale(scale);

    final redFilled = Paint()
      ..color = AppColors.red
      ..style = PaintingStyle.fill;

    final blackFilled = Paint()
      ..color = AppColors.black
      ..style = PaintingStyle.fill;

    final orangeFilled = Paint()
      ..color = AppColors.orangeNew
      ..style = PaintingStyle.fill;

    final grayFilled = Paint()
      ..color = AppColors.gray
      ..style = PaintingStyle.fill;

    final whiteTransparent = Paint()
      ..color = Colors.white24
      ..style = PaintingStyle.fill;

    // double
    canvas.drawCircle(translatedCenter, radius, redFilled);

    // single
    canvas.drawCircle(translatedCenter, 0.9 * radius, blackFilled);

    // triple
    canvas.drawCircle(translatedCenter, 0.7 * radius, orangeFilled);

    // single
    canvas.drawCircle(translatedCenter, 0.6 * radius, blackFilled);

    for (int i = 0; i < 10; i++) {
      // overlay
      canvas.drawArc(
        Rect.fromCenter(
          center: translatedCenter,
          height: 2 * radius,
          width: 2 * radius,
        ),
        -math.pi / 20 + 2 * i * math.pi / 10,
        math.pi / 10,
        true,
        whiteTransparent,
      );
    }

    // single bull
    canvas.drawCircle(translatedCenter, 0.2 * radius, grayFilled);

    // bull
    canvas.drawCircle(translatedCenter, 0.1 * radius, redFilled);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

// SHARED

// PLAYER ITEM
class PlayerItem extends StatelessWidget {
  // final ProfileImagePosition profileImagePosition; TODO
  final AbstractPlayerSnapshot player;

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
              name: player.name!,
            ),
          ),
          Expanded(
            flex: 6,
            child: _PlayerItemLegsSetsDisplayer(
              isCurrentTurn: player.isCurrentTurn,
              wonSets: player.wonSets,
              wonLegsCurrentSet: player.wonLegsCurrentSet,
            ),
          ),
          Expanded(
            flex: 30,
            child: _PlayerItemPointsLeftLastThrowDisplayer(
              pointsLeft: player.pointsLeft,
              lastPoints: player.lastPoints,
            ),
          ),
          Expanded(
            flex: 6,
            child: _PlayerItemFinishRecommendationDisplayer(
              finishRecommendation: player.finishRecommendation,
            ),
          ),
          Expanded(
            flex: 18,
            child: _PlayerItemStatsDisplayer(
              isCurrentTurn: player.isCurrentTurn,
              dartsThrownCurrentLeg: player.dartsThrownCurrentLeg,
              average: player.stats.average,
              checkoutPercentage: player.stats.checkoutPercentage,
            ),
          ),
        ],
      ),
    );
  }
}

class _PlayerItemHeader extends StatelessWidget {
  final Color color;
  final String? photoUrl;
  final String name;

  const _PlayerItemHeader({
    Key? key,
    this.color = AppColors.blueNew,
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
                color: color,
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

class _PlayerItemLegsSetsDisplayer extends StatelessWidget {
  final bool isCurrentTurn;
  final int? wonSets;
  final int wonLegsCurrentSet;

  const _PlayerItemLegsSetsDisplayer({
    Key? key,
    required this.isCurrentTurn,
    this.wonSets,
    required this.wonLegsCurrentSet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isCurrentTurn ? AppColors.black : AppColors.white,
        border: Border(
          top: BorderSide(width: border4(context)),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(size6(context) / 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            if (wonSets != null) ...[
              AutoSizeText(
                'S:$wonSets',
                style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                      color: isCurrentTurn ? AppColors.white : AppColors.black,
                    ),
              ),
            ],
            AutoSizeText(
              'L:$wonLegsCurrentSet',
              style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                    color: isCurrentTurn ? AppColors.white : AppColors.black,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PlayerItemPointsLeftLastThrowDisplayer extends StatelessWidget {
  final int pointsLeft;
  final int? lastPoints;

  const _PlayerItemPointsLeftLastThrowDisplayer({
    Key? key,
    required this.pointsLeft,
    this.lastPoints,
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
      child: Column(
        children: [
          const Spacer(),
          Expanded(
            flex: 5,
            child: Center(
              child: AutoSizeText(
                pointsLeft.toString(),
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
                lastPoints?.toString() ?? '--',
                maxLines: 1,
                maxFontSize: 13,
                minFontSize: 1,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class _PlayerItemFinishRecommendationDisplayer extends StatelessWidget {
  final KtList<String>? finishRecommendation;

  const _PlayerItemFinishRecommendationDisplayer({
    Key? key,
    this.finishRecommendation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.orangeNew,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          if (finishRecommendation != null) ...[
            for (int i = 0; i < finishRecommendation!.size; i++)
              AutoSizeText(
                finishRecommendation!.get(i),
                minFontSize: 1,
                maxLines: 1,
              ),
          ] else ...[
            const Text(''),
          ]
        ],
      ),
    );
  }
}

class _PlayerItemStatsDisplayer extends StatelessWidget {
  final bool isCurrentTurn;
  final int dartsThrownCurrentLeg;
  final double? average;
  final double? checkoutPercentage;

  const _PlayerItemStatsDisplayer({
    Key? key,
    required this.isCurrentTurn,
    required this.dartsThrownCurrentLeg,
    required this.average,
    required this.checkoutPercentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isCurrentTurn ? AppColors.black : AppColors.white,
        border: Border(
          top: BorderSide(width: border4(context)),
        ),
      ),
      child: Row(
        children: [
          const Spacer(),
          Expanded(
            flex: 5,
            child: _PlayerItemStatDisplayer(
              isCurrentTurn: isCurrentTurn,
              icon:
                  isCurrentTurn ? AppImages.flightWhite : AppImages.flightBlack,
              value: dartsThrownCurrentLeg.toString(),
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 5,
            child: _PlayerItemStatDisplayer(
              isCurrentTurn: isCurrentTurn,
              icon: isCurrentTurn
                  ? AppImages.averageWhite
                  : AppImages.averageBlack,
              value: average?.toStringAsFixed(2) ?? '-',
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 5,
            child: _PlayerItemStatDisplayer(
              isCurrentTurn: isCurrentTurn,
              icon: isCurrentTurn
                  ? AppImages.checkoutPercentageWhite
                  : AppImages.checkoutPercentageBlack,
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

class _PlayerItemStatDisplayer extends StatelessWidget {
  final bool isCurrentTurn;
  final String icon;
  final String? value;

  const _PlayerItemStatDisplayer({
    Key? key,
    required this.isCurrentTurn,
    required this.icon,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Expanded(
          flex: 4,
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(
                    icon,
                    fit: BoxFit.fill,
                    errorBuilder: (_, __, ___) {
                      return Image.asset(
                        icon,
                        fit: BoxFit.fill,
                        errorBuilder: (_, __, ___) => const SizedBox(),
                      );
                    },
                  ),
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              Expanded(
                flex: 3,
                child: AutoSizeText(
                  value ?? '-',
                  style: CupertinoTheme.of(context)
                      .textTheme
                      .textStyle
                      .copyWith(
                        color:
                            isCurrentTurn ? AppColors.white : AppColors.black,
                      ),
                  maxLines: 1,
                  minFontSize: 4,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
      ],
    );
  }
}

// PLAYER ITEM SMALL
class PlayerItemSmall extends StatelessWidget {
  final AbstractPlayerSnapshot player;

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
            Expanded(
              flex: 6,
              child: _PlayerItemSmallLegsSetsDisplayer(
                wonSets: player.wonSets,
                wonLegsCurrentSet: player.wonLegsCurrentSet,
              ),
            ),
            Expanded(
              flex: 17,
              child: _PlayerItemSmallPointsLeftLastThrowDisplayer(
                isCurrentTurn: player.isCurrentTurn,
                pointsLeft: player.pointsLeft,
                lastPoints: player.lastPoints,
              ),
            ),
            Expanded(
              flex: 6,
              child: _PlayerItemSmallFinishRecommendationDisplayer(
                finishRecommendation: player.finishRecommendation,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PlayerItemSmallHeader extends StatelessWidget {
  final Color color;
  final String? photoUrl;
  final String name;

  const _PlayerItemSmallHeader({
    Key? key,
    this.color = AppColors.blueNew,
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
                color: color,
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

class _PlayerItemSmallLegsSetsDisplayer extends StatelessWidget {
  final int? wonSets;
  final int wonLegsCurrentSet;

  const _PlayerItemSmallLegsSetsDisplayer({
    Key? key,
    this.wonSets,
    required this.wonLegsCurrentSet,
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
            if (wonSets != null) ...[
              AutoSizeText(
                'S:$wonSets',
                maxLines: 1,
                minFontSize: 1,
                style: CupertinoTheme.of(context)
                    .textTheme
                    .textStyle
                    .copyWith(color: AppColors.white),
              ),
            ],
            AutoSizeText(
              'L:$wonLegsCurrentSet',
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

class _PlayerItemSmallPointsLeftLastThrowDisplayer extends StatelessWidget {
  final bool isCurrentTurn;
  final int pointsLeft;
  final int? lastPoints;

  const _PlayerItemSmallPointsLeftLastThrowDisplayer({
    Key? key,
    required this.isCurrentTurn,
    required this.pointsLeft,
    this.lastPoints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isCurrentTurn ? AppColors.black : AppColors.white,
        border: Border(
          bottom: BorderSide(width: border4(context)),
        ),
      ),
      child: Column(
        children: [
          const Spacer(),
          Expanded(
            flex: 5,
            child: Center(
              child: AutoSizeText(
                pointsLeft.toString(),
                style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                      fontSize: 40, // TODO
                      color: isCurrentTurn ? AppColors.white : AppColors.black,
                    ),
                maxLines: 1,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: AutoSizeText(
                lastPoints?.toString() ?? '--',
                maxLines: 1,
                maxFontSize: 13,
                minFontSize: 1,
                style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                      fontSize: 13,
                      color: isCurrentTurn ? AppColors.white : AppColors.black,
                    ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class _PlayerItemSmallFinishRecommendationDisplayer extends StatelessWidget {
  final KtList<String>? finishRecommendation;

  const _PlayerItemSmallFinishRecommendationDisplayer({
    Key? key,
    this.finishRecommendation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.orangeNew,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          if (finishRecommendation != null) ...[
            for (int i = 0; i < finishRecommendation!.size; i++)
              AutoSizeText(
                finishRecommendation!.get(i),
                minFontSize: 1,
                maxLines: 1,
              ),
          ] else ...[
            const Text(''),
          ]
        ],
      ),
    );
  }
}

// DART DISPLAYER
// TODO responsive
class _DartsDisplayer extends StatelessWidget {
  final KtList<Dart> darts;

  const _DartsDisplayer({
    Key? key,
    required this.darts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black,
      child: AppRow(
        spacing: size6(context),
        children: [
          const Spacer(),
          Image.asset(AppImages.flightWhiteOne),
          AutoSizeText(
            _mapDartToString(
              dart: darts.size > 0 ? darts.get(0) : null,
            ),
            style: CupertinoTheme.of(context)
                .textTheme
                .textStyle
                .copyWith(color: AppColors.white),
          ),
          const Spacer(),
          Image.asset(AppImages.flightWhiteTwo),
          AutoSizeText(
            _mapDartToString(
              dart: darts.size > 1 ? darts.get(1) : null,
            ),
            style: CupertinoTheme.of(context)
                .textTheme
                .textStyle
                .copyWith(color: AppColors.white),
          ),
          const Spacer(),
          Image.asset(AppImages.flightWhiteThree),
          AutoSizeText(
            _mapDartToString(
              dart: darts.size > 2 ? darts.get(2) : null,
            ),
            style: CupertinoTheme.of(context)
                .textTheme
                .textStyle
                .copyWith(color: AppColors.white),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  String _mapDartToString({
    Dart? dart,
  }) {
    if (dart == null) {
      return '-';
    } else {
      var string = '';
      switch (dart.type) {
        case DartType.single:
          string += 'S';
          break;
        case DartType.double:
          string += 'D';
          break;
        case DartType.triple:
          string += 'T';
          break;
      }

      return string + dart.value.toString();
    }
  }
}

// UNDO BUTTON
class _UndoButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const _UndoButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.red,
            width: border4(context),
          ),
        ),
        child: Center(
          child: Image.asset(AppImages.chevronRedBackNew),
        ),
      ),
    );
  }
}

// INPUT ROW
// TODO location in file strucuture
class _InputRow extends StatelessWidget {
  final VoidCallback onUndoPressed;
  final VoidCallback onPerformThrowPressed;

  const _InputRow({
    Key? key,
    required this.onUndoPressed,
    required this.onPerformThrowPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InputCubit, InputState>(
      builder: (context, state) {
        return AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: _UndoButton(
                onPressed: onUndoPressed,
              ),
            ),
            Expanded(
              child: _InputPointsDisplayer(
                input: state.when(
                  points: (input) => input,
                  darts: (darts) =>
                      darts.foldRight(0, (dart, acc) => acc + dart.points()),
                ),
              ),
            ),
            Expanded(
              child: _DoButton(
                onPressed: onPerformThrowPressed,
              ),
            ),
          ],
        );
      },
    );
  }
}

class _InputPointsDisplayer extends StatelessWidget {
  final int input;

  const _InputPointsDisplayer({
    Key? key,
    required this.input,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: border4(context),
        ),
      ),
      child: Center(
        child: Text(
          input.toString(),
          style: const TextStyle(fontSize: 28), // TODO
        ),
      ),
    );
  }
}

class _DoButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const _DoButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.green,
            width: border4(context),
          ),
        ),
        child: Center(
          child: Image.asset(AppImages.chevronGreenForwardNew),
        ),
      ),
    );
  }
}
