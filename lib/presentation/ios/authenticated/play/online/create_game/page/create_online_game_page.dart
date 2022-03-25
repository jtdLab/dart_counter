// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/authenticated/play/online/create_game/create_online_game_bloc.dart';

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
part 'widgets.dart';

class CreateOnlineGamePage extends StatelessWidget {
  final OnlineGameSnapshot initialSnapshot;

  const CreateOnlineGamePage({
    Key? key,
    required this.initialSnapshot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CreateOnlineGameBloc.getIt(initialSnapshot)
            ..add(const CreateOnlineGameEvent.started()),
        ),
      ],
      child: BlocListener<CreateOnlineGameBloc, OnlineGameSnapshot>(
        listener: (context, gameSnapshot) {
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
            middle: Text(context.l10n.createGame.toUpperCase()),
          ),
          child: const SingleChildScrollView(child: _CreateOnlineGameWidget()),
        ),
      ),
    );
  }
}
