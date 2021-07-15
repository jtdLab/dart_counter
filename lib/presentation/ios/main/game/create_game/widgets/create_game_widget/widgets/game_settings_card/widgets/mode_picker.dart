import 'package:dart_counter/domain/play/game.dart';

import 'package:dart_counter/application/create_game/create_game_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';

class ModePicker extends StatelessWidget {
  const ModePicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateGameBloc, CreateGameState>(
      builder: (context, state) {
        final game = state.game;

        return AppRow(
          spacing: size6(context),
          children: [
            Expanded(
              child: AppActionButton.normal(
                color: game.mode == Mode.firstTo
                    ? AppColors.orangeNew
                    : AppColors.white,
                onPressed: () => context.read<CreateGameBloc>().add(
                      const CreateGameEvent.modeUpdated(
                        newMode: Mode.firstTo,
                      ),
                    ),
                text: 'FIRST TO',
              ),
            ),
            Expanded(
              child: AppActionButton.normal(
                color: game.mode == Mode.bestOf
                    ? AppColors.orangeNew
                    : AppColors.white,
                onPressed: () => context.read<CreateGameBloc>().add(
                      const CreateGameEvent.modeUpdated(
                        newMode: Mode.bestOf,
                      ),
                    ),
                text: 'BEST OF',
              ),
            ),
          ],
        );
      },
    );
  }
}
