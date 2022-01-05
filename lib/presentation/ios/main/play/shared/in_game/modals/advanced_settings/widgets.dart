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
          children: advancedSettings.iter
              .map(
                (settings) => Column(
                  children: [
                    SizedBox(
                      height: spacerSmall(context),
                    ),
                    _AdvancedSettingsPlayerCard(settings: settings),
                  ],
                ),
              )
              .toList(),
        );
      },
    );
  }
}

class _AdvancedSettingsPlayerCard extends StatelessWidget {
  final AdvancedSettings settings;

  const _AdvancedSettingsPlayerCard({
    Key? key,
    required this.settings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final players = context.read<KtList<AbstractPlayerSnapshot>>();

    return AppCard(
      middle: Text(
        players.iter
                .firstWhere((element) => element.id == settings.playerId)
                .name ??
            'TODO Default name',
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: AppColors.white),
      ),
      children: [Text(settings.toString())],
    );
  }
}
