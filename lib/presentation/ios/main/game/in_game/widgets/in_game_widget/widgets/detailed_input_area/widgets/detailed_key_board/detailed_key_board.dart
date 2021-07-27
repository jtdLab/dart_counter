import 'package:dart_counter/domain/play/dart.dart';

import 'package:dart_counter/application/in_game/detailed_input_area/detailed_input_area_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

// TODO refactor 900 lines are to much for this
class DetailedKeyBoard extends StatelessWidget {
  const DetailedKeyBoard({
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
                    DetailedKeyBoardButton(
                      fontSize: 14,
                      onPressed: state.focusedValue == null
                          ? () => _dartPressed(
                                context: context,
                                value: 16,
                              )
                          : state.focusedValue == 16
                              ? () => _dartDetailPressed(
                                    context: context,
                                    type: DartType.s,
                                  )
                              : state.focusedValue == 17
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.s,
                                      )
                                  : null,
                      textOrIcon: left(state.focusedValue == 16
                          ? 'S16'
                          : state.focusedValue == 17
                              ? 'S17'
                              : '16'),
                    ),
                    DetailedKeyBoardButton(
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
                                    type: DartType.d,
                                  )
                              : state.focusedValue == 17
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.d,
                                      )
                                  : state.focusedValue == 18
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.s,
                                          )
                                      : null,
                      textOrIcon: left(state.focusedValue == 16
                          ? 'D16'
                          : state.focusedValue == 17
                              ? 'D17'
                              : state.focusedValue == 18
                                  ? 'S18'
                                  : '17'),
                    ),
                    DetailedKeyBoardButton(
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
                                    type: DartType.t,
                                  )
                              : state.focusedValue == 17
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.t,
                                      )
                                  : state.focusedValue == 18
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.d,
                                          )
                                      : state.focusedValue == 19
                                          ? () => _dartDetailPressed(
                                                context: context,
                                                type: DartType.s,
                                              )
                                          : null,
                      textOrIcon: left(state.focusedValue == 16
                          ? 'T16'
                          : state.focusedValue == 17
                              ? 'T17'
                              : state.focusedValue == 18
                                  ? 'D18'
                                  : state.focusedValue == 19
                                      ? 'S19'
                                      : '18'),
                    ),
                    DetailedKeyBoardButton(
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
                                    type: DartType.t,
                                  )
                              : state.focusedValue == 19
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.d,
                                      )
                                  : state.focusedValue == 20
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.s,
                                          )
                                      : null,
                      textOrIcon: left(state.focusedValue == 18
                          ? 'T18'
                          : state.focusedValue == 19
                              ? 'D19'
                              : state.focusedValue == 20
                                  ? 'S20'
                                  : '19'),
                    ),
                    DetailedKeyBoardButton(
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
                                    type: DartType.t,
                                  )
                              : state.focusedValue == 20
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.d,
                                      )
                                  : state.focusedValue == 25
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.s,
                                          )
                                      : null,
                      textOrIcon: left(state.focusedValue == 19
                          ? 'T19'
                          : state.focusedValue == 20
                              ? 'D20'
                              : state.focusedValue == 25
                                  ? 'S25'
                                  : '20'),
                    ),
                    DetailedKeyBoardButton(
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
                                    type: DartType.t,
                                  )
                              : state.focusedValue == 25
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.d,
                                      )
                                  : null,
                      textOrIcon: left(state.focusedValue == 20
                          ? 'T20'
                          : state.focusedValue == 25
                              ? 'D25'
                              : '25'),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: AppRow(
                  spacing: size6(context),
                  children: [
                    DetailedKeyBoardButton(
                      fontSize: 14,
                      onPressed: state.focusedValue == null
                          ? () => _dartPressed(
                                context: context,
                                value: 10,
                              )
                          : state.focusedValue == 10
                              ? () => _dartDetailPressed(
                                    context: context,
                                    type: DartType.s,
                                  )
                              : state.focusedValue == 11
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.s,
                                      )
                                  : null,
                      textOrIcon: left(state.focusedValue == 10
                          ? 'S10'
                          : state.focusedValue == 11
                              ? 'S11'
                              : '10'),
                    ),
                    DetailedKeyBoardButton(
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
                                    type: DartType.d,
                                  )
                              : state.focusedValue == 11
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.d,
                                      )
                                  : state.focusedValue == 12
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.s,
                                          )
                                      : null,
                      textOrIcon: left(state.focusedValue == 10
                          ? 'D10'
                          : state.focusedValue == 11
                              ? 'D11'
                              : state.focusedValue == 12
                                  ? 'S12'
                                  : '11'),
                    ),
                    DetailedKeyBoardButton(
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
                                    type: DartType.t,
                                  )
                              : state.focusedValue == 11
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.t,
                                      )
                                  : state.focusedValue == 12
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.d,
                                          )
                                      : state.focusedValue == 13
                                          ? () => _dartDetailPressed(
                                                context: context,
                                                type: DartType.s,
                                              )
                                          : null,
                      textOrIcon: left(state.focusedValue == 10
                          ? 'T10'
                          : state.focusedValue == 11
                              ? 'T11'
                              : state.focusedValue == 12
                                  ? 'D12'
                                  : state.focusedValue == 13
                                      ? 'S13'
                                      : '12'),
                    ),
                    DetailedKeyBoardButton(
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
                                    type: DartType.t,
                                  )
                              : state.focusedValue == 13
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.d,
                                      )
                                  : state.focusedValue == 14
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.s,
                                          )
                                      : state.focusedValue == 15
                                          ? () => _dartDetailPressed(
                                                context: context,
                                                type: DartType.s,
                                              )
                                          : null,
                      textOrIcon: left(state.focusedValue == 12
                          ? 'T12'
                          : state.focusedValue == 13
                              ? 'D13'
                              : state.focusedValue == 14
                                  ? 'S14'
                                  : state.focusedValue == 15
                                      ? 'S15'
                                      : '13'),
                    ),
                    DetailedKeyBoardButton(
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
                                    type: DartType.t,
                                  )
                              : state.focusedValue == 14
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.d,
                                      )
                                  : state.focusedValue == 15
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.d,
                                          )
                                      : null,
                      textOrIcon: left(state.focusedValue == 13
                          ? 'T13'
                          : state.focusedValue == 14
                              ? 'D14'
                              : state.focusedValue == 15
                                  ? 'D15'
                                  : '14'),
                    ),
                    DetailedKeyBoardButton(
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
                                    type: DartType.t,
                                  )
                              : state.focusedValue == 15
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.t,
                                      )
                                  : null,
                      textOrIcon: left(state.focusedValue == 14
                          ? 'T14'
                          : state.focusedValue == 15
                              ? 'T15'
                              : '15'),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: AppRow(
                  spacing: size6(context),
                  children: [
                    DetailedKeyBoardButton(
                      fontSize: 14,
                      onPressed: state.focusedValue == null
                          ? () => _dartPressed(
                                context: context,
                                value: 4,
                              )
                          : state.focusedValue == 4
                              ? () => _dartDetailPressed(
                                    context: context,
                                    type: DartType.s,
                                  )
                              : state.focusedValue == 5
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.s,
                                      )
                                  : null,
                      textOrIcon: left(state.focusedValue == 4
                          ? 'S4'
                          : state.focusedValue == 5
                              ? 'S5'
                              : '4'),
                    ),
                    DetailedKeyBoardButton(
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
                                    type: DartType.d,
                                  )
                              : state.focusedValue == 5
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.d,
                                      )
                                  : state.focusedValue == 6
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.s,
                                          )
                                      : null,
                      textOrIcon: left(state.focusedValue == 4
                          ? 'D4'
                          : state.focusedValue == 5
                              ? 'D5'
                              : state.focusedValue == 6
                                  ? 'S6'
                                  : '5'),
                    ),
                    DetailedKeyBoardButton(
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
                                    type: DartType.t,
                                  )
                              : state.focusedValue == 5
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.t,
                                      )
                                  : state.focusedValue == 6
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.d,
                                          )
                                      : state.focusedValue == 7
                                          ? () => _dartDetailPressed(
                                                context: context,
                                                type: DartType.s,
                                              )
                                          : null,
                      textOrIcon: left(state.focusedValue == 4
                          ? 'T4'
                          : state.focusedValue == 5
                              ? 'T5'
                              : state.focusedValue == 6
                                  ? 'D6'
                                  : state.focusedValue == 7
                                      ? 'S7'
                                      : '6'),
                    ),
                    DetailedKeyBoardButton(
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
                                    type: DartType.t,
                                  )
                              : state.focusedValue == 7
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.d,
                                      )
                                  : state.focusedValue == 8
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.s,
                                          )
                                      : state.focusedValue == 9
                                          ? () => _dartDetailPressed(
                                                context: context,
                                                type: DartType.s,
                                              )
                                          : null,
                      textOrIcon: left(state.focusedValue == 6
                          ? 'T6'
                          : state.focusedValue == 7
                              ? 'D7'
                              : state.focusedValue == 8
                                  ? 'S8'
                                  : state.focusedValue == 9
                                      ? 'S9'
                                      : '7'),
                    ),
                    DetailedKeyBoardButton(
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
                                    type: DartType.t,
                                  )
                              : state.focusedValue == 8
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.d,
                                      )
                                  : state.focusedValue == 9
                                      ? () => _dartDetailPressed(
                                            context: context,
                                            type: DartType.d,
                                          )
                                      : null,
                      textOrIcon: left(state.focusedValue == 7
                          ? 'T7'
                          : state.focusedValue == 8
                              ? 'D8'
                              : state.focusedValue == 9
                                  ? 'D9'
                                  : '8'),
                    ),
                    DetailedKeyBoardButton(
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
                                    type: DartType.t,
                                  )
                              : state.focusedValue == 9
                                  ? () => _dartDetailPressed(
                                        context: context,
                                        type: DartType.t,
                                      )
                                  : null,
                      textOrIcon: left(state.focusedValue == 8
                          ? 'T8'
                          : state.focusedValue == 9
                              ? 'T9'
                              : '9'),
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
                          DetailedKeyBoardButton(
                            fontSize: 14,
                            onPressed: state.focusedValue == null
                                ? () => _dartPressed(
                                      context: context,
                                      value: 0,
                                    )
                                : state.focusedValue == 1
                                    ? () => _dartDetailPressed(
                                          context: context,
                                          type: DartType.s,
                                        )
                                    : null,
                            textOrIcon:
                                left(state.focusedValue == 1 ? 'S1' : '0'),
                          ),
                          DetailedKeyBoardButton(
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
                                          type: DartType.d,
                                        )
                                    : state.focusedValue == 2
                                        ? () => _dartDetailPressed(
                                              context: context,
                                              type: DartType.s,
                                            )
                                        : state.focusedValue == 3
                                            ? () => _dartDetailPressed(
                                                  context: context,
                                                  type: DartType.s,
                                                )
                                            : null,
                            textOrIcon: left(state.focusedValue == 1
                                ? 'D1'
                                : state.focusedValue == 2
                                    ? 'S2'
                                    : state.focusedValue == 3
                                        ? 'S3'
                                        : '1'),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: AppRow(
                        spacing: size6(context),
                        children: [
                          DetailedKeyBoardButton(
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
                                          type: DartType.t,
                                        )
                                    : state.focusedValue == 2
                                        ? () => _dartDetailPressed(
                                              context: context,
                                              type: DartType.d,
                                            )
                                        : state.focusedValue == 3
                                            ? () => _dartDetailPressed(
                                                  context: context,
                                                  type: DartType.d,
                                                )
                                            : null,
                            textOrIcon: left(state.focusedValue == 1
                                ? 'T1'
                                : state.focusedValue == 2
                                    ? 'D2'
                                    : state.focusedValue == 3
                                        ? 'D3'
                                        : '2'),
                          ),
                          DetailedKeyBoardButton(
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
                                          type: DartType.t,
                                        )
                                    : state.focusedValue == 3
                                        ? () => _dartDetailPressed(
                                              context: context,
                                              type: DartType.t,
                                            )
                                        : null,
                            textOrIcon: left(state.focusedValue == 2
                                ? 'T2'
                                : state.focusedValue == 3
                                    ? 'T3'
                                    : '3'),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: AppRow(
                        spacing: size6(context),
                        children: [
                          DetailedKeyBoardButton(
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
