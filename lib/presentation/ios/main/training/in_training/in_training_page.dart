// CORE
import 'package:dart_counter/domain/training/type.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/training/training_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/game/status.dart';

import '../../shared/widgets.dart';

part 'widgets.dart';

class InTrainingPage extends StatelessWidget {
  const InTrainingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TrainingBloc>(),
      child: BlocConsumer<TrainingBloc, TrainingState>(
        listenWhen: (oldState, newState) =>
            oldState.gameSnapshot.status != newState.gameSnapshot.status,
        listener: (context, state) {
          final game = state.gameSnapshot;
          if (game.status == Status.canceled) {
            // TODO never gets called
            //context.router.replace(const HomePageRoute());
            //getIt<PlayBloc>().add(const PlayEvent.resetRequested());
          } else if (game.status == Status.finished) {
            context.router.replace(const PostTrainingPageRoute());
          }
        },
        builder: (context, state) {
          final type = state.type;
          final game = state.gameSnapshot;

          return AppPage(
            navigationBar: AppNavigationBar(
              leading: CancelButton(
                onPressed: () {
                  // show overlay
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      reverseTransitionDuration: Duration.zero,
                      opaque: false,
                      pageBuilder: (context, _, __) => BlocProvider(
                        create: (context) => getIt<TrainingBloc>(),
                        child: Builder(
                          builder: (context) => YouReallyWantToCancelGameDialog(
                            onYesPressed: () {
                              context.read<TrainingBloc>().add(
                                    const TrainingEvent.trainingCanceled(),
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
              // TODO localekeys
              middle: Text(
                type == Type.single
                    ? 'SINGLE TRAINING'
                    : type == Type.double
                        ? 'DOUBLE TRAINING'
                        : type == Type.score
                            ? 'SCORE TRAINING'
                            : 'BOBS 27',
              ),
            ),
            child: const _InTrainingWidget(),
          );
        },
      ),
    );
  }
}
