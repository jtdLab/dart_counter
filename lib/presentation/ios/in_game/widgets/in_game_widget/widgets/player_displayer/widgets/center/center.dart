import 'package:dart_counter/application/in_game/player_displayer/player_displayer_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class Center extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppIconButton(
          onPressed: () => context
              .read<PlayerDisplayerBloc>()
              .add(const PlayerDisplayerEvent.previousPlayerPressed()),
          padding: EdgeInsets.zero,
          icon: Image.asset(AppImages.chevron_yellow_back_new),
        ),
        SizedBox(
          width: size150(context),
          height: size150(context),
          child: AppColumn(
            spacing: size6(context),
            children: [
              LegsSetsDisplayer(),
              const Expanded(
                child: PointsLeftLastThrowDisplayer(),
              ),
              FinishRecommendationDisplayer(),
            ],
          ),
        ),
        AppIconButton(
          onPressed: () => context
              .read<PlayerDisplayerBloc>()
              .add(const PlayerDisplayerEvent.nextPlayerPressed()),
          padding: EdgeInsets.zero,
          icon: Image.asset(AppImages.chevron_yellow_forward_new),
        ),
      ],
    );
  }
}
