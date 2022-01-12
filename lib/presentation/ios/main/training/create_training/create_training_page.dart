// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/training/training_bloc.dart';
import 'package:dart_counter/application/main/training/in_training/score_training/score_training_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/training/type.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/training/abstract_training_player_snapshot.dart';
import 'package:dart_counter/domain/training/single/single_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/double/double_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/score/score_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/mode.dart';

// LOCAL WIDGETS
import '../../shared/widgets.dart';
part 'widgets.dart';

class CreateTrainingPage extends StatelessWidget {
  const CreateTrainingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<TrainingBloc, TrainingState>(
      listenWhen: (oldState, newState) =>
          oldState.gameSnapshot.status != newState.gameSnapshot.status,
      listener: (context, state) {
        final game = state.gameSnapshot;

        if (game.status == Status.canceled) {
          // TODO this never gets called
          //context.router.replace(const HomePageRoute());
        } else if (game.status == Status.running) {
          // give players without a name a name e.g 'Player 1', 'Player 2', ...
          int unNamedPlayerIndex = 1;
          for (final player in game.players.iter) {
            if (player.name == null) {
              final index = game.players.indexOf(player);
              context.read<TrainingBloc>().add(
                    TrainingEvent.playerNameUpdated(
                      index: index,
                      newName: '${LocaleKeys.player.tr()} $unNamedPlayerIndex',
                    ),
                  );
              unNamedPlayerIndex++;
            }
          }

          // TODO
          //context.router.replace(const InTrainingPageRoute());
          if (game is BobsTwentySevenGameSnapshot) {
            context.router.replace(const InBobyTwentySeventTrainingPageRoute());
          } else if (game is DoubleTrainingGameSnapshot) {
            context.router.replace(const InDoubleTrainingPageRoute());
          } else if (game is ScoreTrainingGameSnapshot) {
            context.router.replace(const InScoreTrainingPageRoute());
          } else {
            context.router.replace(const InSingleTrainingPageRoute());
          }
        }
      },
      child: AppPage(
        navigationBar: AppNavigationBar(
          leading: CancelButton(
            onPressed: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  reverseTransitionDuration: Duration.zero,
                  opaque: false,
                  pageBuilder: (context, _, __) => Builder(
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
              );
            },
          ),
          middle: Text(
            LocaleKeys.createGame.tr().toUpperCase(),
          ),
        ),
        child: const SingleChildScrollView(
          child: _CreateTrainingWidget(),
        ),
      ),
    );
  }
}
