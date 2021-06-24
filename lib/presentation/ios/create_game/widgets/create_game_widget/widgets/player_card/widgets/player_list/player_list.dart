import 'package:dart_counter/application/core/play/play_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class PlayerList extends StatelessWidget {
  const PlayerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayBloc, PlayState>(
      builder: (context, state) {
        return state.maybeMap(
          success: (success) {
            final game = success.game;
            return AppColumn(
              spacing: size6(context),
              children: game.players
                  .asList()
                  .map((player) =>
                      player.isDartBot ? DartBotItem() : PlayerItem())
                  .toList(),
            );
          },
          orElse: () => Container(),
        );
      },
    );
  }
}
