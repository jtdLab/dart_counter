import 'package:dart_counter/application/in_game/in_game_bloc.dart';
import 'package:dart_counter/presentation/ios/core/core.dart';
import 'widgets/widgets.dart';

class InGameWidget extends StatelessWidget {
  const InGameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      spacing: size6(context),
      children: [
        Expanded(
          flex: 45,
          child: BlocBuilder<InGameBloc, InGameState>(
            builder: (context, state) {
              final game = state.game;

              if (game.players.size == 1) {
                return const OnePlayerDisplayer();
              } else if (game.players.size == 2) {
                return const TwoPlayerDisplayer();
              } else if (game.players.size == 3) {
                return const ThreePlayerDisplayer();
              } else {
                return const FourPlayerDisplayer();
              }
            },
          ),
        ),
        Expanded(
          flex: 55,
          child: PageView(
            children: const [
              StandardInputArea(),
              DetailedInputArea(),
              SpeechInputArea(),
              //OpticalInputArea(),
            ],
          ),
        ),
      ],
    );
  }
}
