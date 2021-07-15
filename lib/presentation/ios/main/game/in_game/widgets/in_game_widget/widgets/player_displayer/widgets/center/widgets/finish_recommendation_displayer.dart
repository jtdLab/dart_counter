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
        final finishRecommendation = state.player.finishRecommendation;

        return Container(
          height: 25,
          color: AppColors.orangeNew,
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
