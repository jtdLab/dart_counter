import 'package:dart_counter/application/authenticated/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/authenticated/training/single_training/in_training/in_single_training_bloc.dart';
import 'package:dart_counter/application/authenticated/training/single_training/in_training/input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/authenticated/training/single_training/in_training/input_area/key_board/key_board_bloc.dart';
import 'package:dart_counter/application/authenticated/training/single_training/watcher/single_training_watcher_cubit.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/training/single/single_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/single/single_training_player_snapshot.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/authenticated/shared/widgets.dart'
    hide InputRow; // TODO remove hide
import 'package:dart_counter/presentation/ios/authenticated/training/shared/in_training/widgets.dart';

part 'widgets.dart';

class InSingleTrainingPage extends StatelessWidget {
  const InSingleTrainingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => InSingleTrainingBloc.getIt(),
        ),
        BlocProvider(
          create: (context) => SingleTrainingWatcherCubit.getIt(),
        ),
        BlocProvider<Bloc<DartsDisplayerEvent, DartsDisplayerState>>(
          create: (context) => DartsDisplayerBloc.getIt(),
        ),
        BlocProvider<Bloc<InputRowEvent, int>>(
          create: (context) => InputRowBloc.getIt(
            context.read<Bloc<DartsDisplayerEvent, DartsDisplayerState>>()
                as DartsDisplayerBloc,
          )..add(const InputRowEvent.started()),
        ),
        BlocProvider(
          create: (context) => KeyBoardBloc.getIt(
            context.read<Bloc<DartsDisplayerEvent, DartsDisplayerState>>()
                as DartsDisplayerBloc,
          ),
        ),
      ],
      child:
          BlocListener<SingleTrainingWatcherCubit, SingleTrainingGameSnapshot>(
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
                          context.read<InSingleTrainingBloc>().add(
                                const InTrainingEvent.canceled(),
                              ),
                    ),
                  );
                },
              ),
            ),
            middle: Text(context.l10n.singleTraining.toUpperCase()),
          ),
          child: const _InSingleTrainingWidget(),
        ),
      ),
    );
  }
}