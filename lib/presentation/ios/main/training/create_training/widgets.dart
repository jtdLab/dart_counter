part of 'create_training_page.dart';

// BODY
class _CreateTrainingWidget extends StatelessWidget {
  const _CreateTrainingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _PlayerCard(),
        SizedBox(
          height: spacerLarge(context),
        ),
        const _ModusCard(),
        SizedBox(
          height: spacerLarge(context),
        ),
        const _OrderCard(),
        SizedBox(
          height: spacerLarge(context),
        ),
        const _TakesCard(),
        SizedBox(
          height: spacerNormal(context),
        ),
        const _PlayButton(),
      ],
    );
  }
}

// PlayerCard
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
    return BlocBuilder<CreateTrainingBloc, CreateTrainingState>(
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
              if (/**player is OfflinePlayerSnapshot */ true) {
                final isDismissable = state.gameSnapshot.players.size > 1;
                if (/**player.photoUrl != null */ false) {
                  return _PlayerItem(
                    key: ValueKey(player.id),
                    index: index,
                    player: player,
                    isDismissable: false,
                  );
                }

                return _EditablePlayerItem(
                  key: ValueKey(player.id),
                  index: index,
                  player: player,
                  isDismissable: isDismissable,
                );
              } else {
                final isDismissable = state.gameSnapshot.players.size > 1;
                return _PlayerItem(
                  key: ValueKey(player.id),
                  index: index,
                  player: player,
                  isDismissable: isDismissable,
                );
              }
            },
            itemCount: players.size,
            onReorder: (oldIndex, newIndex) {
              if (oldIndex < newIndex) {
                newIndex--;
              }

              context.read<
                  CreateTrainingBloc>(); /*.add(
                    CreateGameEvent.playerReordered(
                      oldIndex: oldIndex,
                      newIndex: newIndex,
                    ),
                  );*/
            },
          ),
        );
      },
    );
  }
}

class _EditablePlayerItem extends StatelessWidget {
  final int index;
  final TrainingPlayerSnapshot player;
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
          onDismissed: (_) => context
              .read<CreateTrainingBloc>()
              .add(CreateTrainingEvent.playerRemoved(index: index)),
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
                            context.read<CreateTrainingBloc>().add(
                                  CreateTrainingEvent.playerNameUpdated(
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
                // TODO remove
                /**
                 * AppIconButton(
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

class _PlayerItem extends StatelessWidget {
  final int index;
  final TrainingPlayerSnapshot player;
  final bool isDismissable;

  const _PlayerItem({
    required Key key,
    required this.index,
    required this.player,
    required this.isDismissable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final photoUrl = null;
    /**
    offlinePlayerOrOnlinePlayer.fold(
      (offlinePlayer) => offlinePlayer.photoUrl,
      (onlinePlayer) => onlinePlayer.photoUrl,
    ); */

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
          onDismissed: (_) => context
              .read<CreateTrainingBloc>()
              .add(CreateTrainingEvent.playerRemoved(index: index)),
          child: AppCardItem.large(
            content: Row(
              children: [
                SizedBox(
                  width: spacerNormal(context),
                ),
                if (photoUrl != null) ...[
                  /**
                   * AppRoundedImage.normal(
                    child: CachedNetworkImageProvider(
                      photoUrl,
                    ),
                  ),
                   */
                ] else ...[
                  const AppRoundedImage.normal(
                    imageName: AppImages.photoPlaceholderNew,
                  ),
                ],
                const Spacer(),
                Text(
                  player.name ?? '', // TODO
                ),
                const Spacer(),
                // TODO remove ?
                /**
                 * AppIconButton(
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

class _AddPlayerButton extends StatelessWidget {
  const _AddPlayerButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppActionButton.small(
      onPressed: () {
        context
            .read<CreateTrainingBloc>()
            .add(const CreateTrainingEvent.playerAdded());
      },
      text: LocaleKeys.addPlayer.tr().toUpperCase(),
    );
  }
}

// ModusCard
class _ModusCard extends StatelessWidget {
  const _ModusCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final type = Type.singles;

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
      children: [
        AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: AppActionButton.normal(
                color: type == Type.singles
                    ? AppColors.orangeNew
                    : AppColors.white,
                onPressed: () {},
                /**
               *   onPressed: () => context.read<CreateGameBloc>().add(
                      const CreateGameEvent.modeUpdated(
                        newMode: Mode.firstTo,
                      ),
                    ),
               */
                text: 'SINGLES', // TODO
              ),
            ),
            Expanded(
              child: AppActionButton.normal(
                color: type == Type.doubles
                    ? AppColors.orangeNew
                    : AppColors.white,
                onPressed: () {},
                /**
                *  onPressed: () => context.read<CreateGameBloc>().add(
                      const CreateGameEvent.modeUpdated(
                        newMode: Mode.bestOf,
                      ),
                    ),
                */
                text: 'DOUBLES', // TODo
              ),
            ),
          ],
        ),
        AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: AppActionButton.normal(
                color:
                    type == Type.score ? AppColors.orangeNew : AppColors.white,
                onPressed: () {},
                /**
               *   onPressed: () => context.read<CreateGameBloc>().add(
                      const CreateGameEvent.modeUpdated(
                        newMode: Mode.firstTo,
                      ),
                    ),
               */
                text: 'SCORE', // TODO
              ),
            ),
            Expanded(
              child: AppActionButton.normal(
                color:
                    type == Type.bobs27 ? AppColors.orangeNew : AppColors.white,
                onPressed: () {},
                /**
                *  onPressed: () => context.read<CreateGameBloc>().add(
                      const CreateGameEvent.modeUpdated(
                        newMode: Mode.bestOf,
                      ),
                    ),
                */
                text: 'BOBS27', // TODo
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// OrderCard
class _OrderCard extends StatelessWidget {
  const _OrderCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mode = Mode
        .ascending; // TODO this mode is from single game import from double and score pr unify it

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
      children: [
        AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: AppActionButton.normal(
                color: mode == Mode.ascending
                    ? AppColors.orangeNew
                    : AppColors.white,
                onPressed: () {},
                /**
               *   onPressed: () => context.read<CreateGameBloc>().add(
                      const CreateGameEvent.modeUpdated(
                        newMode: Mode.firstTo,
                      ),
                    ),
               */
                icon: Image.asset(AppImages.ascending),
              ),
            ),
            Expanded(
              child: AppActionButton.normal(
                color: mode == Mode.descending
                    ? AppColors.orangeNew
                    : AppColors.white,
                onPressed: () {},
                /**
                *  onPressed: () => context.read<CreateGameBloc>().add(
                      const CreateGameEvent.modeUpdated(
                        newMode: Mode.bestOf,
                      ),
                    ),
                */
                icon: Image.asset(AppImages.descending),
              ),
            ),
            Expanded(
              child: AppActionButton.normal(
                color:
                    mode == Mode.random ? AppColors.orangeNew : AppColors.white,
                onPressed: () {},
                /**
                *  onPressed: () => context.read<CreateGameBloc>().add(
                      const CreateGameEvent.modeUpdated(
                        newMode: Mode.bestOf,
                      ),
                    ),
                */
                icon: Image.asset(AppImages.random),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// TakesCard
class _TakesCard extends StatelessWidget {
  const _TakesCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      middle: AutoSizeText(
        'ANZAHL AUFNAHMEN', // TODO
        minFontSize: 8,
        maxFontSize: 14,
        maxLines: 1,
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: const [
        AppNumberPicker(),
      ],
    );
  }
}

// PlayButton
class _PlayButton extends StatelessWidget {
  const _PlayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppActionButton.large(
      onPressed: () => context
          .read<CreateTrainingBloc>()
          .add(const CreateTrainingEvent.gameStarted()),
      icon: Image.asset(AppImages.targetNew),
      text: LocaleKeys.play.tr().toUpperCase(),
    );
  }
}
