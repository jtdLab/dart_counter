import 'package:dart_counter/application/core/play/play_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppActionButton.large(
      onPressed: () =>
          context.read<PlayBloc>().add(const PlayEvent.gameStarted()),
      icon: Image.asset(AppImages.target_new),
      text: LocaleKeys.play.tr().toUpperCase(),
    );
  }
}
