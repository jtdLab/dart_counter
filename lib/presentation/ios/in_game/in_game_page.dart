import 'package:dart_counter/domain/play/game.dart';
import 'package:dart_counter/injection.dart';

import 'package:dart_counter/application/in_game/in_game_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class InGamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<InGameBloc>()..add(const InGameEvent.watchStarted()),
      child: BlocConsumer<InGameBloc, InGameState>(
        listener: (context, state) {
          final game = state.game;
          if (game.status == Status.canceled) {
            context.router.replace(const HomePageRoute());
          } else if (game.status == Status.finished) {
            context.router.replace(const PostGamePageRoute());
          }
        },
        builder: (context, state) {
          final game = state.game;
          return AppPage(
            navigationBar: AppNavigationBar(
              leading: CancelButton(
                onPressed: () => context
                    .read<InGameBloc>()
                    .add(const InGameEvent.gameCanceled()),
              ),
              middle: Text(
                game.description(),
              ),
              trailing: const StatsButton(),
            ),
            child: InGameWidget(),
          );
        },
      ),
    );
  }
}
