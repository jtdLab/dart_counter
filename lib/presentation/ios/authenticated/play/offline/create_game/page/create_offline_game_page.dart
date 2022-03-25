// CORE
import 'package:dart_counter/application/authenticated/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/authenticated/play/offline/create_game/create_offline_game_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/play/abstract_player_snapshot.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/game/type.dart';

// MODALS
import '../../../shared/create_game/modals/advanced_settings/advanced_settings_modal.dart';

// LOCAL WIDGETS
import '../../../../shared/widgets.dart';
import '../../../shared/create_game/widgets.dart';
part 'widgets.dart';

class CreateOfflineGamePage extends StatelessWidget {
  final OfflineGameSnapshot initialSnapshot;

  const CreateOfflineGamePage({
    Key? key,
    required this.initialSnapshot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CreateOfflineGameBloc.getIt(initialSnapshot)
            ..add(const CreateOfflineGameEvent.started()),
        ),
      ],
      child: BlocListener<CreateOfflineGameBloc, OfflineGameSnapshot>(
        listener: (context, gameSnapshot) {
          if (gameSnapshot.status == Status.canceled) {
            context.router.replace(const HomePageRoute());
          } else if (gameSnapshot.status == Status.running) {
            // TODO do this in bloc but local needed from context
            // give players without a name a name e.g 'Player 1', 'Player 2', ...
            int unNamedPlayerIndex = 1;
            for (final player in gameSnapshot.players.iter) {
              if (player.name == null) {
                final index = gameSnapshot.players.indexOf(player);
                context.read<CreateOfflineGameBloc>().add(
                      CreateOfflineGameEvent.playerNameUpdated(
                        index: index,
                        newName:
                            '${context.l10n.player} $unNamedPlayerIndex',
                      ),
                    );
                unNamedPlayerIndex++;
              }
            }

            context.router.replace(
              InOfflineGameFlowRoute(
                children: [
                  InOfflineGamePageRoute(initialSnapshot: initialSnapshot),
                ],
              ),
            );
          }
        },
        child: AppPage(
          onTap: () => FocusScope.of(context).unfocus(),
          navigationBar: AppNavigationBar(
            leading: Builder(
              builder: (context) => CancelButton(
                onPressed: () {
                  context.router.push(
                    YouReallyWantToCancelGameDialogRoute(
                      onYesPressed: () =>
                          context.read<CreateOfflineGameBloc>().add(
                                const CreateOfflineGameEvent.gameCanceled(),
                              ),
                    ),
                  );
                },
              ),
            ),
            middle: Text(context.l10n.createGame.toUpperCase()),
          ),
          child: const SingleChildScrollView(child: _CreateOfflineGameWidget()),
        ),
      ),
    );
  }
}
