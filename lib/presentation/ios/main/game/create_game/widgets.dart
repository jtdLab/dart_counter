part of 'create_game_page.dart';

// BODY
class _CreateGameWidget extends StatelessWidget {
  const _CreateGameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _DartBotCard(),
        const _PlayerCard(),
        SizedBox(
          height: spacerLarge(context),
        ),
        const _GameSettingsCard(),
        SizedBox(
          height: spacerNormal(context),
        ),
        const _PlayButton(),
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
    return BlocBuilder<CreateGameBloc, CreateGameState>(
      builder: (context, state) {
        final gameSnapshot = state.gameSnapshot;

        return Visibility(
          visible: gameSnapshot is! OnlineGameSnapshot,
          child: Column(
            children: [
              AppCard(
                headerBodySpacing: gameSnapshot.hasDartBot() ? null : 0,
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
                  selected: gameSnapshot.hasDartBot(),
                ),
                children: gameSnapshot.hasDartBot()
                    ? [
                        AppNumberPicker(
                          onChanged: (value) =>
                              context.read<CreateGameBloc>().add(
                                    CreateGameEvent.dartBotTargetAverageUpdated(
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
          ),
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
            .read<CreateGameBloc>()
            .add(const CreateGameEvent.dartBotRemoved()),
        icon: Image.asset(
          AppImages.checkMarkLightNew,
        ),
      );
    } else {
      return AppIconButton(
        onPressed: () => context
            .read<CreateGameBloc>()
            .add(const CreateGameEvent.dartBotAdded()),
        icon: Image.asset(
          AppImages.checkMarkLightUncheckedNew,
        ),
      );
    }
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
      children: [
        const _PlayerList(),
        _AddPlayerButton(
          isOnline: context.watch<CreateGameBloc>().state.gameSnapshot
              is OnlineGameSnapshot,
        ),
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
      buildWhen: (oldState, newState) {
        final oldIds = oldState.gameSnapshot.players.map((p) => p.id);
        final newIds = newState.gameSnapshot.players.map((p) => p.id);
        return !(oldIds == newIds);
      },
      builder: (context, state) {
        final players = state.gameSnapshot.players;

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
                  key: ValueKey(player.id),
                  isDismissable: state.gameSnapshot.players.size > 1,
                );
              } else if (player is OfflinePlayerSnapshot) {
                final isDismissable = state.gameSnapshot.hasDartBot()
                    ? state.gameSnapshot.players.size > 2
                    : state.gameSnapshot.players.size > 1;

                return _EditablePlayerItem(
                  key: ValueKey(player.id),
                  index: index,
                  player: player,
                  isDismissable: isDismissable,
                );
              } else {
                final isDismissable = state.gameSnapshot.hasDartBot()
                    ? state.gameSnapshot.players.size > 2
                    : state.gameSnapshot.players.size > 1;
                return _PlayerItem(
                  key: ValueKey(player.id),
                  index: index,
                  offlinePlayerOrOnlinePlayer:
                      right(player as OnlinePlayerSnapshot),
                  isDismissable: isDismissable,
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
          confirmDismiss: (_) async {
            if (isDismissable) {
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
                AppIconButton(
                  padding: EdgeInsets.all(spacerNormal(context)),
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
          confirmDismiss: (_) async {
            if (isDismissable) {
              return true;
            }
            return false;
          },
          onDismissed: (_) => context.read<CreateGameBloc>().add(
                CreateGameEvent.playerRemoved(index: index),
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
                            context.read<CreateGameBloc>().add(
                                  CreateGameEvent.playerNameUpdated(
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
  }
}

class _PlayerItem extends StatelessWidget {
  final int index;
  final Either<OfflinePlayerSnapshot, OnlinePlayerSnapshot>
      offlinePlayerOrOnlinePlayer;
  final bool isDismissable;

  const _PlayerItem({
    required Key key,
    required this.index,
    required this.offlinePlayerOrOnlinePlayer,
    required this.isDismissable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final photoUrl = offlinePlayerOrOnlinePlayer.fold(
      (offlinePlayer) => null,
      (onlinePlayer) => onlinePlayer.photoUrl,
    );

    return Column(
      children: [
        Dismissible(
          key: key!,
          direction: DismissDirection.endToStart,
          background: Container(
            color: AppColors.red,
          ),
          confirmDismiss: (_) async {
            if (isDismissable) {
              return true;
            }
            return false;
          },
          onDismissed: (_) => context.read<CreateGameBloc>().add(
                CreateGameEvent.playerRemoved(index: index),
              ),
          child: AppCardItem.large(
            content: Row(
              children: [
                SizedBox(
                  width: spacerNormal(context),
                ),
                if (photoUrl != null) ...[
                  AppRoundedImage.normal(
                    child: CachedNetworkImageProvider(
                      photoUrl,
                    ),
                  ),
                ] else ...[
                  const AppRoundedImage.normal(
                    imageName: AppImages.photoPlaceholderNew,
                  ),
                ],
                const Spacer(),
                Text(
                  offlinePlayerOrOnlinePlayer.fold(
                    (offlinePlayer) => offlinePlayer.name!,
                    (onlinePlayer) => onlinePlayer.name,
                  ),
                ),
                const Spacer(),
                AppIconButton(
                  padding: EdgeInsets.all(spacerNormal(context)),
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
  }
}

// TODO share with training ??
class _AddPlayerButton extends StatelessWidget {
  final bool isOnline;

  const _AddPlayerButton({
    Key? key,
    required this.isOnline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppActionButton.small(
      onPressed: () {
        if (isOnline) {
          showCupertinoModalBottomSheet(
            context: context,
            builder: (context) => const AddPlayerModal(),
          );
        } else {
          context
              .read<CreateGameBloc>()
              .add(const CreateGameEvent.playerAdded());
        }
      },
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
        final gameSnapshot = state.gameSnapshot;

        return AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: AppActionButton.normal(
                color: gameSnapshot.startingPoints == 301
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
                color: gameSnapshot.startingPoints == 501
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
                color: gameSnapshot.startingPoints == 701
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
        final gameSnapshot = state.gameSnapshot;

        return AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: AppActionButton.normal(
                color: gameSnapshot.mode == Mode.firstTo
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
                color: gameSnapshot.mode == Mode.bestOf
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
        final gameSnapshot = state.gameSnapshot;

        return AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: AppActionButton.normal(
                color: gameSnapshot.type == Type.legs
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
                color: gameSnapshot.type == Type.sets
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

// TODO share with training
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
