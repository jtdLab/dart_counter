import 'package:dart_counter/application/in_game/player_displayer/player_displayer_bloc.dart';
import 'package:dart_counter/presentation/core/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LegsSetsDisplayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerDisplayerBloc, PlayerDisplayerState>(
      builder: (context, state) {
        final player = state.player;

        return Container(
          height: 25,
          color: AppColors.black,
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
        );
      },
    );
  }
}
