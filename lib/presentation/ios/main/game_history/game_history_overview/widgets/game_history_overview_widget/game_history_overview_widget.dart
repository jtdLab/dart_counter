import 'package:dart_counter/application/game_history/game_history_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class GameHistoryOverviewWidget extends StatelessWidget {
  const GameHistoryOverviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameHistoryBloc, GameHistoryState>(
      builder: (context, state) {
        return state.map(
          loadInProgress: (_) => const LoadingWidget(),
          loadSuccess: (loadSucess) {
            final games = loadSucess.gameHistory.getOrCrash();

            if (games.size == 0) {
              return Center(
                child: Text(LocaleKeys.noGamesFound.tr().toUpperCase()),
              );
            }

            return AppColumn(
              spacing: size12(context),
              children: [
                for (final game in games.iter) GameHistoryCard(game: game),
              ],
            );
          },
          loadFailure: (_) {
            // TODO real error displayer
            return const Center(
              child: Text('Could not load games.'),
            );
          },
        );
      },
    );
  }
}
