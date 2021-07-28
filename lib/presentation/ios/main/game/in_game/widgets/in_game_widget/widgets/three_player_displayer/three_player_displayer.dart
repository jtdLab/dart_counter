import 'package:dart_counter/presentation/ios/main/game/in_game/widgets/in_game_widget/widgets/shared/profile_image_position.dart';

import 'package:dart_counter/application/in_game/in_game_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';
import 'package:dart_counter/presentation/ios/main/game/in_game/widgets/in_game_widget/widgets/shared/player_item.dart';
import 'package:dart_counter/presentation/ios/main/game/in_game/widgets/in_game_widget/widgets/shared/player_item_small.dart';

class ThreePlayerDisplayer extends StatelessWidget {
  const ThreePlayerDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InGameBloc, InGameState>(
      builder: (context, state) {
        final players = state.game.players;

        return AppRow(
          spacing: size6(context),
          children: [
            PlayerItem(
              player: players[0],
            ),
            Expanded(
              child: AppColumn(
                spacing: size6(context),
                children: [
                  PlayerItemSmall(
                    player: players[2],
                    profileImagePosition: ProfileImagePosition.right,
                  ),
                  PlayerItemSmall(
                    player: players[1],
                    profileImagePosition: ProfileImagePosition.right,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
