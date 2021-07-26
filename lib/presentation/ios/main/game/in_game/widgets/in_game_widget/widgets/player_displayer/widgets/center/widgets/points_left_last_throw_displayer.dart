import 'package:dart_counter/application/in_game/player_displayer/player_displayer_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';

class PointsLeftLastThrowDisplayer extends StatelessWidget {
  const PointsLeftLastThrowDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerDisplayerBloc, PlayerDisplayerState>(
      builder: (context, state) {
        final player = state.player;

        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: border4(context),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      player.pointsLeft.toString(),
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .textStyle
                          .copyWith(fontSize: 40),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      player.lastPoints?.toString() ?? '--',
                      maxLines: 1,
                      maxFontSize: 13,
                      minFontSize: 6,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
