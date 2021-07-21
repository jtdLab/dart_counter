import 'package:dart_counter/application/in_game/input_area/detailed_key_board/detailed_key_board_bloc.dart';
import 'package:dart_counter/domain/play/dart.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

import 'widgets/widgets.dart';

class DetailedKeyBoard extends StatelessWidget {
  const DetailedKeyBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DetailedKeyBoardBloc>(),
      child: BlocBuilder<DetailedKeyBoardBloc, DetailedKeyBoardState>(
        builder: (context, state) {
          return AppColumn(
            spacing: size6(context),
            children: [
              AppRow(
                spacing: size6(context),
                children: [
                  Expanded(
                    child: DetailedKeyBoardButton(
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
                      text: state.focusedValue == 16
                          ? 'S16'
                          : state.focusedValue == 17
                              ? 'S17'
                              : '16',
                    ),
                  ),
                  Expanded(
                    child: DetailedKeyBoardButton(
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
                      text: state.focusedValue == 16
                          ? 'D16'
                          : state.focusedValue == 17
                              ? 'D17'
                              : state.focusedValue == 18
                                  ? 'S18'
                                  : '17',
                    ),
                  ),
                  Expanded(
                    child: DetailedKeyBoardButton(
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
                      text: state.focusedValue == 16
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
                  Expanded(
                    child: DetailedKeyBoardButton(
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
                      text: state.focusedValue == 18
                          ? 'T18'
                          : state.focusedValue == 19
                              ? 'D19'
                              : state.focusedValue == 20
                                  ? 'S20'
                                  : '19',
                    ),
                  ),
                  Expanded(
                    child: DetailedKeyBoardButton(
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
                      text: state.focusedValue == 19
                          ? 'T19'
                          : state.focusedValue == 20
                              ? 'D20'
                              : state.focusedValue == 25
                                  ? 'S25'
                                  : '20',
                    ),
                  ),
                  Expanded(
                    child: DetailedKeyBoardButton(
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
                      text: state.focusedValue == 20
                          ? 'T20'
                          : state.focusedValue == 25
                              ? 'D25'
                              : '25',
                    ),
                  ),
                ],
              ),
              AppRow(
                spacing: size6(context),
                children: [
                  Expanded(
                    child: DetailedKeyBoardButton(
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
                      text: state.focusedValue == 10
                          ? 'S10'
                          : state.focusedValue == 11
                              ? 'S11'
                              : '10',
                    ),
                  ),
                  Expanded(
                    child: DetailedKeyBoardButton(
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
                      text: state.focusedValue == 10
                          ? 'D10'
                          : state.focusedValue == 11
                              ? 'D11'
                              : state.focusedValue == 12
                                  ? 'S12'
                                  : '11',
                    ),
                  ),
                  Expanded(
                    child: DetailedKeyBoardButton(
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
                      text: state.focusedValue == 10
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
                  Expanded(
                    child: DetailedKeyBoardButton(
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
                      text: state.focusedValue == 12
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
                  Expanded(
                    child: DetailedKeyBoardButton(
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
                      text: state.focusedValue == 13
                          ? 'T13'
                          : state.focusedValue == 14
                              ? 'D14'
                              : state.focusedValue == 15
                                  ? 'D15'
                                  : '14',
                    ),
                  ),
                  Expanded(
                    child: DetailedKeyBoardButton(
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
                      text: state.focusedValue == 14
                          ? 'T14'
                          : state.focusedValue == 15
                              ? 'T15'
                              : '15',
                    ),
                  ),
                ],
              ),
              AppRow(
                spacing: size6(context),
                children: [
                  Expanded(
                    child: DetailedKeyBoardButton(
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
                      text: state.focusedValue == 4
                          ? 'S4'
                          : state.focusedValue == 5
                              ? 'S5'
                              : '4',
                    ),
                  ),
                  Expanded(
                    child: DetailedKeyBoardButton(
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
                      text: state.focusedValue == 4
                          ? 'D4'
                          : state.focusedValue == 5
                              ? 'D5'
                              : state.focusedValue == 6
                                  ? 'S6'
                                  : '5',
                    ),
                  ),
                  Expanded(
                    child: DetailedKeyBoardButton(
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
                      text: state.focusedValue == 4
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
                  Expanded(
                    child: DetailedKeyBoardButton(
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
                      text: state.focusedValue == 6
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
                  Expanded(
                    child: DetailedKeyBoardButton(
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
                      text: state.focusedValue == 7
                          ? 'T7'
                          : state.focusedValue == 8
                              ? 'D8'
                              : state.focusedValue == 9
                                  ? 'D9'
                                  : '8',
                    ),
                  ),
                  Expanded(
                    child: DetailedKeyBoardButton(
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
                      text: state.focusedValue == 8
                          ? 'T8'
                          : state.focusedValue == 9
                              ? 'T9'
                              : '9',
                    ),
                  ),
                ],
              ),
              AppRow(
                spacing: size6(context),
                children: [
                  Expanded(
                    child: AppRow(
                      spacing: size6(context),
                      children: [
                        Expanded(
                          child: DetailedKeyBoardButton(
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
                            text: state.focusedValue == 1 ? 'S1' : '0',
                          ),
                        ),
                        Expanded(
                          child: DetailedKeyBoardButton(
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
                            text: state.focusedValue == 1
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
                        Expanded(
                          child: DetailedKeyBoardButton(
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
                            text: state.focusedValue == 1
                                ? 'T1'
                                : state.focusedValue == 2
                                    ? 'D2'
                                    : state.focusedValue == 3
                                        ? 'D3'
                                        : '2',
                          ),
                        ),
                        Expanded(
                          child: DetailedKeyBoardButton(
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
                            text: state.focusedValue == 2
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
                        Expanded(
                          child: KeyBoardButton(
                            onPressed: () => context
                                .read<DetailedKeyBoardBloc>()
                                .add(
                                  const DetailedKeyBoardEvent.undoDartPressed(),
                                ),
                            child: Image.asset(AppImages.chevronBackNew),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  void _dartPressed({
    required BuildContext context,
    required int value,
  }) {
    context.read<DetailedKeyBoardBloc>().add(
          DetailedKeyBoardEvent.dartPressed(
            value: value,
          ),
        );
  }

  void _dartDetailPressed({
    required BuildContext context,
    required DartType type,
  }) {
    context.read<DetailedKeyBoardBloc>().add(
          DetailedKeyBoardEvent.dartDetailPressed(
            type: type,
          ),
        );
  }
}
