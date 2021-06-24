import 'package:dart_counter/domain/play/game.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class GameHistoryWidget extends StatelessWidget {
  const GameHistoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GameHistoryCard(game: Game.dummy()),
        GameHistoryCard(game: Game.dummy()),
        GameHistoryCard(game: Game.dummy()),
        GameHistoryCard(game: Game.dummy()),
      ],
    );
  }
}
