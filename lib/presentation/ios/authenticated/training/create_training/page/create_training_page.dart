// CORE
import 'package:dart_counter/domain/training/abstract_training_game_snapshot.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/authenticated/training/create_training/create_training_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/training/type.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/training/abstract_training_player_snapshot.dart';
import 'package:dart_counter/domain/training/single/single_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/double/double_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/score/score_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/bobs_twenty_seven_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/mode.dart';
import 'package:dart_counter/presentation/ios/authenticated/shared/widgets.dart';

// LOCAL WIDGETS
part 'widgets.dart';

class CreateTrainingPage extends StatelessWidget {
  const CreateTrainingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateTrainingBloc, AbstractTrainingGameSnapshot>(
      listenWhen: (oldState, newState) => oldState.status != newState.status,
      listener: (context, gameSnapshot) {
        if (gameSnapshot.status == Status.canceled) {
          context.router.replace(const HomePageRoute());
        } else if (gameSnapshot.status == Status.running) {
          // give players without a name a name e.g 'Player 1', 'Player 2', ...
          int unNamedPlayerIndex = 1;
          for (final player in gameSnapshot.players.iter) {
            if (player.name == null) {
              final index = gameSnapshot.players.indexOf(player);
              context.read<CreateTrainingBloc>().add(
                    CreateTrainingEvent.playerNameUpdated(
                      index: index,
                      newName: '${context.l10n.player} $unNamedPlayerIndex',
                    ),
                  );
              unNamedPlayerIndex++;
            }
          }

          if (gameSnapshot is BobsTwentySevenGameSnapshot) {
            context.router.replace(const InBobsTwentySevenTrainingFlowRoute());
          } else if (gameSnapshot is DoubleTrainingGameSnapshot) {
            context.router.replace(const InDoubleTrainingFlowRoute());
          } else if (gameSnapshot is ScoreTrainingGameSnapshot) {
            context.router.replace(const InScoreTrainingFlowRoute());
          } else {
            context.router.replace(const InSingleTrainingFlowRoute());
          }
        }
      },
      child: AppPageScaffold(
        navigationBar: AppNavigationBar(
          leading: Builder(
            builder: (context) => CancelButton(
              onPressed: () {
                context.router.push(
                  YouReallyWantToCancelGameDialogRoute(
                    onYesPressed: () => context.read<CreateTrainingBloc>().add(
                          const CreateTrainingEvent.trainingCanceled(),
                        ),
                  ),
                );
              },
            ),
          ),
          middle: Text(
            context.l10n.createGame.toUpperCase(),
          ),
        ),
        child: const SingleChildScrollView(
          child: _CreateTrainingWidget(),
        ),
      ),
    );
  }
}
