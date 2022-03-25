part of 'advanced_settings_modal.dart';

// BODY
// TODO refactor + responsive
class _CreateGameAdvancedSettingsWidget extends StatelessWidget {
  final int index;

  const _CreateGameAdvancedSettingsWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: spacerLarge(context),
        ),
        AppCardItem.custom(
          height: size55(context),
          content: Center(
            child: Text(
              context.l10n.advancedSettings.toUpperCase(),
            ),
          ),
        ),
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
                        createGame: (createGame) =>
                            createGame.advancedSettings[index].showAverage,
                        inGame: (inGame) => throw Error(), // TODO
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
                        createGame: (createGame) => createGame
                            .advancedSettings[index].showCheckoutPercentage,
                        inGame: (inGame) => throw Error(), // TODO
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
                        createGame: (createGame) => createGame
                            .advancedSettings[index].smartKeyBoardActivated,
                        inGame: (inGame) => throw Error(), // TODO
                      );
                      return _CheckBox(active: active);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        /**
            *  AppActionButton.normal(
                    onPressed: () {},
                    color: AppColors.red,
                    fontColor: AppColors.white,
                    text: context.l10n.removePlayer.toUpperCase(),
                  ),
                  */
        AppActionButton.normal(
          onPressed: () => context.router.pop(),
          text: context.l10n.done.toUpperCase(),
        ),
        SizedBox(
          height: detailedModalMarginBottom(context),
        ),
      ],
    );
  }
}

// TODO shared with other advanced settings 
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
