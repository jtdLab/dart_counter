part of 'post_game_page.dart';

// BODY
class _PostGameWidget extends StatelessWidget {
  const _PostGameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gameSnapshot = context.read<AbstractGameSnapshot>();

    return AppColumn(
      spacing: size12(context),
      children: [
        StatsWidget(
          players: gameSnapshot.players,
        ),
        const _BackToHomeButton(),
      ],
    );
  }
}

class _BackToHomeButton extends StatelessWidget {
  const _BackToHomeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPrimaryButton(
      onPressed: () => context.router.replace(
        const HomePageRoute(),
      ),
      color: AppColors.red,
      text: LocaleKeys.mainMenu.tr().toUpperCase(),
    );
  }
}
