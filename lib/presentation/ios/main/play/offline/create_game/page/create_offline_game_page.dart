// CORE
import 'package:dart_counter/application/main/play/shared/advanced_settings/advanced_settings_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/play/offline/watcher/play_offline_watcher_cubit.dart';
import 'package:dart_counter/application/main/play/offline/create_game/create_offline_game_bloc.dart';

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
  const CreateOfflineGamePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CreateOfflineGameBloc.getIt(),
        ),
      ],
      child: BlocListener<PlayOfflineWatcherCubit, OfflineGameSnapshot>(
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
                            '${LocaleKeys.player.tr()} $unNamedPlayerIndex',
                      ),
                    );
                unNamedPlayerIndex++;
              }
            }

            context.router.replace(const InOfflineGameFlowRoute());
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
            middle: Text(LocaleKeys.createGame.tr().toUpperCase()),
          ),
          child: const SingleChildScrollView(child: _CreateOfflineGameWidget()),
        ),
      ),
    );
  }
}
