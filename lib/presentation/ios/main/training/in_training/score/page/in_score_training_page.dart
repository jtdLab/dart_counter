import 'package:dart_counter/application/main/training/score_training/in_game/in_score_training_bloc.dart';
import 'package:dart_counter/application/main/training/score_training/in_game/standard_input_area/blocs.dart'
    as standard;
import 'package:dart_counter/application/main/training/score_training/in_game/detailed_input_area/blocs.dart'
    as detailed;
import 'package:dart_counter/application/main/training/score_training/score_training_watcher_cubit.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/input_row/input_row_event.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/training/score/score_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/score/score_training_player_snapshot.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/main/shared/widgets.dart'
    hide InputRow; // TODO remove hide
import 'package:dart_counter/presentation/ios/main/training/shared/in_training/widgets.dart';

part 'widgets.dart';

class InScoreTrainingPage extends StatelessWidget {
  const InScoreTrainingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<InScoreTrainingBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<ScoreTrainingWatcherCubit>(),
        ),
      ],
      child: BlocListener<ScoreTrainingWatcherCubit, ScoreTrainingGameSnapshot>(
        listenWhen: (oldState, newState) => oldState.status != newState.status,
        listener: (context, gameSnapshot) {
          if (gameSnapshot.status == Status.canceled) {
            context.router.replace(const HomePageRoute());
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
                          context.read<InScoreTrainingBloc>().add(
                                const InScoreTrainingEvent.canceled(),
                              ),
                    ),
                  );
                },
              ),
            ),
            middle: Text(LocaleKeys.scoreTraining.tr().toUpperCase()),
          ),
          child: const _InScoreTrainingWidget(),
        ),
      ),
    );
  }
}
