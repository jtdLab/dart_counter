// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/game_history/game_history_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/game/abstract_player.dart';

// LOCAL WIDGETS
import './../../shared.dart';
part 'widgets.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameHistoryBloc, GameHistoryState>(
      builder: (context, state) {
        final game = (state as GameHistoryLoadSuccess).selectedGame!;

        return AppPage(
          navigationBar: AppNavigationBar(
            leading: const BackButton(),
            middle: Text(
              game.description().toUpperCase(),
            ),
          ),
          child: const SingleChildScrollView(
            child: _DetailsWidget(),
          ),
        );
      },
    );
  }
}
