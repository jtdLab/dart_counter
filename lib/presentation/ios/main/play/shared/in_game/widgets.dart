// CORE
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/darts/darts_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points/points_cubit.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// OTHER
import 'dart:math' as math;

// BLOCS
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/key_board/digit_button/detailed_digit_button_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/key_board/erease_button/detailed_erease_button_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/detailed_input_area/detailed_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/key_board/check_button/check_button_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/key_board/digit_button/standard_digit_button_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/key_board/erease_button/standard_erease_button_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/optical_input_area/optical_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/points_left/points_left_cubit.dart';
import 'package:dart_counter/application/main/play/shared/in_game/speech_input_area/speech_input_area_bloc.dart';
import 'package:dart_counter/application/main/play/shared/in_game/standard_input_area/standard_input_area_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/game/dart.dart';
import 'package:dart_counter/domain/play/abstract_player_snapshot.dart';
import 'package:dart_counter/domain/play/i_dart_utils.dart';
import 'package:dart_counter/presentation/ios/main/shared/widgets.dart';

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

// SPEECH INPUT AREA
// TODO flex factors
class SpeechInputArea extends StatelessWidget {
  const SpeechInputArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // TODO inject correctly not with getit
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
                            child: UndoButton(
                              onPressed: () =>
                                  context.read<SpeechInputAreaBloc>().add(
                                        const SpeechInputAreaEvent
                                            .undoThrowPressed(),
                                      ),
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
      create: (context) =>
          getIt<OpticalInputAreaBloc>(), // TODO ibject correctly not with getit
      child: AppColumn(
        spacing: size6(context),
        children: [
          const _DartsDisplayer(),
          BlocBuilder<PointsCubit, int>(
            builder: (context, state) {
              return InputRow(
                onUndoPressed: onUndoPressed,
                onPerformThrowPressed: onPerformThrowPressed,
                points: state,
              );
            },
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
  const _DartsDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DartsCubit, KtList<Dart>>(
      builder: (context, state) {
        final darts = state;

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
      },
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
          string += '';
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
