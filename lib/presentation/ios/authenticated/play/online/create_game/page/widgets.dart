part of 'create_online_game_page.dart';

// BODY
class _CreateOnlineGameWidget extends StatelessWidget {
  const _CreateOnlineGameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlayerCard(
          playerList: const _PlayerList(),
          addPlayerPressed: () => showCupertinoModalBottomSheet(
            context: context,
            builder: (context) => const AddPlayerModal(),
          ),
        ),
        SizedBox(height: spacerLarge(context)),
        BlocBuilder<CreateOnlineGameBloc, OnlineGameSnapshot>(
          builder: (context, state) {
            final startingPoints = state.startingPoints;
            final mode = state.mode;
            final type = state.type;

            return GameSettingsCard(
              startingPoints: startingPoints,
              onStartingPointsChanged: (newStartingPoints) =>
                  context.read<CreateOnlineGameBloc>().add(
                        CreateOnlineGameEvent.startingPointsUpdated(
                          newStartingPoints: newStartingPoints,
                        ),
                      ),
              mode: mode,
              onModeChanged: (newMode) =>
                  context.read<CreateOnlineGameBloc>().add(
                        CreateOnlineGameEvent.modeUpdated(
                          newMode: newMode,
                        ),
                      ),
              onSizeChanged: (newSize) =>
                  context.read<CreateOnlineGameBloc>().add(
                        CreateOnlineGameEvent.sizeUpdated(
                          newSize: newSize,
                        ),
                      ),
              type: type,
              onTypeChanged: (newType) =>
                  context.read<CreateOnlineGameBloc>().add(
                        CreateOnlineGameEvent.typeUpdated(
                          newType: newType,
                        ),
                      ),
            );
          },
        ),
        SizedBox(height: spacerNormal(context)),
        PlayButton(
          onPressed: () => context
              .read<CreateOnlineGameBloc>()
              .add(const CreateOnlineGameEvent.gameStarted()),
        ),
      ],
    );
  }
}

class _PlayerList extends StatelessWidget {
  const _PlayerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateOnlineGameBloc, OnlineGameSnapshot>(
      buildWhen: (oldState, newState) {
        final oldIds = oldState.players.map((p) => p.id);
        final newIds = newState.players.map((p) => p.id);
        return !(oldIds == newIds); // TODO does this work ??
      },
      builder: (context, state) {
        final players = state.players;

        return SizedBox(
          height:
              players.size * size70(context) + players.size * size6(context),
          child: ReorderableListView.builder(
            proxyDecorator: (child, index, animation) => child,
            itemBuilder: (context, index) {
              // TODO has dartbot etc. cleaner
              final player = players[index];

              final isDismissable = state.hasDartBot()
                  ? state.players.size > 2
                  : state.players.size > 1;

              return _PlayerItem(
                key: ValueKey(player.id),
                index: index,
                player: player,
                isDismissable: isDismissable,
              );
            },
            itemCount: players.size,
            onReorder: (oldIndex, newIndex) {
              if (oldIndex < newIndex) {
                newIndex--;
              }

              context.read<CreateOnlineGameBloc>().add(
                    CreateOnlineGameEvent.playerReordered(
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

class _PlayerItem extends StatelessWidget {
  final int index;
  final OnlinePlayerSnapshot player;
  final bool isDismissable;

  const _PlayerItem({
    required Key key,
    required this.index,
    required this.player,
    required this.isDismissable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Dismissible(
          key: key!,
          direction: DismissDirection.endToStart,
          background: Container(color: AppColors.red),
          confirmDismiss: (_) async => isDismissable,
          onDismissed: (_) => context.read<CreateOnlineGameBloc>().add(
                CreateOnlineGameEvent.playerRemoved(index: index),
              ),
          child: AppCardItem.large(
            content: Row(
              children: [
                SizedBox(width: spacerNormal(context)),
                if (player.photoUrl != null) ...[
                  AppRoundedImage.normal(
                    child: CachedNetworkImageProvider(
                      player.photoUrl!,
                    ),
                  ),
                ] else ...[
                  const AppRoundedImage.normal(
                    imageName: AppImages.photoPlaceholderNew,
                  ),
                ],
                const Spacer(),
                Text(player.name),
                const Spacer(),
                AppIconButton(
                  padding: EdgeInsets.all(spacerNormal(context)),
                  onPressed: () {
                    context.router.push(
                      CreateGameAdvancedSettingsModalRoute(index: index),
                    );
                  },
                  icon: Image.asset(AppImages.settingsNew),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: size6(context)),
      ],
    );
  }
}
