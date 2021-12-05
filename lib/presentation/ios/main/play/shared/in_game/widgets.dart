// CORE
// OTHER
import 'dart:math' as math;

import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/button/detailed_key_board_button_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/detailed_input_area_bloc.dart';
// BLOCS
import 'package:dart_counter/application/main/play/shared/in_game/input/input_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/optical_input_area/optical_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/speech_input_area/speech_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/button/standard_key_board_button_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/standard_input_area_bloc.dart';
// DOMAIN
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/abstract_player_snapshot.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

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
    // TODO dependency injection like this seems not to be good practice
    final pointsLeftCubit = context.read<PointsLeftCubit>();
    final inputCubit = context.read<InputCubit>();
    final dartUtils = getIt<IDartUtils>();

    return AppColumn(
      spacing: size6(context),
      children: [
        Expanded(
          child: AppRow(
            spacing: size6(context),
            children: List.generate(3, (index) {
              final i = index + 1;
              return BlocProvider(
                create: (context) => StandardKeyBoardButtonCubit(
                  i,
                  pointsLeftCubit,
                  inputCubit,
                  dartUtils,
                ),
                child: _KeyBoardButton(
                  digit: i,
                ),
              );
            }),
          ),
        ),
        Expanded(
          child: AppRow(
            spacing: size6(context),
            children: List.generate(3, (index) {
              final i = index + 4;
              return BlocProvider(
                create: (context) => StandardKeyBoardButtonCubit(
                  i,
                  pointsLeftCubit,
                  inputCubit,
                  dartUtils,
                ),
                child: _KeyBoardButton(
                  digit: i,
                ),
              );
            }),
          ),
        ),
        Expanded(
          child: AppRow(
            spacing: size6(context),
            children: List.generate(3, (index) {
              final i = index + 7;
              return BlocProvider(
                create: (context) => StandardKeyBoardButtonCubit(
                  i,
                  pointsLeftCubit,
                  inputCubit,
                  dartUtils,
                ),
                child: _KeyBoardButton(
                  digit: i,
                ),
              );
            }),
          ),
        ),
        Expanded(
          child: AppRow(
            spacing: size6(context),
            children: [
              BlocBuilder<InputCubit, InputState>(
                builder: (context, state) {
                  final points = state.whenOrNull(
                    points: (points) => points,
                  ); // TODO visually not good on keyboard change

                  return AppActionButton.flexible(
                    color: AppColors.white,
                    onPressed: points == 0
                        ? null
                        : () => context
                            .read<StandardInputAreaBloc>()
                            .add(const StandardInputAreaEvent.checkPressed()),
                    fontSize: 18,
                    text: LocaleKeys.check.tr().toUpperCase(),
                  );
                },
              ),
              BlocProvider(
                create: (context) => StandardKeyBoardButtonCubit(
                  0,
                  pointsLeftCubit,
                  inputCubit,
                  dartUtils,
                ),
                child: const _KeyBoardButton(
                  digit: 0,
                ),
              ),
              BlocBuilder<InputCubit, InputState>(
                builder: (context, state) {
                  final points = state.whenOrNull(
                    points: (points) => points,
                  ); // TODO visually not good on keyboard change

                  return AppActionButton.flexible(
                    color: AppColors.white,
                    onPressed: points == 0
                        ? null
                        : () => context
                            .read<StandardInputAreaBloc>()
                            .add(const StandardInputAreaEvent.erasePressed()),
                    icon: Image.asset(
                      AppImages.chevronBackNew,
                      color: points == 0
                          ? CupertinoColors.quaternarySystemFill
                          : null,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _KeyBoardButton extends StatelessWidget {
  final int digit;

  const _KeyBoardButton({
    Key? key,
    required this.digit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StandardKeyBoardButtonCubit,
        StandardKeyBoardButtonState>(
      builder: (context, state) {
        return AppActionButton.flexible(
          fontSize: 28,
          color: AppColors.white,
          onPressed: state.disabled
              ? null
              : () => context
                  .read<StandardInputAreaBloc>()
                  .add(StandardInputAreaEvent.digitPressed(digit: digit)),
          text: digit.toString(),
        );
      },
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
              Expanded(
                child: BlocBuilder<InputCubit, InputState>(
                  builder: (context, state) {
                    return _DartsDisplayer(
                      darts: state.whenOrNull(darts: (darts) => darts) ??
                          const KtList.empty(),
                    );
                  },
                ),
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

class _DetailedKeyBoard extends StatelessWidget {
  const _DetailedKeyBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO dependency injection like this seems not to be good practice
    final detailedInputAreaBloc = context.read<DetailedInputAreaBloc>();
    final pointsLeftCubit = context.read<PointsLeftCubit>();
    final dartUtils = getIt<IDartUtils>();

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
              children: List.generate(
                6,
                (i) => BlocProvider(
                  create: (context) => DetailedKeyBoardButtonCubit(
                    i != 5 ? i + 16 : 25,
                    detailedInputAreaBloc,
                    pointsLeftCubit,
                    dartUtils,
                  ),
                  child: const _DetailedKeyBoardDigitButton(),
                ),
              ),
            ),
          ),
          Expanded(
            child: AppRow(
              spacing: size6(context),
              children: List.generate(
                6,
                (i) => BlocProvider(
                  create: (context) => DetailedKeyBoardButtonCubit(
                    i + 10,
                    detailedInputAreaBloc,
                    pointsLeftCubit,
                    dartUtils,
                  ),
                  child: const _DetailedKeyBoardDigitButton(),
                ),
              ),
            ),
          ),
          Expanded(
            child: AppRow(
              spacing: size6(context),
              children: List.generate(
                6,
                (i) => BlocProvider(
                  create: (context) => DetailedKeyBoardButtonCubit(
                    i + 4,
                    detailedInputAreaBloc,
                    pointsLeftCubit,
                    dartUtils,
                  ),
                  child: const _DetailedKeyBoardDigitButton(),
                ),
              ),
            ),
          ),
          Expanded(
            child: AppRow(
              spacing: size6(context),
              children: [
                Expanded(
                  child: AppRow(
                    spacing: size6(context),
                    children: List.generate(
                      2,
                      (i) => BlocProvider(
                        create: (context) => DetailedKeyBoardButtonCubit(
                          i,
                          detailedInputAreaBloc,
                          pointsLeftCubit,
                          dartUtils,
                        ),
                        child: const _DetailedKeyBoardDigitButton(),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: AppRow(
                    spacing: size6(context),
                    children: List.generate(
                      2,
                      (i) => BlocProvider(
                        create: (context) => DetailedKeyBoardButtonCubit(
                          i + 2,
                          detailedInputAreaBloc,
                          pointsLeftCubit,
                          dartUtils,
                        ),
                        child: const _DetailedKeyBoardDigitButton(),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: AppRow(
                    spacing: size6(context),
                    children: [
                      BlocBuilder<InputCubit, InputState>(
                        builder: (context, state) {
                          final darts = state.whenOrNull(
                            darts: (darts) => darts,
                          ); // TODO visually not good on keyboard change

                          return AppActionButton.flexible(
                            color: AppColors.white,
                            onPressed: darts?.size == 0
                                ? null
                                : () =>
                                    context.read<DetailedInputAreaBloc>().add(
                                          const DetailedInputAreaEvent
                                              .undoDartPressed(),
                                        ),
                            icon: Image.asset(
                              AppImages.chevronBackNew,
                              color: darts?.size == 0
                                  ? CupertinoColors.quaternarySystemFill
                                  : null,
                            ),
                          );
                        },
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
  }
}

class _DetailedKeyBoardDigitButton extends StatelessWidget {
  const _DetailedKeyBoardDigitButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailedKeyBoardButtonCubit,
        DetailedKeyBoardButtonState>(
      builder: (context, state) {
        return state.map(
          initial: (initial) {
            return AppActionButton.flexible(
              fontSize: 14,
              color: AppColors.white,
              onPressed: initial.disabled
                  ? null
                  : () => context.read<DetailedKeyBoardButtonCubit>().pressed(),
              text: initial.value.toString(),
            );
          },
          focused: (focused) {
            final type = focused.type;
            final value = focused.value;

            final color = type == DartType.single
                ? AppColors.black
                : type == DartType.double
                    ? AppColors.red
                    : AppColors.orangeNew;

            final text = type == DartType.single
                ? 'S'
                : type == DartType.double
                    ? 'D'
                    : 'T';

            return AppActionButton.flexible(
              fontSize: 14,
              color: AppColors.white,
              onPressed: () =>
                  context.read<DetailedKeyBoardButtonCubit>().pressed(),
              text: text + value.toString(),
              fontColor: color,
              borderColor: color,
            );
          },
        );
      },
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
              name: player
                  .name!, // TODO DartBot has no name maybe do dartbot into seperate item
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
    return AppRow(
      spacing: size6(context),
      children: [
        Expanded(
          child: _UndoButton(
            onPressed: onUndoPressed,
          ),
        ),
        Expanded(
          child: BlocBuilder<InputCubit, InputState>(
            builder: (context, state) {
              return _InputPointsDisplayer(
                input: state.when(
                  points: (input) => input,
                  darts: (darts) =>
                      darts.foldRight(0, (dart, acc) => acc + dart.points()),
                ),
              );
            },
          ),
        ),
        Expanded(
          child: _DoButton(
            onPressed: onPerformThrowPressed,
          ),
        ),
      ],
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
