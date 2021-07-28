import 'package:dart_counter/application/in_game/player_displayer/player_displayer_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';

class FinishRecommendationDisplayer extends StatelessWidget {
  const FinishRecommendationDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerDisplayerBloc, PlayerDisplayerState>(
      builder: (context, state) {
        final finishRecommendation = state.players[0].finishRecommendation;

        return Container(
          color: AppColors.orangeNew,
          child: Padding(
            padding: EdgeInsets.all(size6(context) / 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (finishRecommendation != null) ...[
                  for (int i = 0; i < finishRecommendation.size; i++)
                    Text(
                      finishRecommendation.get(i),
                    ),
                ] else ...[
                  const Text(''),
                ]
              ],
            ),
          ),
        );
      },
    );
  }
}
