import 'package:dart_counter/presentation/ios/main/game/in_game/widgets/in_game_widget/widgets/shared/profile_image_position.dart';

import 'package:dart_counter/application/in_game/in_game_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/main/game/in_game/widgets/in_game_widget/widgets/shared/player_item_small.dart';
import 'widgets/widgets.dart';

class FourPlayerDisplayer extends StatelessWidget {
  const FourPlayerDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InGameBloc, InGameState>(
      builder: (context, state) {
        final currentTurn = state.game.currentTurn();
        final players = state.game.players;

        return AppColumn(
          spacing: size6(context),
          children: [
            Expanded(
              flex: 3,
              child: AppRow(
                spacing: size6(context),
                children: [
                  PlayerItemSmall(
                    player: players[0],
                  ),
                  PlayerItemSmall(
                    player: players[1],
                    profileImagePosition: ProfileImagePosition.right,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: AppRow(
                spacing: size6(context),
                children: [
                  PlayerItemSmall(
                    player: players[2],
                  ),
                  PlayerItemSmall(
                    player: players[3],
                    profileImagePosition: ProfileImagePosition.right,
                  ),
                ],
              ),
            ),
            Expanded(
              child: StatsDisplayer(
                dartsThrownCurrentLeg: currentTurn.dartsThrownCurrentLeg,
                average: currentTurn.stats.average,
                checkoutPercentage: currentTurn.stats.checkoutPercentage,
              ),
            ),
          ],
        );
      },
    );
  }
}
