// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/create_game/online/create_online_game_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/play/abstract_player_snapshot.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/game/type.dart';

// MODALS
import '../modals/advanced_settings/advanced_settings_modal.dart';
import 'package:dart_counter/presentation/ios/main/play/create_game/modals/add_player/add_player_modal.dart';

// LOCAL WIDGETS
import '../../../shared.dart';
import './../widgets.dart';
part 'widgets.dart';

class CreateOnlineGamePage extends StatelessWidget {
  const CreateOnlineGamePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final createOnlineGameBloc = getIt<CreateOnlineGameBloc>();

    return BlocProvider(
      create: (context) => createOnlineGameBloc,
      child: BlocListener<CreateOnlineGameBloc, CreateOnlineGameState>(
        listenWhen: (oldState, newState) =>
            oldState.gameSnapshot.status != newState.gameSnapshot.status,
        listener: (context, state) {
          final game = state.gameSnapshot;

          if (game.status == Status.canceled) {
            context.router.replace(const HomePageRoute());
          } else if (game.status == Status.running) {
            context.router.replace(const InOnlineGamePageRoute());
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
                      create: (context) => createOnlineGameBloc,
                      child: Builder(
                        builder: (context) => YouReallyWantToCancelGameDialog(
                          onYesPressed: () =>
                              context.read<CreateOnlineGameBloc>().add(
                                    const CreateOnlineGameEvent.gameCanceled(),
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
            child: _CreateOnlineGameWidget(),
          ),
        ),
      ),
    );
  }
}
