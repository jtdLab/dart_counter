// CORE
import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/create_game/create_game_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/play/game_snapshot.dart';
import 'package:dart_counter/domain/play/mode.dart';
import 'package:dart_counter/domain/play/player_snapshot.dart';
import 'package:dart_counter/domain/play/status.dart';
import 'package:dart_counter/domain/play/type.dart';

// MODALS
import 'modals/advanced_settings/advanced_settings_modal.dart';

// LOCAL WIDGETS
import '../shared.dart';
import './../../shared.dart';
part 'widgets.dart';

class CreateGamePage extends StatelessWidget {
  const CreateGamePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CreateGameBloc>(),
      child: BlocListener<CreateGameBloc, CreateGameState>(
        listener: (context, state) {
          final game = state.gameSnapshot;

          if (game.status == Status.canceled) {
            context.router.replace(const HomePageRoute());
            getIt<PlayBloc>().add(const PlayEvent.resetRequested());
          } else if (game.status == Status.running) {
            context.router.replace(const InGamePageRoute());
          }
        },
        child: AppPage(
          onTap: () => FocusScope.of(context).unfocus(),
          navigationBar: AppNavigationBar(
            leading: CancelButton(
              onPressed: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    reverseTransitionDuration: Duration.zero,
                    opaque: false,
                    pageBuilder: (context, _, __) => BlocProvider(
                      create: (context) => getIt<CreateGameBloc>(),
                      child: Builder(
                        builder: (context) => YouReallyWantToCancelGameDialog(
                          onYesPressed: () =>
                              context.read<CreateGameBloc>().add(
                                    const CreateGameEvent.gameCanceled(),
                                  ),
                        ),
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
            child: _CreateGameWidget(),
          ),
        ),
      ),
    );
  }
}
