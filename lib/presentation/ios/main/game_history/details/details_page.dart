// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/game_history/game_history_bloc.dart';

// SHARED WIDGETS
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_navigation_bar/app_navigation_bar.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/back_button.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/stats/stats_widget.dart';

// LOCAL WIDGETS
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
