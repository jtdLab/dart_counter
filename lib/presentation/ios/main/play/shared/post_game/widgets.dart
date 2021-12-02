// CORE
import 'package:dart_counter/presentation/ios/core/core.dart';

// DOMAIN
import 'package:dart_counter/domain/play/abstract_game_snapshot.dart';

// SHARED WIDGETS
import '../widgets.dart';

// BODY

class PostGameWidget extends StatelessWidget {
  const PostGameWidget({
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
