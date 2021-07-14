import 'package:dart_counter/application/create_game/create_game_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_icon_button.dart';

class CheckBox extends StatelessWidget {
  const CheckBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateGameBloc, CreateGameState>(
      builder: (context, state) {
        final game = state.game;

        if (game.hasDartBot()) {
          return AppIconButton(
            padding: EdgeInsets.zero,
            onPressed: () => context
                .read<CreateGameBloc>()
                .add(const CreateGameEvent.dartBotRemoved()),
            icon: Image.asset(
              AppImages.check_mark_light_new,
            ),
          );
        } else {
          return AppIconButton(
            padding: EdgeInsets.zero,
            onPressed: () => context
                .read<CreateGameBloc>()
                .add(const CreateGameEvent.dartBotAdded()),
            icon: Image.asset(
              AppImages.check_mark_light_unchecked_new,
            ),
          );
        }
      },
    );
  }
}
