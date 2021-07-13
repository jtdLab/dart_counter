import 'package:dart_counter/application/in_game/in_game_bloc.dart';
import 'package:dart_counter/application/in_game/player_displayer/player_displayer_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';

class FinishRecommendationDisplayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerDisplayerBloc, PlayerDisplayerState>(
      builder: (context, state) {
        final finishRecommendation = context
            .read<InGameBloc>()
            .state
            .game
            .players[state.index]
            .finishRecommendation;

        return Container(
          height: 25,
          color: AppColors.orange_new,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              if (finishRecommendation != null) ...[
                for (int i = 0; i < finishRecommendation.size; i++)
                  Text(
                    finishRecommendation.get(i),
                  ),
              ]
            ],
          ),
        );
      },
    );
  }
}
