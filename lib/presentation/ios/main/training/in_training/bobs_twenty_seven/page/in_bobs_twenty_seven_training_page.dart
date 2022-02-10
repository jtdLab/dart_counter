import 'package:dart_counter/application/main/shared/input_row/input_row_event.dart';
import 'package:dart_counter/application/main/training/bobs_twenty_seven/in_training/in_bobs_twenty_seven_bloc.dart';
import 'package:dart_counter/application/main/training/bobs_twenty_seven/in_training/input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/main/training/bobs_twenty_seven/in_training/input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/application/main/training/bobs_twenty_seven/watcher/bobs_twenty_seven_watcher_cubit.dart';
import 'package:dart_counter/application/main/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/game/status.dart';
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
        // TODO move into flow and in other training 2
        BlocProvider(
          create: (context) => getIt<BobsTwentySevenWatcherCubit>(),
        ),
        BlocProvider<Bloc<DartsDisplayerEvent, DartsDisplayerState>>(
          create: (context) => getIt<DartsDisplayerBloc>(),
        ),
        BlocProvider<Bloc<InputRowEvent, int>>(
          create: (context) => getIt<InputRowBloc>(
            param1: [
              context.read<Bloc<DartsDisplayerEvent, DartsDisplayerState>>()
            ],
          )..add(const InputRowEvent.started()),
        ),
        BlocProvider<Bloc<KeyBoardEvent, void>>(
          create: (context) => getIt<KeyBoardBloc>(
            param1: [
              context.read<Bloc<DartsDisplayerEvent, DartsDisplayerState>>()
            ],
          ),
        ),
      ],
      child: BlocListener<BobsTwentySevenWatcherCubit,
          BobsTwentySevenGameSnapshot>(
        listenWhen: (oldState, newState) => oldState.status != newState.status,
        listener: (context, gameSnapshot) {
          switch (gameSnapshot.status) {
            case Status.canceled:
              context.router.replace(const HomePageRoute());
              break;
            case Status.finished:
              context.router.replace(const PostTrainingPageRoute());
              break;
            default:
          }
        },
        child: AppPage(
          navigationBar: AppNavigationBar(
            leading: Builder(
              builder: (context) => CancelButton(
                onPressed: () {
                  context.router.push(
                    YouReallyWantToCancelGameDialogRoute(
                      onYesPressed: () =>
                          context.read<InBobsTwentySevenBloc>().add(
                                const InTrainingEvent.canceled(),
                              ),
                    ),
                  );
                },
              ),
            ),
            middle: Text(LocaleKeys.bobs27.tr().toUpperCase()),
          ),
          child: const _InBobsTwentySevenTrainingWidget(),
        ),
      ),
    );
  }
}
