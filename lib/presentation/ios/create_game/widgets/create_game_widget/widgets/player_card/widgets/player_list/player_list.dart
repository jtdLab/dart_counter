import 'package:dart_counter/application/core/play/play_bloc.dart';
import 'package:dart_counter/domain/play/player.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:flutter/material.dart' show ReorderableListView;
import 'widgets/widgets.dart';

class PlayerList extends StatelessWidget {
  const PlayerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayBloc, PlayState>(
      builder: (context, state) {
        return state.maybeMap(
          success: (success) {
            final players = success.game.players;
            return SizedBox(
              height: players.size * size70(context) +
                  players.size * size6(context),
              child: ReorderableListView.builder(
                proxyDecorator: (child, index, animation) {
                  return child;
                },
                itemBuilder: (context, index) {
                  final player = players[index];
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

                  context.read<PlayBloc>().add(
                        PlayEvent.playerReordered(
                          oldIndex: oldIndex,
                          newIndex: newIndex,
                        ),
                      );
                },
              ),
            );
          },
          orElse: () => throw UnexpectedStateError(),
        );
      },
    );
  }
}
