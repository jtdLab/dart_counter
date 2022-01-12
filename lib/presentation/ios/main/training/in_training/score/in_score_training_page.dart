import 'package:dart_counter/application/main/training/score_training/in_game/in_score_training_bloc.dart';
import 'package:dart_counter/application/main/training/score_training/in_game/standard_input_area/blocs.dart'
    as standard;
import 'package:dart_counter/application/main/training/score_training/in_game/detailed_input_area/blocs.dart'
    as detailed;
import 'package:dart_counter/application/main/training/score_training/score_training_watcher_cubit.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/darts_displayer/darts_displayer_bloc.dart';
import 'package:dart_counter/application/main/training/shared/in_game/input_area/input_row/input_row_event.dart';
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
      child: AppPage(
        navigationBar: AppNavigationBar(
          leading: CancelButton(
            onPressed: () {
              // show overlay
              Navigator.of(context).push(
                PageRouteBuilder(
                  reverseTransitionDuration: Duration.zero,
                  opaque: false,
                  pageBuilder: (context, _, __) => BlocProvider(
                    create: (context) => context.read<InScoreTrainingBloc>(),
                    child: Builder(
                      builder: (context) => YouReallyWantToCancelGameDialog(
                        onYesPressed: () {
                          context.read<InScoreTrainingBloc>().add(
                                const InScoreTrainingEvent.canceled(),
                              );
                          context.router.replace(const HomePageRoute());
                        },
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          middle: Text(LocaleKeys.scoreTraining.tr().toUpperCase()),
        ),
        child: const _InScoreTrainingWidget(),
      ),
    );
  }
}
