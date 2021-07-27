import 'package:dart_counter/application/in_game/player_displayer/player_displayer_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class Center extends StatelessWidget {
  const Center({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: size150(context),
          height: size150(context),
          child: AppColumn(
            spacing: size6(context),
            children: const [
              LegsSetsDisplayer(),
              Expanded(
                child: PointsLeftLastThrowDisplayer(),
              ),
              FinishRecommendationDisplayer(),
            ],
          ),
        ),
      ],
    );
  }
}
