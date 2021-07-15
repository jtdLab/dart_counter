import 'package:dart_counter/application/create_game/create_game_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';

class StartingPointsPicker extends StatelessWidget {
  const StartingPointsPicker({
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
                color: game.startingPoints == 301
                    ? AppColors.orangeNew
                    : AppColors.white,
                onPressed: () => context.read<CreateGameBloc>().add(
                      const CreateGameEvent.startingPointsUpdated(
                        newStartingPoints: 301,
                      ),
                    ),
                text: '301',
              ),
            ),
            Expanded(
              child: AppActionButton.normal(
                color: game.startingPoints == 501
                    ? AppColors.orangeNew
                    : AppColors.white,
                onPressed: () => context.read<CreateGameBloc>().add(
                      const CreateGameEvent.startingPointsUpdated(
                        newStartingPoints: 501,
                      ),
                    ),
                text: '501',
              ),
            ),
            Expanded(
              child: AppActionButton.normal(
                color: game.startingPoints == 701
                    ? AppColors.orangeNew
                    : AppColors.white,
                onPressed: () => context.read<CreateGameBloc>().add(
                      const CreateGameEvent.startingPointsUpdated(
                        newStartingPoints: 701,
                      ),
                    ),
                text: '701',
              ),
            ),
          ],
        );
      },
    );
  }
}
