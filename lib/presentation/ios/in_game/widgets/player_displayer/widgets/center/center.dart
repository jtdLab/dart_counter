import 'package:dart_counter/application/in_game/player_displayer/player_displayer_bloc.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:dart_counter/presentation/ios/core/widgets/app_column.dart';
import 'package:dart_counter/presentation/ios/core/widgets/buttons/icon_button.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/player_displayer/widgets/center/widgets/finish_recommendation_displayer.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/player_displayer/widgets/center/widgets/legs_sets_displayer.dart';
import 'package:dart_counter/presentation/ios/in_game/widgets/player_displayer/widgets/center/widgets/points_left_last_throw_displayer.dart';
import 'package:flutter/cupertino.dart';
import 'package:dart_counter/presentation/ios/core/widgets/extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Center extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
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
        IconButton(
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
