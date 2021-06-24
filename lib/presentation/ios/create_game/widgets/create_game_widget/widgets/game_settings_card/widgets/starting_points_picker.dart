import 'package:dart_counter/application/core/play/play_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/core/widgets/shared/app_action_button.dart';

class StartingPointsPicker extends StatelessWidget {
  const StartingPointsPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayBloc, PlayState>(
      builder: (context, state) {
        return state.maybeMap(
          success: (success) {
            final game = success.game;
            return AppRow(
              spacing: size6(context),
              children: [
                Expanded(
                  child: AppActionButton.normal(
                    color: game.startingPoints == 301
                        ? AppColors.orange_new
                        : AppColors.white,
                    onPressed: () => context.read<PlayBloc>().add(
                          const PlayEvent.startingPointsSet(
                            newStartingPoints: 301,
                          ),
                        ),
                    text: '301',
                  ),
                ),
                Expanded(
                  child: AppActionButton.normal(
                    color: game.startingPoints == 501
                        ? AppColors.orange_new
                        : AppColors.white,
                    onPressed: () => context.read<PlayBloc>().add(
                          const PlayEvent.startingPointsSet(
                            newStartingPoints: 501,
                          ),
                        ),
                    text: '501',
                  ),
                ),
                Expanded(
                  child: AppActionButton.normal(
                    color: game.startingPoints == 701
                        ? AppColors.orange_new
                        : AppColors.white,
                    onPressed: () => context.read<PlayBloc>().add(
                          const PlayEvent.startingPointsSet(
                            newStartingPoints: 701,
                          ),
                        ),
                    text: '701',
                  ),
                ),
              ],
            );
          },
          orElse: () => throw UnexpectedStateError(),
        );
      },
    );
  }
}
