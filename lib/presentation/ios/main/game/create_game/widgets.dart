part of 'create_game_page.dart';

// BODY
class _CreateGameWidget extends StatelessWidget {
  const _CreateGameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _DartBotCard(),
        AppSpacer.large(),
        _PlayerCard(),
        AppSpacer.large(),
        _GameSettingsCard(),
        AppSpacer.normal(),
        _PlayButton(),
      ],
    );
  }
}

// TODO abstand wenn kein dartbot zur playercard
class _DartBotCard extends StatelessWidget {
  const _DartBotCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateGameBloc, CreateGameState>(
      builder: (context, state) {
        final game = state.game;
        return Visibility(
          visible: game is! OnlineGameSnapshot,
          child: AppCard(
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
            trailing: const _CheckBox(),
            children: game.hasDartBot()
                ? [
                    AppNumberPicker(
                      onChanged: (value) => context.read<CreateGameBloc>().add(
                            CreateGameEvent.dartBotTargetAverageUpdated(
                              newTargetAverage: value,
                            ),
                          ),
                      title: LocaleKeys.dartbotAverrage.tr().toUpperCase(),
                    ),
                  ]
                : [],
          ),
        );
      },
    );
  }
}

class _CheckBox extends StatelessWidget {
  const _CheckBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateGameBloc, CreateGameState>(
      builder: (context, state) {
        final game = state.game;

        if (game.hasDartBot()) {
          return AppIconButton(
            padding: EdgeInsets.zero,
            onPressed: () => context
                .read<CreateGameBloc>()
                .add(const CreateGameEvent.dartBotRemoved()),
            icon: Image.asset(
              AppImages.checkMarkLightNew,
            ),
          );
        } else {
          return AppIconButton(
            padding: EdgeInsets.zero,
            onPressed: () => context
                .read<CreateGameBloc>()
                .add(const CreateGameEvent.dartBotAdded()),
            icon: Image.asset(
              AppImages.checkMarkLightUncheckedNew,
            ),
          );
        }
      },
    );
  }
}

class _PlayerCard extends StatelessWidget {
  const _PlayerCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      middle: AutoSizeText(
        LocaleKeys.player.tr().toUpperCase(),
        minFontSize: 8,
        maxFontSize: 14,
        maxLines: 1,
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: const [
        _PlayerList(),
        _AddPlayerButton(),
      ],
    );
  }
}

class _PlayerList extends StatelessWidget {
  const _PlayerList({
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
              if (player is DartBotSnapshot) {
                return _DartBotItem(
                  key: ValueKey(player),
                );
              } else if (player is OfflinePlayerSnapshot) {
                return _OfflinePlayerItem(
                  key: ValueKey(player),
                  player: player,
                );
              } else {
                return _OnlinePlayerItem(
                  key: ValueKey(player),
                  player: player as OnlinePlayerSnapshot,
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

class _DartBotItem extends StatelessWidget {
  const _DartBotItem({
    required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateGameBloc, CreateGameState>(
      builder: (context, state) {
        final isDismissible = state.game.players.size > 1;

        return Column(
          children: [
            Dismissible(
              key: key!,
              direction: DismissDirection.endToStart,
              confirmDismiss: (_) async {
                if (isDismissible) {
                  return true;
                }
                return false;
              },
              onDismissed: (_) => context
                  .read<CreateGameBloc>()
                  .add(const CreateGameEvent.dartBotRemoved()),
              background: Container(
                color: AppColors.red,
              ),
              child: AppCardItem.large(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const AppRoundedImage.normal(
                      imageName: AppImages.robotNew,
                    ),
                    Text(
                      LocaleKeys.dartBot.tr().toUpperCase(),
                    ),
                    AppIconButton(
                      onPressed: () {
                        showCupertinoModalBottomSheet(
                          backgroundColor: Colors.white70,
                          context: context,
                          builder: (context) => AdvancedSettingsModal(),
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
      },
    );
  }
}

class _OfflinePlayerItem extends StatelessWidget {
  final OfflinePlayerSnapshot player;

  const _OfflinePlayerItem({
    required Key key,
    required this.player,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateGameBloc, CreateGameState>(
      builder: (context, state) {
        final index = state.game.players.indexOf(player);
        late final bool isDismissible;
        if (state.game.players.asList().any((player) => player is DartBot)) {
          isDismissible = state.game.players.size > 2;
        } else {
          isDismissible = state.game.players.size > 1;
        }

        return Column(
          children: [
            Dismissible(
              key: key!,
              direction: DismissDirection.endToStart,
              background: Container(
                color: AppColors.red,
              ),
              confirmDismiss: (_) async {
                if (isDismissible) {
                  return true;
                }
                return false;
              },
              onDismissed: (_) => context.read<CreateGameBloc>().add(
                    CreateGameEvent.playerRemoved(index: index),
                  ),
              child: AppCardItem.large(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const AppSpacer.normal(orientation: Orientation.horizontal),
                    const AppRoundedImage.normal(
                      imageName: AppImages.photoPlaceholderNew,
                    ),
                    const AppSpacer.normal(orientation: Orientation.horizontal),
                    Expanded(
                      child: AppTextField(
                        text: player.name,
                        withErrorDisplayer: false,
                        placeholder: LocaleKeys.name.tr().toUpperCase(),
                        onChanged: (newName) =>
                            context.read<CreateGameBloc>().add(
                                  CreateGameEvent.playerNameUpdated(
                                    index: index,
                                    newName: newName,
                                  ),
                                ),
                      ),
                    ),
                    const AppSpacer.normal(orientation: Orientation.horizontal),
                    AppIconButton(
                      onPressed: () {
                        showCupertinoModalBottomSheet(
                          backgroundColor: Colors.white70,
                          context: context,
                          builder: (context) => AdvancedSettingsModal(),
                        );
                      },
                      icon: Image.asset(
                        AppImages.settingsNew,
                      ),
                    ),
                    const AppSpacer.normal(orientation: Orientation.horizontal),
                  ],
                ),
              ),
            ),
            SizedBox(height: size6(context)),
          ],
        );
      },
    );
  }
}

class _OnlinePlayerItem extends StatelessWidget {
  final OnlinePlayerSnapshot player;

  const _OnlinePlayerItem({
    required Key key,
    required this.player,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateGameBloc, CreateGameState>(
      builder: (context, state) {
        final index = state.game.players.indexOf(player);

        late final bool isDismissible;
        if (state.game.players.asList().any((player) => player is DartBot)) {
          isDismissible = state.game.players.size > 2;
        } else {
          isDismissible = state.game.players.size > 1;
        }

        return Column(
          children: [
            Dismissible(
              key: key!,
              direction: DismissDirection.endToStart,
              background: Container(
                color: AppColors.red,
              ),
              confirmDismiss: (_) async {
                if (isDismissible) {
                  return true;
                }
                return false;
              },
              onDismissed: (_) => context.read<CreateGameBloc>().add(
                    CreateGameEvent.playerRemoved(index: index),
                  ),
              child: AppCardItem.large(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const AppRoundedImage.normal(
                      imageName: AppImages.photoPlaceholderNew,
                    ),
                    Text(
                      player.name.toUpperCase(),
                    ),
                    AppIconButton(
                      onPressed: () {
                        showCupertinoModalBottomSheet(
                          backgroundColor: Colors.white70,
                          context: context,
                          builder: (context) => AdvancedSettingsModal(),
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
      },
    );
  }
}

class _AddPlayerButton extends StatelessWidget {
  const _AddPlayerButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppActionButton.small(
      onPressed: () => context
          .read<CreateGameBloc>()
          .add(const CreateGameEvent.playerAdded()),
      text: LocaleKeys.addPlayer.tr().toUpperCase(),
    );
  }
}

class _GameSettingsCard extends StatelessWidget {
  const _GameSettingsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      middle: AutoSizeText(
        LocaleKeys.modus.tr().toUpperCase(),
        minFontSize: 8,
        maxFontSize: 14,
        maxLines: 1,
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: const [
        _StartingPointsPicker(),
        _ModePicker(),
        _SizePicker(),
        _TypePicker(),
      ],
    );
  }
}

class _StartingPointsPicker extends StatelessWidget {
  const _StartingPointsPicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateGameBloc, CreateGameState>(
      builder: (context, state) {
        final game = state.game;

        return AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: AppActionButton.normal(
                color: game.startingPoints == 301
                    ? AppColors.orangeNew
                    : AppColors.white,
                onPressed: () => context.read<CreateGameBloc>().add(
                      const CreateGameEvent.startingPointsUpdated(
                        newStartingPoints: 301,
                      ),
                    ),
                text: '301',
              ),
            ),
            Expanded(
              child: AppActionButton.normal(
                color: game.startingPoints == 501
                    ? AppColors.orangeNew
                    : AppColors.white,
                onPressed: () => context.read<CreateGameBloc>().add(
                      const CreateGameEvent.startingPointsUpdated(
                        newStartingPoints: 501,
                      ),
                    ),
                text: '501',
              ),
            ),
            Expanded(
              child: AppActionButton.normal(
                color: game.startingPoints == 701
                    ? AppColors.orangeNew
                    : AppColors.white,
                onPressed: () => context.read<CreateGameBloc>().add(
                      const CreateGameEvent.startingPointsUpdated(
                        newStartingPoints: 701,
                      ),
                    ),
                text: '701',
              ),
            ),
          ],
        );
      },
    );
  }
}

class _ModePicker extends StatelessWidget {
  const _ModePicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateGameBloc, CreateGameState>(
      builder: (context, state) {
        final game = state.game;

        return AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: AppActionButton.normal(
                color: game.mode == Mode.firstTo
                    ? AppColors.orangeNew
                    : AppColors.white,
                onPressed: () => context.read<CreateGameBloc>().add(
                      const CreateGameEvent.modeUpdated(
                        newMode: Mode.firstTo,
                      ),
                    ),
                text: 'FIRST TO',
              ),
            ),
            Expanded(
              child: AppActionButton.normal(
                color: game.mode == Mode.bestOf
                    ? AppColors.orangeNew
                    : AppColors.white,
                onPressed: () => context.read<CreateGameBloc>().add(
                      const CreateGameEvent.modeUpdated(
                        newMode: Mode.bestOf,
                      ),
                    ),
                text: 'BEST OF',
              ),
            ),
          ],
        );
      },
    );
  }
}

class _SizePicker extends StatelessWidget {
  const _SizePicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppNumberPicker(
      onChanged: (value) => context
          .read<CreateGameBloc>()
          .add(CreateGameEvent.sizeUpdated(newSize: value)),
    );
  }
}

class _TypePicker extends StatelessWidget {
  const _TypePicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateGameBloc, CreateGameState>(
      builder: (context, state) {
        final game = state.game;

        return AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: AppActionButton.normal(
                color: game.type == Type.legs
                    ? AppColors.orangeNew
                    : AppColors.white,
                onPressed: () => context.read<CreateGameBloc>().add(
                      const CreateGameEvent.typeUpdated(
                        newType: Type.legs,
                      ),
                    ),
                text: 'LEGS',
              ),
            ),
            Expanded(
              child: AppActionButton.normal(
                color: game.type == Type.sets
                    ? AppColors.orangeNew
                    : AppColors.white,
                onPressed: () => context.read<CreateGameBloc>().add(
                      const CreateGameEvent.typeUpdated(
                        newType: Type.sets,
                      ),
                    ),
                text: 'SETS',
              ),
            ),
          ],
        );
      },
    );
  }
}

class _PlayButton extends StatelessWidget {
  const _PlayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppActionButton.large(
      onPressed: () => context
          .read<CreateGameBloc>()
          .add(const CreateGameEvent.gameStarted()),
      icon: Image.asset(AppImages.targetNew),
      text: LocaleKeys.play.tr().toUpperCase(),
    );
  }
}
