import 'package:dart_counter/domain/training/abstract_training_game_snapshot.dart';
import 'package:dart_counter/domain/training/abstract_training_player_snapshot.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';

class PostTrainingWidget extends StatelessWidget {
  final AbstractTrainingGameSnapshot gameSnapshot;

  const PostTrainingWidget({
    Key? key,
    required this.gameSnapshot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size12(context),
      children: [
        _StatsWidget(
          players: gameSnapshot.players,
        ),
        const _BackToHomeButton(),
      ],
    );
  }
}

class _StatsWidget extends StatelessWidget {
  final KtList<AbstractTrainingPlayerSnapshot> players;

  const _StatsWidget({
    Key? key,
    required this.players,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO
    return Container(
      color: AppColors.red,
    );
  }
}

// TODO shared
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
      text: context.l10n.mainMenu.toUpperCase(),
    );
  }
}
