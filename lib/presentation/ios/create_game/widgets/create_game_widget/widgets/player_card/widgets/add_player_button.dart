import 'package:dart_counter/application/core/play/play_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';

class AddPlayerButton extends StatelessWidget {
  const AddPlayerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppActionButton.small(
      onPressed: () =>
          context.read<PlayBloc>().add(const PlayEvent.playerAdded()),
      text: LocaleKeys.addPlayer.tr().toUpperCase(),
    );
  }
}
