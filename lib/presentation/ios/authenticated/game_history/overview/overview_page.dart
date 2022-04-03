// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// OTHER
import 'package:timeago/timeago.dart' as timeago;

// BLOCS
import 'package:dart_counter/application/authenticated/game_history/game_history_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/game/abstract_game.dart';

// LOCAL WIDGETS
import '../../shared/widgets.dart';
part 'widgets.dart';

class GameHistoryOverviewPage extends StatelessWidget {
  const GameHistoryOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GameHistoryOverviewView();
  }
}
