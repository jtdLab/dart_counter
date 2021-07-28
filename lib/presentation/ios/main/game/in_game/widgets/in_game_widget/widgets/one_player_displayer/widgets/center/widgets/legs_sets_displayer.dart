import 'package:dart_counter/application/in_game/in_game_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';

class LegsSetsDisplayer extends StatelessWidget {
  const LegsSetsDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InGameBloc, InGameState>(
      builder: (context, state) {
        final player = state.game.players[0];

        return Container(
          color: AppColors.black,
          child: Padding(
            padding: EdgeInsets.all(size6(context) / 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (player.wonSets != null) ...[
                  Text(
                    'S:${player.wonSets}',
                    style: CupertinoTheme.of(context)
                        .textTheme
                        .textStyle
                        .copyWith(color: AppColors.white),
                  ),
                ],
                Text(
                  'L:${player.wonLegsCurrentSet}',
                  style: CupertinoTheme.of(context)
                      .textTheme
                      .textStyle
                      .copyWith(color: AppColors.white),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
