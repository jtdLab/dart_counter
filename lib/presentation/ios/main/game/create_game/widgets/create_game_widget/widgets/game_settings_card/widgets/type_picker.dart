import 'package:dart_counter/domain/play/game.dart';

import 'package:dart_counter/application/create_game/create_game_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';

class TypePicker extends StatelessWidget {
  const TypePicker({
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
                color: game.type == Type.legs
                    ? AppColors.orange_new
                    : AppColors.white,
                onPressed: () => context.read<CreateGameBloc>().add(
                      const CreateGameEvent.typeUpdated(
                        newType: Type.legs,
                      ),
                    ),
                text: 'LEGS',
              ),
            ),
            Expanded(
              child: AppActionButton.normal(
                color: game.type == Type.sets
                    ? AppColors.orange_new
                    : AppColors.white,
                onPressed: () => context.read<CreateGameBloc>().add(
                      const CreateGameEvent.typeUpdated(
                        newType: Type.sets,
                      ),
                    ),
                text: 'SETS',
              ),
            ),
          ],
        );
      },
    );
  }
}
