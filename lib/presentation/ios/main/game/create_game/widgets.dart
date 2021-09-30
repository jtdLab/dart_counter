part of 'create_game_page.dart';

class CreateGameWidget extends StatelessWidget {
  const CreateGameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        DartBotCard(),
        AppSpacer.large(),
        PlayerCard(),
        AppSpacer.large(),
        GameSettingsCard(),
        AppSpacer.normal(),
        PlayButton(),
      ],
    );
  }
}

// TODO abstand wenn kein dartbot zur playercard
class DartBotCard extends StatelessWidget {
  const DartBotCard({
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
            trailing: const CheckBox(),
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

class CheckBox extends StatelessWidget {
  const CheckBox({
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

class PlayerCard extends StatelessWidget {
  const PlayerCard({
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
        PlayerList(),
        AddPlayerButton(),
      ],
    );
  }
}

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
              if (player is DartBotSnapshot) {
                return DartBotItem(
                  key: ValueKey(player),
                );
              } else if (player is OfflinePlayerSnapshot) {
                return OfflinePlayerItem(
                  key: ValueKey(player),
                  player: player,
                );
              } else {
                return OnlinePlayerItem(
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

class DartBotItem extends StatelessWidget {
  const DartBotItem({
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

class OfflinePlayerItem extends StatelessWidget {
  final OfflinePlayerSnapshot player;

  const OfflinePlayerItem({
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

class OnlinePlayerItem extends StatelessWidget {
  final OnlinePlayerSnapshot player;

  const OnlinePlayerItem({
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

class AddPlayerButton extends StatelessWidget {
  const AddPlayerButton({
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

class GameSettingsCard extends StatelessWidget {
  const GameSettingsCard({
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
        StartingPointsPicker(),
        ModePicker(),
        SizePicker(),
        TypePicker(),
      ],
    );
  }
}

class StartingPointsPicker extends StatelessWidget {
  const StartingPointsPicker({
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

class ModePicker extends StatelessWidget {
  const ModePicker({
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

class SizePicker extends StatelessWidget {
  const SizePicker({
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

class TypePicker extends StatelessWidget {
  const TypePicker({
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

class PlayButton extends StatelessWidget {
  const PlayButton({
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
