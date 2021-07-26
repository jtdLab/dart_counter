import 'package:dart_counter/application/game_history/game_history_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class GameHistoryDetailsPage extends StatelessWidget {
  const GameHistoryDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameHistoryBloc, GameHistoryState>(
      builder: (context, state) {
        final game = state.selectedGame!; // TODO ! needed

        return AppPage(
          navigationBar: AppNavigationBar(
            leading: const BackButton(),
            middle: Text(
              game.description().toUpperCase(),
            ),
          ),
          child: SingleChildScrollView(
            child: GameHistoryDetailsWidget(),
          ),
        );
      },
    );
  }
}
