part of 'page/create_offline_game_page.dart';

// BODY
class _CreateOfflineGameWidget extends StatelessWidget {
  const _CreateOfflineGameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _DartBotCard(),
        PlayerCard(
          playerList: const _PlayerList(),
          addPlayerPressed: () => context
              .read<CreateOfflineGameBloc>()
              .add(const CreateOfflineGameEvent.playerAdded()),
        ),
        SizedBox(
          height: spacerLarge(context),
        ),
        BlocBuilder<PlayOfflineWatcherCubit, OfflineGameSnapshot>(
          builder: (context, state) {
            final startingPoints = state.startingPoints;
            final mode = state.mode;
            final type = state.type;

            return GameSettingsCard(
              startingPoints: startingPoints,
              onStartingPointsChanged: (newStartingPoints) =>
                  context.read<CreateOfflineGameBloc>().add(
                        CreateOfflineGameEvent.startingPointsUpdated(
                          newStartingPoints: newStartingPoints,
                        ),
                      ),
              mode: mode,
              onModeChanged: (newMode) =>
                  context.read<CreateOfflineGameBloc>().add(
                        CreateOfflineGameEvent.modeUpdated(
                          newMode: newMode,
                        ),
                      ),
              onSizeChanged: (newSize) =>
                  context.read<CreateOfflineGameBloc>().add(
                        CreateOfflineGameEvent.sizeUpdated(
                          newSize: newSize,
                        ),
                      ),
              type: type,
              onTypeChanged: (newType) =>
                  context.read<CreateOfflineGameBloc>().add(
                        CreateOfflineGameEvent.typeUpdated(
                          newType: newType,
                        ),
                      ),
            );
          },
        ),
        SizedBox(
          height: spacerNormal(context),
        ),
        PlayButton(
          onPressed: () => context
              .read<CreateOfflineGameBloc>()
              .add(const CreateOfflineGameEvent.gameStarted()),
        ),
      ],
    );
  }
}

class _DartBotCard extends StatelessWidget {
  const _DartBotCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayOfflineWatcherCubit, OfflineGameSnapshot>(
      builder: (context, state) {
        final hasDartBot = state.hasDartBot();

        return Column(
          children: [
            AppCard(
              headerBodySpacing: hasDartBot ? null : 0,
              leading: AutoSizeText(
                LocaleKeys.dartBot.tr().toUpperCase(),
                minFontSize: 8,
                maxFontSize: 14,
                maxLines: 1,
                style: CupertinoTheme.of(context)
                    .textTheme
                    .textStyle
                    .copyWith(color: AppColors.white),
              ),
              trailing: _DartBotCheckBox(
                selected: hasDartBot,
              ),
              children: hasDartBot
                  ? [
                      AppNumberPicker(
                        onChanged: (value) =>
                            context.read<CreateOfflineGameBloc>().add(
                                  CreateOfflineGameEvent
                                      .dartBotTargetAverageUpdated(
                                    newTargetAverage: value,
                                  ),
                                ),
                        title: LocaleKeys.dartbotAverrage.tr().toUpperCase(),
                      ),
                    ]
                  : [],
            ),
            SizedBox(
              height: spacerLarge(context),
            ),
          ],
        );
      },
    );
  }
}

class _DartBotCheckBox extends StatelessWidget {
  final bool selected;

  const _DartBotCheckBox({
    Key? key,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (selected) {
      return AppIconButton(
        onPressed: () => context
            .read<CreateOfflineGameBloc>()
            .add(const CreateOfflineGameEvent.dartBotRemoved()),
        icon: Image.asset(
          AppImages.checkMarkLightNew,
        ),
      );
    } else {
      return AppIconButton(
        onPressed: () => context
            .read<CreateOfflineGameBloc>()
            .add(const CreateOfflineGameEvent.dartBotAdded()),
        icon: Image.asset(
          AppImages.checkMarkLightUncheckedNew,
        ),
      );
    }
  }
}

class _PlayerList extends StatelessWidget {
  const _PlayerList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayOfflineWatcherCubit, OfflineGameSnapshot>(
      buildWhen: (oldState, newState) {
        final oldIds = oldState.players.map((p) => p.id);
        final newIds = newState.players.map((p) => p.id);
        return !(oldIds == newIds);
      },
      builder: (context, state) {
        final players = state.players;

        return SizedBox(
          height:
              players.size * size70(context) + players.size * size6(context),
          child: ReorderableListView.builder(
            proxyDecorator: (child, index, animation) => child,
            itemBuilder: (context, index) {
              final player = players[index];

              // TODO bug where multiple widgets with same global key
              if (player is DartBotSnapshot) {
                return _DartBotItem(
                  key: ValueKey(player.id),
                  isDismissable: state.players.size > 1,
                );
              } else if (player is OfflinePlayerSnapshot) {
                final isDismissable = state.hasDartBot()
                    ? state.players.size > 2
                    : state.players.size > 1;

                return _EditablePlayerItem(
                  key: ValueKey(player.id),
                  index: index,
                  player: player,
                  isDismissable: isDismissable,
                );
              } else {
                return _PlayerItem(
                  key: ValueKey(player.id),
                  index: index,
                  player: player as OnlinePlayerSnapshot,
                  isDismissable: false,
                );
              }
            },
            itemCount: players.size,
            onReorder: (oldIndex, newIndex) {
              if (oldIndex < newIndex) {
                newIndex--;
              }

              context.read<CreateOfflineGameBloc>().add(
                    CreateOfflineGameEvent.playerReordered(
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
          background: Container(
            color: AppColors.red,
          ),
          confirmDismiss: (_) async => isDismissable,
          onDismissed: (_) => context.read<CreateOfflineGameBloc>().add(
                CreateOfflineGameEvent.playerRemoved(index: index),
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
                    /**
                    *  showCupertinoModalBottomSheet(
                      backgroundColor: Colors.white70,
                      context: context,
                      builder: (context) => CreateGameAdvancedSettingsModal(),
                    );
                    */
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

class _EditablePlayerItem extends StatelessWidget {
  final int index;
  final OfflinePlayerSnapshot player;
  final bool isDismissable;

  const _EditablePlayerItem({
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
          background: Container(
            color: AppColors.red,
          ),
          confirmDismiss: (_) async => isDismissable,
          onDismissed: (_) => context.read<CreateOfflineGameBloc>().add(
                CreateOfflineGameEvent.playerRemoved(index: index),
              ),
          child: AppCardItem.large(
            content: Row(
              children: [
                SizedBox(
                  width: spacerNormal(context),
                ),
                const AppRoundedImage.normal(
                  imageName: AppImages.photoPlaceholderNew,
                ),
                SizedBox(
                  width: spacerNormal(context),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppTextField(
                        text: player.name ?? '',
                        withErrorDisplayer: false,
                        placeholder: LocaleKeys.name.tr().toUpperCase(),
                        onChanged: (newName) =>
                            context.read<CreateOfflineGameBloc>().add(
                                  CreateOfflineGameEvent.playerNameUpdated(
                                    index: index,
                                    newName: newName,
                                  ),
                                ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: spacerNormal(context),
                ),
                AppIconButton(
                  padding: EdgeInsets.all(spacerNormal(context)),
                  onPressed: () {
                    context.router.push(
                      CreateGameAdvancedSettingsModalRoute(index: index),
                    );
                  },
                  icon: Image.asset(
                    AppImages.settingsNew,
                  ),
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

class _DartBotItem extends StatelessWidget {
  final bool isDismissable;

  const _DartBotItem({
    required Key key,
    required this.isDismissable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Dismissible(
          key: key!,
          direction: DismissDirection.endToStart,
          confirmDismiss: (_) async => isDismissable,
          onDismissed: (_) => context
              .read<CreateOfflineGameBloc>()
              .add(const CreateOfflineGameEvent.dartBotRemoved()),
          background: Container(
            color: AppColors.red,
          ),
          child: AppCardItem.large(
            content: Row(
              children: [
                SizedBox(
                  width: spacerNormal(context),
                ),
                const AppRoundedImage.normal(
                  imageName: AppImages.robotNew,
                ),
                const Spacer(),
                Text(
                  LocaleKeys.dartBot.tr().toUpperCase(),
                ),
                const Spacer(),
                // TODO
                /**
                 * AppIconButton(
                  padding: EdgeInsets.all(spacerNormal(context)),
                  onPressed: () {
                    context.router.push(
                      CreateGameAdvancedSettingsModalRoute(index: index),
                    );
                  },
                  icon: Image.asset(
                    AppImages.settingsNew,
                  ),
                ),
                 */
              ],
            ),
          ),
        ),
        SizedBox(height: size6(context)),
      ],
    );
  }
}
