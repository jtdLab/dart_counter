import 'package:dart_counter/application/create_game/create_game_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';

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
