import 'package:dart_counter/domain/play/game.dart';

import 'package:dart_counter/application/create_game/create_game_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/main/game/shared/you_really_want_to_cancel_game_dialog.dart';
import 'widgets/widgets.dart';

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
          final game = state.game;

          if (game.status == Status.canceled) {
            context.router.replace(const HomePageRoute());
          } else if (game.status == Status.running) {
            context.router.replace(const InGamePageRoute());
          }
        },
        child: AppPage(
          onTap: () => FocusScope.of(context).unfocus(),
          //padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
          navigationBar: AppNavigationBar(
            leading: CancelButton(
              onPressed: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    reverseTransitionDuration: const Duration(),
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
            child: CreateGameWidget(),
          ),
        ),
      ),
    );
  }
}
