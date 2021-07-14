import 'package:dart_counter/application/create_game/create_game_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';

class AddPlayerButton extends StatelessWidget {
  const AddPlayerButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppActionButton.small(
      onPressed: () => context
          .read<CreateGameBloc>()
          .add(const CreateGameEvent.playerAdded()),
      text: LocaleKeys.addPlayer.tr().toUpperCase(),
    );
  }
}
