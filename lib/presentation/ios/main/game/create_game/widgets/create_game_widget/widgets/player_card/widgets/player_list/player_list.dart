import 'package:dart_counter/domain/play/player.dart';

import 'package:dart_counter/application/create_game/create_game_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class PlayerList extends StatelessWidget {
  const PlayerList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateGameBloc, CreateGameState>(
      builder: (context, state) {
        final players = state.game.players;

        return SizedBox(
          height:
              players.size * size70(context) + players.size * size6(context),
          child: ReorderableListView.builder(
            proxyDecorator: (child, index, animation) {
              return child;
            },
            itemBuilder: (context, index) {
              final player = players[index];
              // TODO bug where multiple widgets with same global key
              if (player is DartBot) {
                return DartBotItem(
                  key: ValueKey(player),
                );
              } else if (player is OfflinePlayer) {
                return OfflinePlayerItem(
                  key: ValueKey(player),
                  player: player as OfflinePlayer,
                );
              } else {
                return OnlinePlayerItem(
                  key: ValueKey(player),
                  player: player as OnlinePlayer,
                );
              }
            },
            itemCount: players.size,
            onReorder: (oldIndex, newIndex) {
              if (oldIndex < newIndex) {
                newIndex--;
              }

              context.read<CreateGameBloc>().add(
                    CreateGameEvent.playerReordered(
                      oldIndex: oldIndex,
                      newIndex: newIndex,
                    ),
                  );
            },
          ),
        );
      },
    );
  }
}
