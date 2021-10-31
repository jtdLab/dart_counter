// CORE
import 'package:dart_counter/application/core/training/score_training/score_training_bloc.dart';
import 'package:dart_counter/application/core/training/single_training/single_training_bloc.dart';
import 'package:dart_counter/domain/training/status.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/core/training/training_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/training/type.dart';
import 'package:dart_counter/domain/training/training_player_snapshot.dart';
import 'package:dart_counter/domain/training/single/game_snapshot.dart' as single;
import 'package:dart_counter/domain/training/double/game_snapshot.dart' as double;
import 'package:dart_counter/domain/training/score/game_snapshot.dart';
import 'package:dart_counter/domain/training/bobs_twenty_seven/game_snapshot.dart';
import 'package:dart_counter/domain/training/mode.dart';


// LOCAL WIDGETS
import './../../shared.dart';
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
          context.router.replace(const HomePageRoute());
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

          context.router.replace(const InGamePageRoute());
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
