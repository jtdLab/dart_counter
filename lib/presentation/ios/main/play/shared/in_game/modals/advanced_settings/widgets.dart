part of 'advanced_settings_modal.dart';

class _AdvancedSettingsWidget extends StatelessWidget {
  const _AdvancedSettingsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdvancedSettingsBloc, AdvancedSettingsState>(
      builder: (context, state) {
        final advancedSettings = state.advancedSettings;

        return AppColumn(
          spacing: size12(context),
          children: [
            for (int index = 0; index < advancedSettings.size; index++)
              Column(
                children: [
                  SizedBox(
                    height: spacerSmall(context),
                  ),
                  _AdvancedSettingsPlayerCard(
                    settings: advancedSettings[index],
                    index: index,
                  ),
                ],
              )
          ],
        );
      },
    );
  }
}

class _AdvancedSettingsPlayerCard extends StatelessWidget {
  final int index;
  final AdvancedSettings settings;

  const _AdvancedSettingsPlayerCard({
    Key? key,
    required this.index,
    required this.settings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final players = context.read<KtList<AbstractPlayerSnapshot>>();

    return AppCard(
      middle: Text(
        /**
        *  players.iter
                .firstWhere((element) => element.id == settings.playerId)
                .name ??
        */
        'TODO Default name',
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: [
        AppColumn(
          spacing: size6(context),
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoButton(
              minSize: 0,
              padding: EdgeInsets.zero,
              onPressed: () {
                context.read<AdvancedSettingsBloc>().add(
                      AdvancedSettingsEvent.showAverageToggled(
                        index: index,
                      ),
                    );
              },
              child: AppCardItem.small(
                content: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size12(context),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        context.l10n.showAverrage.toUpperCase(),
                      ),
                      BlocBuilder<AdvancedSettingsBloc, AdvancedSettingsState>(
                        builder: (context, state) {
                          final active = state.map(
                            createGame: (createGame) => throw Error(), // TODO
                            inGame: (inGame) =>
                                inGame.advancedSettings[index].showAverage,
                          );
                          return _CheckBox(active: active);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CupertinoButton(
              minSize: 0,
              padding: EdgeInsets.zero,
              onPressed: () {
                context.read<AdvancedSettingsBloc>().add(
                      AdvancedSettingsEvent.showCheckoutToggled(
                        index: index,
                      ),
                    );
              },
              child: AppCardItem.small(
                content: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size12(context),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // context.l10n.showCheckoutPercentage.toUpperCase(), // TODO
                      const Text('SHOW CHECKOUT'),
                      BlocBuilder<AdvancedSettingsBloc, AdvancedSettingsState>(
                        builder: (context, state) {
                          final active = state.map(
                            createGame: (createGame) => throw Error(), // TODO
                            inGame: (inGame) => inGame
                                .advancedSettings[index].showCheckoutPercentage,
                          );
                          return _CheckBox(active: active);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CupertinoButton(
              minSize: 0,
              padding: EdgeInsets.zero,
              onPressed: () {
                context.read<AdvancedSettingsBloc>().add(
                      AdvancedSettingsEvent.smartKeyBoardActiveToggled(
                        index: index,
                      ),
                    );
              },
              child: AppCardItem.small(
                content: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size12(context),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // TODO
                      const Text('SMART KEYBOARD'),

                      BlocBuilder<AdvancedSettingsBloc, AdvancedSettingsState>(
                        builder: (context, state) {
                          final active = state.map(
                            createGame: (createGame) => throw Error(), // TODO
                            inGame: (inGame) => inGame
                                .advancedSettings[index].smartKeyBoardActivated,
                          );
                          return _CheckBox(active: active);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// TODO shared with other advanced settings modal
class _CheckBox extends StatelessWidget {
  final bool active;

  const _CheckBox({
    Key? key,
    required this.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (active) {
      return Padding(
        padding: EdgeInsets.all(size6(context)),
        child: Image.asset(
          AppImages.checkMarkQuadNew,
        ),
      );
    } else {
      return Padding(
        padding: EdgeInsets.all(size6(context)),
        child: Image.asset(
          AppImages.uncheckedNew,
        ),
      );
    }
  }
}
