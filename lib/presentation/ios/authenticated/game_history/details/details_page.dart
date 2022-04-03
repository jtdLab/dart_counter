// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// BLOCS
import 'package:dart_counter/application/authenticated/game_history/game_history_bloc.dart';

// DOMAIN
import 'package:dart_counter/domain/game/abstract_player.dart';

// LOCAL WIDGETS
import '../../shared/widgets.dart';
part 'widgets.dart';

class GameHistoryDetailsPage extends StatelessWidget {
  const GameHistoryDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GameHistoryDetailsView();
  }
}
