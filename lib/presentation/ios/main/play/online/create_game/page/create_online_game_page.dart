// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/main/play/online/watcher/play_online_watcher_cubit.dart';
import 'package:dart_counter/application/main/play/online/create_game/create_online_game_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';
import 'package:dart_counter/domain/game/mode.dart';
import 'package:dart_counter/domain/play/abstract_player_snapshot.dart';
import 'package:dart_counter/domain/game/status.dart';
import 'package:dart_counter/domain/game/type.dart';

// MODALS
import '../../../shared/create_game/modals/advanced_settings/advanced_settings_modal.dart';
import '../../../shared/create_game/modals/add_player/add_player_modal.dart';

// LOCAL WIDGETS
import '../../../../shared/widgets.dart';
import '../../../shared/create_game/widgets.dart';
part '../widgets.dart';

class CreateOnlineGamePage extends StatelessWidget {
  const CreateOnlineGamePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final createOnlineGameBloc = getIt<CreateOnlineGameBloc>();

    return BlocProvider(
      create: (context) => createOnlineGameBloc,
      child: BlocListener<PlayOnlineWatcherCubit, OnlineGameSnapshot>(
        listener: (context, state) {
          final gameSnapshot = state;

          if (gameSnapshot.status == Status.canceled) {
            context.router.replace(const HomePageRoute());
          } else if (gameSnapshot.status == Status.running) {
            context.router.replace(const InOnlineGameFlowRoute());
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
                          context.read<CreateOnlineGameBloc>().add(
                                const CreateOnlineGameEvent.gameCanceled(),
                              ),
                    ),
                  );
                },
              ),
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
