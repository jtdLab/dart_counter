import 'package:dart_counter/application/authenticated/training/score_training/in_training/detailed_input_area/blocs.dart' as detailed;
import 'package:dart_counter/application/authenticated/training/score_training/in_training/standard_input_area/blocs.dart' as standard;
import 'package:dart_counter/application/authenticated/training/score_training/in_training/in_score_training_bloc.dart';
import 'package:dart_counter/application/authenticated/training/score_training/in_training/standard_input_area/input_row/input_row_bloc.dart';
import 'package:dart_counter/application/authenticated/training/score_training/watcher/score_training_watcher_cubit.dart';
import 'package:dart_counter/application/authenticated/training/shared/in_training/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/training/score/score_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/score/score_training_player_snapshot.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/authenticated/shared/widgets.dart'
    hide InputRow; // TODO remove hide
import 'package:dart_counter/presentation/ios/authenticated/training/shared/in_training/widgets.dart';

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
          create: (context) => InScoreTrainingBloc.getIt(),
        ),
        BlocProvider(
          create: (context) => ScoreTrainingWatcherCubit.getIt(),
        ),
      ],
      child: BlocListener<ScoreTrainingWatcherCubit, ScoreTrainingGameSnapshot>(
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
                          context.read<InScoreTrainingBloc>().add(
                                const InTrainingEvent.canceled(),
                              ),
                    ),
                  );
                },
              ),
            ),
            middle: Text(context.l10n.scoreTraining.toUpperCase()),
          ),
          child: const _InScoreTrainingWidget(),
        ),
      ),
    );
  }
}
