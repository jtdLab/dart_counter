import 'package:dart_counter/application/main/training/bobs_twenty_seven/bobs_twenty_seven_watcher_cubit.dart';
import 'package:dart_counter/application/main/training/bobs_twenty_seven/in_game/in_bobs_twenty_seven_bloc.dart';
import 'package:dart_counter/application/main/training/bobs_twenty_seven/in_game/input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/main/training/bobs_twenty_seven/in_game/input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_player_snapshot.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/main/shared/widgets.dart'
    hide InputRow; // TODO remove hide
import 'package:dart_counter/presentation/ios/main/training/shared/in_training/widgets.dart';

part 'widgets.dart';

class InBobsTwentySeventTrainingPage extends StatelessWidget {
  const InBobsTwentySeventTrainingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<InBobsTwentySevenBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<BobsTwentySevenWatcherCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<DartsDisplayerBloc>(),
        ),
        BlocProvider<Bloc<InputRowEvent, int>>(
          create: (context) =>
              getIt<InputRowBloc>(param1: context.read<DartsDisplayerBloc>()),
        ),
        BlocProvider(
          create: (context) =>
              getIt<KeyBoardBloc>(param1: context.read<DartsDisplayerBloc>()),
        ),
      ],
      child: AppPage(
        navigationBar: AppNavigationBar(
          leading: Builder(
            builder: (context) => CancelButton(
              onPressed: () {
                context.router.push(
                  YouReallyWantToCancelGameDialogRoute(
                    onYesPressed: () =>
                        context.read<InBobsTwentySevenBloc>().add(
                              const InBobsTwentySevenEvent.canceled(),
                            ),
                  ),
                );
              },
            ),
          ),
          // TODO localekeys
          middle: const Text('BOBS 27'),
        ),
        child: const _InBobsTwentySevenTrainingWidget(),
      ),
    );
  }
}
