import 'package:dart_counter/application/in_game/in_game_bloc.dart';

import 'package:dart_counter/presentation/ios/core/core.dart';

class PointsLeftLastThrowDisplayer extends StatelessWidget {
  const PointsLeftLastThrowDisplayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InGameBloc, InGameState>(
      builder: (context, state) {
        final player = state.game.players[0];

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
                flex: 6,
                child: Center(
                  child: AutoSizeText(
                    player.pointsLeft.toString(),
                    style: CupertinoTheme.of(context)
                        .textTheme
                        .textStyle
                        .copyWith(fontSize: 40),
                    maxLines: 1,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: AutoSizeText(
                    player.lastPoints?.toString() ?? '--',
                    maxLines: 1,
                    maxFontSize: 13,
                    minFontSize: 6,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
