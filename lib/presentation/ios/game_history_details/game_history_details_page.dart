import 'package:dart_counter/domain/play/game.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';

import 'widgets/widgets.dart';

class GameHistoryDetailsPage extends StatelessWidget {
  final Game game;

  const GameHistoryDetailsPage({Key? key, required this.game})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: game,
      child: AppPage(
        navigationBar: AppNavigationBar(
          leading: const BackButton(),
          middle: Text(
            game.description().toUpperCase(),
          ),
        ),
        child: GameHistoryDetailsWidget(),
      ),
    );
  }
}
