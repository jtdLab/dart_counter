part of 'post_game_page.dart';

// BODY
class _PostGameWidget extends StatelessWidget {
  const _PostGameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size12(context),
      children: [
        BlocBuilder<PostGameBloc, PostGameState>(
          builder: (context, state) {
            final players = state.gameSnapshot.players;

            return StatsWidget(
              players: players,
            );
          },
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
